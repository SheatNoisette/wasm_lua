all: main

main: src/main.c lua
	emcc -Ilua-5.3.5/src src/main.c lua-5.3.5/src/liblua.a -O2 -o src/lua.js -s EXTRA_EXPORTED_RUNTIME_METHODS="['ccall', 'cwrap']" -s EXPORTED_FUNCTIONS="['_run_lua']"

lua:
	cd lua-5.3.5/src && make generic CC='emcc'

publish:
	cp src/index.html index.html
	cp src/lua.js lua.js
	cp src/lua.wasm lua.wasm

clean:
	cd lua-5.3.5/;make clean
	rm src/lua.js src/lua.wasm

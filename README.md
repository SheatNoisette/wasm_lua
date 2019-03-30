# WebAssembly Lua
Lua VM running in your browser!
Each update is executed in a unique VM instance via WASM + emscripten.
Tested on Firefox 66.0
[Live Demo](https://sheatnoisette.github.io/wasm_lua/)

# Building lua-wasm
Just run `make`, you will need Emscripten SDK.

## Ubuntu
__Don't use Emscripten Ubuntu package!__

# Why?
[Lua](https://en.wikipedia.org/wiki/Lua_(programming_language)) is a fast, highly embeddable VM that boasts a wide set of features allowing it to be adapted to a diverse set of domains and platforms.

* Can be run in 400kb of memory or less.
* Multi-paradigm via metatables, closures and coroutines.
* Robust, proven VM that's shipped on platforms including MIPS, x86, ARM and many others (and now WASM!).
* Small, easy to understand language.
* Extensible debugger hooks for easy on-target debugging.

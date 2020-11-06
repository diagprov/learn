import init from "./pkg/rust_wasm.js";

const runWasm = async () => {

    const rustWasmModule = await init("./pkg/rust_wasm_bg.wasm");
    const addResult = rustWasmModule.add(270, 268);

    const offset = rustWasmModule.getemailaddr();
    const linearMemory = rustWasmModule.memory;
    const stringBuffer = new Uint8Array(linearMemory.buffer, offset,
        rustWasmModule.getemailaddr_len());

    // create a string from this buffer
    let emailAddr = '';
    for (let i=0; i<stringBuffer.length; i++) {
        emailAddr += String.fromCharCode(stringBuffer[i]);
    }

    document.body.textContent = `AddResult: ${addResult}, Email: ${emailAddr}`;
};

runWasm();

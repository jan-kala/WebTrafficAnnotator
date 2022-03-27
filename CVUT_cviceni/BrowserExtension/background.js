let port = null;

function sendDataToSysProcess(details){
    console.log(details)
    message = {message: details}
    port.postMessage(message);
}

const onNativeMessageReceived = (message) => {
    // console.log(message)
}

chrome.webRequest.onSendHeaders.addListener(sendDataToSysProcess,
    {urls: ["<all_urls>"]}
);
chrome.webRequest.onCompleted.addListener(sendDataToSysProcess,
    {urls: ["<all_urls>"]}
);

// Connect to the Native Message Host
port = chrome.runtime.connectNative("com.kala.annotator");
port.onMessage.addListener(onNativeMessageReceived)
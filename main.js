document.addEventListener("DOMContentLoaded", () => {
    const leftMessages = document.getElementById("leftMessages");
    const rightMessages = document.getElementById("rightMessages");
    const input = document.getElementById("messageInput");
    const sendButton = document.getElementById("sendButton");

    function addMessage(message, side) {
        const msgDiv = document.createElement("div");
        msgDiv.className = "message";
        msgDiv.textContent = message;
        if (side === "left") {
            leftMessages.appendChild(msgDiv);
        }
        else {
            rightMessages.appendChild(msgDiv);
        }
    }

    sendButton.addEventListener("click", () => {
        const message = input.value.trim();
        if (message = "") {
            return;
        }
        
        addMessage(message, "right");
        input.value = "";

        // send message to server using websocket
    });

    input.addEventListener("keypress", (enter) => {
        if (enter.key === "Enter") {
            sendButton.click();
            enter.preventDefault();
        }
    });
});
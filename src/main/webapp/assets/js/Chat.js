class InteractiveChatbox {
    constructor(a, b, c) {
        this.args = {
            button: a,
            chatbox: b
        }
        this.icons = c;
        this.state = false;
    }

    display() {
        const { button, chatbox } = this.args;

        button.addEventListener('click', () => this.toggleState(chatbox))
    }

    toggleState(chatbox) {
        this.state = !this.state;
        this.showOrHideChatBox(chatbox, this.args.button);
    }

    showOrHideChatBox(chatbox, button) {
        var name = $("#cus_name").val();
        if (this.state && name != null && $.trim(name) != "") {
            chatbox.classList.add('chatbox--active');
            this.toggleIcon(true, button);
        } else if (!this.state) {
            chatbox.classList.remove('chatbox--active')
            this.toggleIcon(false, button);
        }
    }

    toggleIcon(state, button) {
        const { isClicked, isNotClicked } = this.icons;
        let b = button.children[0].innerHTML;

        if (state) {
            button.children[0].innerHTML = isClicked;
        } else if (!state) {
            button.children[0].innerHTML = isNotClicked;
        }
    }


}

// 聊天室
var webSocket;

function connect() {
    var messagesArea = document.getElementById("messagesArea");
    var username;
    if ($("#cus_name").val() == "") {
        username = prompt("請輸入姓名：");
        if ($.trim(username) == "") {
            return;
        } else {
            $("#cus_name").val($.trim(username));
        }
    }
    var self = $("#cus_name").val();
    var webCtx = window.location.pathname.substring(0, window.location.pathname.indexOf('/', 1));
    var endPointURL = "ws://" + window.location.host + webCtx + `/DoraChat/${self}`;

    // create a websocket
    webSocket = new WebSocket(endPointURL);

    webSocket.onopen = function (event) {
        console.log("Connect Success!");
    };

    webSocket.onmessage = function (event) {
        var jsonObj = JSON.parse(event.data);
        if ("open" === jsonObj.type) {
            addListener();
        } else if ("history" === jsonObj.type) {
            messagesArea.innerHTML = '';
            // 這行的jsonObj.message是從redis撈出跟好友的歷史訊息，再parse成JSON格式處理
            var messages = JSON.parse(jsonObj.message);
            for (var i = 0; i < messages.length; i++) {
                var historyData = JSON.parse(messages[i]);
                var message = historyData.message;
                var type;
                // 根據發送者是自己還是對方來給予不同的class名, 以達到訊息左右區分
                historyData.sender === self ? type = "operator" : type = "visitor";
                $(messagesArea).append(`<div class="messages__item messages__item--${type}">${message}</div>`);
            }
            messagesArea.scrollTop = messagesArea.scrollHeight;
        } else if ("chat" === jsonObj.type) {
            var type;
            var message = jsonObj.message;
            jsonObj.sender === self ? type = "operator" : type = "visitor";
            $(messagesArea).append(`<div class="messages__item messages__item--${type}">${message}</div>`);
            messagesArea.scrollTop = messagesArea.scrollHeight;
        } else if ("close" === jsonObj.type) {
            addListener();
        }
    };

    webSocket.onclose = function (event) {
        console.log("Disconnected!");
    };
}

function sendMessage() {
    var inputMessage = document.getElementById("message");
    var friend = $("#statusOutput").text();
    var message = inputMessage.value.trim();

    if (message === "") {
        alert("Input a message");
        inputMessage.focus();
    } else if (friend === "") {
        alert("Choose a friend");
    } else {
        var jsonObj = {
            "type": "chat",
            "sender": $("#cus_name").val(),
            "receiver": friend,
            "message": message
        };
        webSocket.send(JSON.stringify(jsonObj));
        inputMessage.value = "";
        inputMessage.focus();
    }
}

// 註冊列表點擊事件並抓取好友名字以取得歷史訊息
function addListener() {
    var jsonObj = {
        "type": "history",
        "sender": $("#cus_name").val(),
        "receiver": "manager",
        "message": ""
    };
    webSocket.send(JSON.stringify(jsonObj));
}

function disconnect() {
    webSocket.close();
}
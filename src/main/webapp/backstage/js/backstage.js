$(window).ready(function () {

    $("#collapse").on("click", function () {
        $("#sidebar").toggleClass("active");
        $(".fa-align-left").toggleClass("fa-angle-double-right");
    })

    $(".nav-link-a").on("click", function (e) {
        $(".nav-link-a").removeClass("active");
        $(this).addClass("active");
    })

    $('#content').on('show.bs.modal', function (e) {
        $(this).find("textarea")[0].value = $(e.relatedTarget).siblings("input")[0].value;
    });

    $('#sendMail').on('show.bs.modal', function (e) {
        $(this).find(".email")[0].value = $(e.relatedTarget).siblings("input")[0].value;
        $(this).find("#taskNoForMail")[0].value = $(e.relatedTarget).parent("td").parent("tr").children("td")[0].innerText;
    })

    $('#newFun').on('click', function () {
        var name = prompt("輸入功能名稱：");
        if (name != null) {
            insertFunction(name);
        }
    })

    $('#deleteFun').on('click', function () {
        var bean, form = [];
        $('.FunOpt:selected').each(function (index, element) {
            bean = {
                "functionName": element.text,
                "functionNo": element.value
            }
            const tmp = JSON.stringify(bean);
            form.push(tmp);
        });
        const requestBody = JSON.stringify(form);
        deleteFunction(requestBody)
    })

    $('#moveItem').on('click', function () {
        var sel_non = $('.non-permission');
        var sel = $('.permission');
        $('.non-permission option:selected').each(function (index, element) {
            $(element).remove();
            sel.prepend(`<option class="RigOpt" value=${element.value}>${element.text}</option>`);
        })
        $('.permission option:selected').each(function (index, element) {
            $(element).remove();
            sel_non.prepend(`<option class="RigOpt" value=${element.value}>${element.text}</option>`);
        })
    })

    $('#permissionUpdate').on('click', function () {
        var form = [$('input#tmpId').val()];
        $('.permission option').each(function (index, element) {
            form.push(element.value);
        })
        const requestBody = JSON.stringify(form);
        axios({
            method: "post",
            url: "./RightUpdate.controller",
            data: requestBody,
            headers: { "Content-Type": "application/json" }
        }).then(res => {
            if (res.data) {
                alert('修改成功');
            } else {
                alert('修改失敗');
            };
        }).catch((error) => console.log(error));
    })


})

function sendMail() {
    let send = {
        "taskNo": $("#taskNoForMail").val(),
        "subject": $("#subject").val(),
        "replyContent": $("#replyContent").val()
    };
    $("#subject").val("");
    $("#replyContent").val("");
    send = JSON.stringify(send);

    axios({
        method: "post",
        url: "./ServSendMail.controller",
        data: send,
        headers: { "Content-Type": "application/json" }
    }).then(res => {
        alert("信件已成功寄出!!");
        selectAllServiceData();
    }).catch((error) => console.log(error));

}

function selectAllServiceData() {
    $("#service").empty();
    let table = `<table id="servTable" class="table table-striped table-bordered nowrap"
                    style="width:100%;"></table>`;
    $("#service").prepend(table);
    axios.post("./ServiceAllData.controller").then(res => {
        var col = [
            { data: 'taskNo', title: "流水號" },
            { data: 'customerName', title: "姓名" },
            {
                data: `customerContent`, title: "意見內容",
                render: function (data) {
                    return `<a href="" data-bs-toggle="modal" data-bs-target="#content" style="color: black;">檢視</a>
                            <input type="hidden" value="${data}">`
                }
            },
            {
                data: 'replyCode', title: "回覆狀態",
                render: function (data) {
                    if ("1" == data) {
                        return "待回覆"
                    } else {
                        return "已回覆"
                    }
                }
            },
            {
                data: null, title: "回覆時間",
                render: function (data, type, row) {
                    var date = row.replyDateTime;
                    if (date == null || date == "") {
                        date = "－";
                    } else {
                        date = moment(date).locale("zh-tw").format('YYYY-MM-DD HH:mm');
                    }
                    return `<h5>${date}</h5>`
                }
            },
            {
                data: `email`, title: "操作功能",
                render: function (data, type, row) {
                    if (Object.values(row)[4] == "1") {
                        return `<a href="" data-bs-toggle="modal" data-bs-target="#sendMail" style="color: black;">回覆</a>
                            <input type="hidden" value="${data}">`
                    } else {
                        return `<a href="javascript:return false;" style="color: gray;">已回覆</a>`
                    }
                }
            }
        ]
        drewTable($("#servTable"), res, col);
    })
}
// new 
function getAllFunction() {
    var sel = $('select.function');
    sel.empty();
    axios.post("./FunctionSelectAll.controller").then(res => {
        res.data.forEach(element => {
            sel.prepend(`<option class="FunOpt" value=${element.functionNo}>${element.functionName}</option>`);
        })
    })
}

function getAdminRight(e) {
    var sel_non = $('.non-permission');
    var sel = $('.permission');
    sel.empty();
    sel_non.empty();
    var adminNo = $($(e).parents("tr").children("td")[0]).text();
    const form = {
        "adminNo": adminNo
    }
    $('input#tmpId').val(adminNo);
    const requestBody = JSON.stringify(form);
    axios.post("./FunctionSelectAll.controller").then(resAll => {
        axios({
            method: "post",
            url: "./AdminRightSelect.controller",
            data: requestBody,
            headers: { "Content-Type": "application/json" }
        }).then(resAdmin => {
            var permission = [];
            resAdmin.data.forEach(element => {
                permission.push(element.functionNo);
            })
            resAll.data.forEach(element => {
                if (permission.includes(element.functionNo)) {
                    sel.prepend(`<option class="RigOpt" value=${element.functionNo}>${element.functionName}</option>`);
                } else {
                    sel_non.prepend(`<option class="RigOpt" value=${element.functionNo}>${element.functionName}</option>`);
                }
            })
        })
    }).catch((error) => console.log(error));
}

function deleteFunction(requestBody) {
    axios({
        method: "post",
        url: "./FunctionDelete.controller",
        data: requestBody,
        headers: { "Content-Type": "application/json" }
    }).then(res => {
        if (res.data) {
            alert('刪除成功');
        } else {
            alert('刪除失敗');
        };
        getAllFunction();
    }).catch((error) => console.log(error));
}

function insertFunction(name) {
    const form = {
        "functionName": name
    };
    const requestBody = JSON.stringify(form);
    axios({
        method: "post",
        url: "./FunctionInsert.controller",
        data: requestBody,
        headers: { "Content-Type": "application/json" }
    }).then(res => {
        if (res.data != null) {
            alert('新增成功');
        } else {
            alert('新增失敗');
        };
        getAllFunction();
    }).catch((error) => console.log(error));
}

function selectAllAdmin() {
    $("#adminManager").empty();
    let table = `<table id="adminManagerTable" class="table table-striped table-bordered nowrap"
                    style="width:100%;"></table>`;
    $("#adminManager").prepend(table);
    var a = `<button id="adminInsertBtn" data-bs-toggle="modal" data-bs-target="#addAdmin">新增管理員</button>
            <button id="functionManageBtn" data-bs-toggle="modal" data-bs-target="#function" onclick="getAllFunction();">功能管理</button>`;
    $("#adminManagerTable").after(a);
    axios.post("./AdminSelectAll.controller").then(res => {
        var col = [
            { data: 'adminNo', title: "管理員編號" },
            { data: 'account', title: "帳號" },
            { data: 'password', title: "密碼" },
            {
                data: null, title: "操作功能",
                render: function () {
                    return `<button class="btn btn-outline-info" type="button" data-bs-toggle="modal" data-bs-target="#right" onclick="getAdminRight(this);">權限設定</button>
                            <button class="btn btn-outline-secondary admin-modify" type="button" onclick="updateAdmin(this);">修改密碼</button>
                            <button class="btn btn-outline-danger admin-delete" type="button" onclick="deleteAdmin(this);">刪除</button>`;
                }
            }
        ];
        drewTable($("#adminManagerTable"), res, col);
    })
}

function insertAdmin() {
    const form = {
        "account": $('#adminAccount').val(),
        "password": $('#adminPassword').val()
    }

    $("#adminAccount").val("");
    $("#adminPassword").val("");
    const requestBody = JSON.stringify(form);
    axios({
        method: "post",
        url: "./AdminInsert.controller",
        data: requestBody,
        headers: { "Content-Type": "application/json" }
    }).then(res => {
        if (res.data != null) {
            alert('新增成功');
        } else {
            alert('新增失敗');
        }
        selectAllAdmin();
    })
}

function updateAdmin(e) {
    var newPws = prompt("請輸入新密碼：");
    if (newPws != null) {
        const form = {
            "adminNo": $($(e).parents("tr").children("td")[0]).text(),
            "password": newPws
        }
        const requestBody = JSON.stringify(form);
        axios({
            method: "post",
            url: "./AdminUpdate.controller",
            data: requestBody,
            headers: { "Content-Type": "application/json" }
        }).then(res => {
            if (res.data != null) {
                alert('修改成功');
            } else {
                alert('修改失敗');
            }
            selectAllAdmin();
        }).catch((error) => console.log(error));
    }
}

function deleteAdmin(e) {
    if (confirm("確定刪除?")) {
        const form = {
            "adminNo": $($(e).parents("tr").children("td")[0]).text(),
        }
        const requestBody = JSON.stringify(form);
        axios({
            method: "post",
            url: "./AdminDelete.controller",
            data: requestBody,
            headers: { "Content-Type": "application/json" }
        }).then(res => {
            if (res.data.result) {
                alert('刪除成功');
            } else {
                alert('刪除失敗');
            }
            selectAllAdmin();
        }).catch((error) => console.log(error));
    }
}

function SelectAllTowerData() {
    $("#tower").empty();
    let table = `<table id="towerTable" class="table table-striped table-bordered nowrap"
                    style="width:100%;"></table>`;
    $("#tower").prepend(table);
    var a = `<button id="towerInsertBtn" data-bs-toggle="modal" data-bs-target="#addTower">新增</button>`;
    $("#towerTable").after(a);

    axios.post("./SelectAllTowerData.controller").then(res => {
        var col = [
            { data: 'towerNo', title: "塔位編號" },
            { data: 'userNo', title: "使用者編號" },
            { data: 'deadName', title: "往者姓名" }
        ];
        drewTable($("#towerTable"), res, col);

    }).catch((error) => console.log(error));
}

function insertTower() {
    const form = {
        "userNo": $("#newTowerUserNo").val(),
        "deadName": $("#deadName").val()
    };

    $("#newTowerUserNo").val("");
    $("#deadName").val("");
    const requestBody = JSON.stringify(form);

    axios({
        method: "post",
        url: "./tower.controller",
        data: requestBody,
        headers: { "Content-Type": "application/json" }
    }).then(res => {
        if (res.data != null) {
            alert('新增成功');
        } else {
            alert('新增失敗');
        }
        SelectAllTowerData();
    }).catch((error) => console.log(error));
}

function selectAllMemberData() {
    $("#member").empty();
    let table = `<table id="memTable" class="table table-striped table-bordered nowrap"
                    style="width:100%;"></table>`;
    $("#member").prepend(table);
    axios.post("./MemberAllData.controller").then(res => {
        var col = [
            { data: 'userno', title: "會員編號" },
            { data: 'useraccount', title: "帳號" },
            { data: 'username', title: "姓名" },
            { data: 'phone', title: "電話" },
            { data: 'email', title: "信箱" },
            { data: 'address', title: "地址", defaultContent: "" },
            { data: 'gender', title: "性別", defaultContent: "" },
            {
                data: 'birthday', title: "生日", defaultContent: "",
                render: function (data) {
                    if (data != null) {
                        var date = data.replace(/\s/g, "").split(/[,月]/);
                        return date[2] + "-" + date[0] + "-" + date[1];
                    }
                    return "";
                }
            },
            { data: 'verifystatus', title: "審核狀態" },
        ]
        drewTable($("#memTable"), res, col);
    })

}
function compDataSelectAll() {
    $("#comp").empty();
    let table = `<table id="compTable" class="table table-striped table-bordered nowrap"
                    style="width:100%;"></table>`;
    $("#comp").prepend(table);
    axios.post("./compSelectAll.controller").then(res => {
        var col = [
            { data: 'compNO', title: "廠商編號" },
            { data: 'compAccount', title: "廠商帳號" },
            { data: 'compName', title: "公司名稱" },
            { data: 'chargePerson', title: "負責人" },
            { data: 'compPhone', title: "廠商電話" },
            { data: 'email', title: "廠商電子郵件", defaultContent: "" },
            { data: 'address', title: "廠商地址", defaultContent: "" },
            { data: 'verify', title: "審核狀態" },
        ]
        drewTable($("#compTable"), res, col);
    })

}

function productSelectAll() {
    $("#product").empty();
    let table = `<table id="productTable" class="table table-striped table-bordered nowrap"
                    style="width:100%;"></table>`;
    $("#product").prepend(table);
    axios.post("./productSelectAll.controller").then(res => {
        var col = [
            { data: 'prodNo', title: "商品編號" },
            { data: 'compNo', title: "廠商編號" },
            { data: 'prodTypeCode', title: "商品類別代號" },
            { data: 'prodName', title: "商品名稱" },
            { data: 'prodDesc', title: "商品描述" },
            { data: 'prodPrice', title: "商品價格", defaultContent: "" },
            { data: 'prodStock', title: "商品庫存", defaultContent: "" },
            { data: 'prodVerify', title: "審核狀態" },
        ]
        drewTable($("#productTable"), res, col);
    })

}


function drewTable(table, res, col) {
    new $.fn.dataTable.FixedHeader(
        table.DataTable({
            language: {
                "processing": "處理中...",
                "loadingRecords": "載入中...",
                "lengthMenu": "顯示 _MENU_ 項結果",
                "zeroRecords": "沒有符合的結果",
                "info": "顯示第 _START_ 至 _END_ 項結果，共 _TOTAL_ 項",
                "infoEmpty": "顯示第 0 至 0 項結果，共 0 項",
                "infoFiltered": "(從 _MAX_ 項結果中過濾)",
                "infoPostFix": "",
                "search": "搜尋:",
                "paginate": {
                    "first": "第一頁",
                    "previous": "上一頁",
                    "next": "下一頁",
                    "last": "最後一頁"
                }
            },
            responsive: true,
            data: res.data,
            columns: col
        })
    )
}
// new end

function loginAdmin() {
    const form = {
        "account": $('#login_account').val(),
        "password": $('#login_password').val()
    }
    console.log(form);
    $("#login_account").val("");
    $("#login_password").val("");
    const requestBody = JSON.stringify(form);
    console.log(requestBody);
    axios({
        method: "post",
        url: "./AdminSelectOne.controller",
        data: requestBody,
        headers: { "Content-Type": "application/json" }
    }).then(res => {
        if (res.data != null) {
            alert('登入成功');

            //save user data to session or local storage
            //save data to session storage
            var manager_obj = {
                login_account: res.data.account,
                login_adminNo: res.data.adminNo
            };
            localStorage.setItem("store_data", JSON.stringify(manager_obj));
            getAdminRight1(); //取得管理員權限顯示畫面
            // function change relative
            var manager_account = JSON.parse(localStorage.getItem("store_data")).login_account;

            document.getElementById('manager_dropdown').style.display = "block";
            document.getElementById('account').innerHTML = manager_account;
            document.getElementById("login").style.display = "none";

            // 登出後清空 localStorage 裡的資料
            var the_clear_el = document.getElementById("logout");
            console.log(the_clear_el);
            the_clear_el.addEventListener("click", function () {
                localStorage.clear();

                if (JSON.parse(localStorage.getItem("store_data")) == null) {

                    $(".main-list li").each(function () {
                        $(this).attr("style", "display:none");
                    })

                    document.getElementById("login").style.display = "block";
                    document.getElementById("manager_dropdown").style.display = "none";
                    window.location.reload();
                }
            });

        } else {
            alert('登入失敗');
        }
    }).catch((error) => console.log(error));
}

function getAdminRight1() {

    var manager_adminNo = JSON.parse(localStorage.getItem("store_data")).login_adminNo;
    const form = {
        "adminNo": manager_adminNo
    }
    const requestBody = JSON.stringify(form);
    axios.post("./FunctionSelectAll.controller").then(resAll => {
        axios({
            method: "post",
            url: "./AdminRightSelect.controller",
            data: requestBody,
            headers: { "Content-Type": "application/json" }
        }).then(resAdmin => {
            var permission = [];
            resAdmin.data.forEach(element => {
                permission.push(element.functionNo);
            })
            resAll.data.forEach(element => {

                if (permission.includes(element.functionNo)) {
                    var name = element.functionName;
                    $(".main-list li").each(function (index, el) {
                        if ($(el).attr("id") == name) {
                            $(el).attr("style", "display:block");
                        }
                    })
                }
            })
        })
    }).catch((error) => console.log(error));
}


document.addEventListener("DOMContentLoaded", function () {

    // function check user is login from session storage
    var manager_account = JSON.parse(localStorage.getItem("store_data")).login_account;
    if (manager_account != null) {
        getAdminRight1();
        // function change relative
        document.getElementById('manager_dropdown').style.display = "block";
        document.getElementById('account').innerHTML = manager_account;
        document.getElementById("login").style.display = "none";

        // 清空 localStorage 裡的資料
        var the_clear_el = document.getElementById("logout");
        console.log(the_clear_el);
        the_clear_el.addEventListener("click", function () {
            localStorage.clear();

            if (JSON.parse(localStorage.getItem("store_data")) == null) {
                $(".nav-link-a").each(function () {
                    $(this).parent("li").attr("style", "display:none");
                })
                document.getElementById("login").style.display = "block";
                document.getElementById("manager_dropdown").style.display = "none";
                window.location.reload();

            }
        });
    }

});

// 聊天室
var webSocket;
var self = "manager";

function connect() {
    var messagesArea = document.getElementById("messagesArea");
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
            refreshFriendList(jsonObj);
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
            refreshFriendList(jsonObj);
        }

    };

    webSocket.onclose = function (event) {
        console.log("Disconnected!");
    };
}

function sendMessage() {
    var inputMessage = document.getElementById("message");
    var friend = $("#statusOutput").val();
    var message = inputMessage.value.trim();

    if (message === "") {
        alert("Input a message");
        inputMessage.focus();
    } else if (friend === "") {
        alert("Choose a friend");
    } else {
        var jsonObj = {
            "type": "chat",
            "sender": self,
            "receiver": friend,
            "message": message
        };
        webSocket.send(JSON.stringify(jsonObj));
        inputMessage.value = "";
        inputMessage.focus();
    }
}

// 有好友上線或離線就更新列表
function refreshFriendList(jsonObj) {
    var friends = jsonObj.users;
    var row = document.getElementById("chatSelect");
    row.innerHTML = '';
    for (var i = 0; i < friends.length; i++) {
        if (friends[i] === self) { continue; }
        row.innerHTML += '<option id=' + i + ' class="column" name="friendName" value=' + friends[i] + ' >' + friends[i] + '</option>';
    }
    addListener();
}
// 註冊列表點擊事件並抓取好友名字以取得歷史訊息
function addListener() {
    $("#chatSelect option").on('click', function (e) {
        var friend = $(this).text();
        updateFriendName(friend);
        var jsonObj = {
            "type": "history",
            "sender": self,
            "receiver": friend,
            "message": ""
        };
        webSocket.send(JSON.stringify(jsonObj));
    })
}

function disconnect() {
    webSocket.close();
}

function updateFriendName(name) {
    $("#statusOutput").val(name);
}
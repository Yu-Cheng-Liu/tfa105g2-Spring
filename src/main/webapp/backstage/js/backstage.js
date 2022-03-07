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
                data: 'replyDateTime', title: "回覆時間",
                render: function (data) {
                    if (data == null || data == "") {
                        return ""
                    } else {
                        return moment(data).locale("zh-tw").format('YYYY-MM-DD HH:mm');
                    }
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
            { data: 'birthday', title: "生日", defaultContent: "" },
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
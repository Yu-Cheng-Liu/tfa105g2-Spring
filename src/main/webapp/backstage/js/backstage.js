$(document).ready(function () {

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
        headers: { "Content-Type": "application/json" },
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
        new $.fn.dataTable.FixedHeader(
            $("#servTable").DataTable({
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
                columns: [
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
                        data: 'replyCode', title: "回覆狀態" ,
                        render: function (data){
                            if("1" ==  data){
                                return "待回覆"
                            }else{
                                return "已回覆"
                            }
                        }
                    },
                    { 
                        data: 'replyDateTime', title: "回覆時間", defaultContent: "",
                        render: function (data){
                            if(data == null || data == ""){
                                return ""
                            }else{
                                let date = new Date(data);
                                moment.locale("zh-tw"); 
                                return moment(date).format('L LT');
                            }
                        }
                    },
                    {
                        data: `email`, title: "操作功能",
                        render: function (data, type,  row) {
                            if(Object.values(row)[4] == "1"){
                            return `<a href="" data-bs-toggle="modal" data-bs-target="#sendMail" style="color: black;">回覆</a>
                            <input type="hidden" value="${data}">`
                            }else{
                                return `<a href="javascript:return false;" style="color: gray;">已回覆</a>`
                            }
                        }
                    }
                ]
            })
        )
    })
    
}
    // AJAX 無傳入資料寫法***************************************
    // axios.post("./ServiceAllData.do").then(res => {console.log(res.data)})
    // *********************************************************

    // AJAX 需傳入資料寫法***************************************
    // let form = document.querySelector("#id");
    // let send = new FormData(form)
    // send = JSON.stringify(send);
    // axios({
    //     method: "post",
    //     url: "./ServiceAllData.do",
    //     data: fdate,
    //     headers: { "Content-Type": "application/json" },
    //   }).then(res=>{
    //     console.log(res.data);
    //     }).catch((error) => console.log(error));
    // ********************************************************

    // 表格繪製*************************************************
    // 1. 開頭清空指定表格
    // $("#service").empty();
    // 
    // 2. 插入table (需修改部分：table的id)
    // let table = `<table id="servTable" class="table table-striped table-bordered nowrap"
    //                 style="width:100%;"></table>`;
    // $("#service").prepend(table);
    // 
    // 3. ajax 與controller傳輸資料 (需修改部分：table的id、Datatable的columns內容)
    // columns參數設定說明  {data: "VO欄位名稱", title: "table要顯示的標頭名稱", render: 欄位呈現方法 => function(data){}}
    // axios.post("./ServiceAllData.do").then(res => {
    //     new $.fn.dataTable.FixedHeader(
    //         $("#servTable").DataTable({ 
    //             language: {
    //                 "processing": "處理中...",
    //                 "loadingRecords": "載入中...",
    //                 "lengthMenu": "顯示 _MENU_ 項結果",
    //                 "zeroRecords": "沒有符合的結果",
    //                 "info": "顯示第 _START_ 至 _END_ 項結果，共 _TOTAL_ 項",
    //                 "infoEmpty": "顯示第 0 至 0 項結果，共 0 項",
    //                 "infoFiltered": "(從 _MAX_ 項結果中過濾)",
    //                 "infoPostFix": "",
    //                 "search": "搜尋:",
    //                 "paginate": {
    //                     "first": "第一頁",
    //                     "previous": "上一頁",
    //                     "next": "下一頁",
    //                     "last": "最後一頁"
    //                 }
    //             },
    //             responsive: true,
    //             // destory: true,
    //             data: res.data,
    //             columns: [
    //                 { data: 'taskNo', title: "流水號" },
    //                 {
    //                     data: `email`, title: "操作功能",
    //                     render: function (data) {
    //                         return `<a href="" data-bs-toggle="modal" data-bs-target="#sendMail" style="color: black;">回覆</a>
    //                         <input type="hidden" value="${data}">`
    //                     }
    //                 }
    //             ]
    //         })
    //     )
    // ********************************************************
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">


<head>
    <%@ include file="../../static/head.jsp" %>
    <!-- font-awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">


    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <!-- layui -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/resources/layui/layui.js"></script>
</head>
<style>

</style>
<body>






    <!-- Pre Loader -->
    <div class="loading">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
    </div>
<!--/Pre Loader -->
    <div class="wrapper">
        <!-- Page Content -->
        <div id="content">
            <!-- Top Navigation -->
            <%@ include file="../../static/topNav.jsp" %>
            <!-- Menu -->
            <div class="container menu-nav">
                <nav class="navbar navbar-expand-lg lochana-bg text-white">
                    <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="ti-menu text-white"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul id="navUl" class="navbar-nav mr-auto">
                        </ul>
                    </div>
                </nav>
            </div>
            <!-- /Menu -->
            <!-- Breadcrumb -->
            <!-- Page Title -->
            <div class="container mt-0">
                <div class="row breadcrumb-bar">
                    <div class="col-md-6">
                        <h3 class="block-title">薪资管理</h3>
                    </div>
                    <div class="col-md-6">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="${pageContext.request.contextPath}/index.jsp">
                                    <span class="ti-home"></span>
                                </a>
                            </li>
                            <li class="breadcrumb-item">薪资管理</li>
                            <li class="breadcrumb-item active">薪资列表</li>
                        </ol>
                    </div>
                </div>
            </div>
            <!-- /Page Title -->

            <!-- /Breadcrumb -->
            <!-- Main Content -->
            <div class="container">
                <div class="row">
                    <!-- Widget Item -->
                    <div class="col-md-12">
                        <div class="widget-area-2 lochana-box-shadow">
                            <h3 class="widget-title">薪资列表</h3>
                            <div class="table-responsive mb-3">
                                <div class="col-sm-12">
                                                                                                             
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        月份
                                        <div class="layui-input-inline">
                                            <input type="text" id="monthSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="月份" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
                                                                                                         
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        员工编号
                                        <div class="layui-input-inline">
                                            <input type="text" id="yonghuNumberSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="员工编号" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        姓名
                                        <div class="layui-input-inline">
                                            <input type="text" id="yonghuNameSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="姓名" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        手机号
                                        <div class="layui-input-inline">
                                            <input type="text" id="yonghuPhoneSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="手机号" aria-controls="tableId">
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        身份证号
                                        <div class="layui-input-inline">
                                            <input type="text" id="yonghuIdNumberSearch" style="width: 140px;" class="form-control form-control-sm"
                                                   placeholder="身份证号" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                                                                             
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        部门
                                        <div class="layui-input-inline">
                                            <select name="bumenTypesSelectSearch"  style="width: 150px;" id="bumenTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                     
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        职务
                                        <div class="layui-input-inline">
                                            <select name="zhiwuTypesSelectSearch"  style="width: 150px;" id="zhiwuTypesSelectSearch" class="form-control form-control-sm"
                                                    aria-controls="tableId">
                                            </select>
                                        </div>
                                    </div>
                                                                                                         
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        入职时间
                                        <div class="layui-input-inline">
                                            <input type="datetime-local" id="ruzhiTimeStartSearch" style="width: 190px;" class="form-control form-control-sm"
                                                   placeholder="开始" aria-controls="tableId">
                                        </div>
                                    </div>
                                    <div class="layui-inline" style="margin-bottom: 10px;">
                                        <div class="layui-input-inline">
                                            <input type="datetime-local" id="ruzhiTimeEndSearch" style="width: 190px;" class="form-control form-control-sm"
                                                   placeholder="结束" aria-controls="tableId">
                                        </div>
                                    </div>
                                                                                                        
                                    <div class="layui-inline" style="margin-left: 30px;margin-bottom: 10px;">
                                        <button onclick="search()" type="button" class="btn btn-primary">查询</button>
                                        <button onclick="add()" type="button" class="btn btn-success 新增">添加</button>
                                        <button onclick="graph()" type="button" class="btn btn-success 报表">报表</button>
                                        <button onclick="deleteMore()" type="button" class="btn btn-danger 删除">批量删除</button>
                                    </div>
                                </div>
                                <table id="tableId" class="table table-bordered table-striped">
                                    <thead>
                                    <tr>
                                        <th class="no-sort" style="min-width: 35px;">
                                            <div class="custom-control custom-checkbox">
                                                <input class="custom-control-input" type="checkbox" id="select-all"
                                                       onclick="chooseAll()">
                                                <label class="custom-control-label" for="select-all"></label>
                                            </div>
                                        </th>

                                        <th >员工编号</th>
                                        <th >姓名</th>
                                        <th >手机号</th>
                                        <th >身份证号</th>
                                        <%--<th >照片</th>--%>
                                        <%--<th >性别</th>--%>
                                        <th >部门</th>
                                        <th >职务</th>
                                        <%--<th >出生日期</th>--%>
                                        <%--<th >入职时间</th>--%>
                                        <%--<th >详细介绍</th>--%>

                                        <th >月份</th>
                                        <th >基本工资</th>
                                        <th >加班费</th>
                                        <th >奖金</th>
                                        <%--<th >住房补贴</th>--%>
                                        <%--<th >吃饭补贴</th>--%>
                                        <%--<th >工龄费</th>--%>
                                        <%--<th >考勤费</th>--%>
                                        <%--<th >保险费</th>--%>
                                        <%--<th >五险一金缴纳金额</th>--%>
                                        <%--<th >罚款</th>--%>
                                        <th >实发金额</th>
                                        <%--<th >备注</th>--%>
                                        <th >发放时间</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody id="thisTbody">
                                    </tbody>
                                </table>
                                <div class="col-md-6 col-sm-3">
                                    <div class="dataTables_length" id="tableId_length">

                                        <select name="tableId_length" aria-controls="tableId" id="selectPageSize"
                                                onchange="changePageSize()">
                                            <option value="10">10</option>
                                            <option value="25">25</option>
                                            <option value="50">50</option>
                                            <option value="100">100</option>
                                        </select>
                                        条 每页

                                    </div>
                                </div>
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination justify-content-end">
                                        <li class="page-item" id="tableId_previous" onclick="pageNumChange('pre')">
                                            <a class="page-link" href="#" tabindex="-1">上一页</a>
                                        </li>

                                        <li class="page-item" id="tableId_next" onclick="pageNumChange('next')">
                                            <a class="page-link" href="#">下一页</a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                    <!-- /Widget Item -->
                </div>
            </div>
            <!-- /Main Content -->

        </div>
        <!-- /Page Content -->
    </div>
    <!-- Back to Top -->
    <a id="back-to-top" href="#" class="back-to-top">
        <span class="ti-angle-up"></span>
    </a>
    <!-- /Back to Top -->
    <%@ include file="../../static/foot.jsp" %>
    <script language="javascript" type="text/javascript"
            src="${pageContext.request.contextPath}/resources/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
    <script>

        <%@ include file="../../utils/menu.jsp"%>
        <%@ include file="../../static/setMenu.js"%>
        <%@ include file="../../utils/baseUrl.jsp"%>
        <%@ include file="../../static/getRoleButtons.js"%>
        <%@ include file="../../static/crossBtnControl.js"%>
        var tableName = "xinzi";
        var pageType = "list";
        var searchForm = {key: ""};
        var pageIndex = 1;
        var pageSize = 10;
        var totalPage = 0;
        var dataList = [];
        var sortColumn = '';
        var sortOrder = '';
        var ids = [];
        var checkAll = false;

        <!-- 级联表的级联字典表 -->
        var bumenTypesOptions = [];
        var zhiwuTypesOptions = [];

        <!-- 本表的级联字段表 -->

        function init() {
            // 满足条件渲染提醒接口
        }

        // 改变每页记录条数
        function changePageSize() {
            var selection = document.getElementById('selectPageSize');
            var index = selection.selectedIndex;
            pageSize = selection.options[index].value;
            getDataList();
        }



        // 查询
        function search() {
            searchForm = {key: ""};

        <!-- 级联表的级联字典表 -->
                                         
                            //员工编号
            var yonghuNumberSearchInput = $('#yonghuNumberSearch');
            if( yonghuNumberSearchInput != null){
                if (yonghuNumberSearchInput.val() != null && yonghuNumberSearchInput.val() != '') {
                    searchForm.yonghuNumber = $('#yonghuNumberSearch').val();
                }
            }
                     
                            //姓名
            var yonghuNameSearchInput = $('#yonghuNameSearch');
            if( yonghuNameSearchInput != null){
                if (yonghuNameSearchInput.val() != null && yonghuNameSearchInput.val() != '') {
                    searchForm.yonghuName = $('#yonghuNameSearch').val();
                }
            }
                     
                            //手机号
            var yonghuPhoneSearchInput = $('#yonghuPhoneSearch');
            if( yonghuPhoneSearchInput != null){
                if (yonghuPhoneSearchInput.val() != null && yonghuPhoneSearchInput.val() != '') {
                    searchForm.yonghuPhone = $('#yonghuPhoneSearch').val();
                }
            }
                     
                            //身份证号
            var yonghuIdNumberSearchInput = $('#yonghuIdNumberSearch');
            if( yonghuIdNumberSearchInput != null){
                if (yonghuIdNumberSearchInput.val() != null && yonghuIdNumberSearchInput.val() != '') {
                    searchForm.yonghuIdNumber = $('#yonghuIdNumberSearch').val();
                }
            }
                                                             
            var bumenTypesSelectSearchInput = document.getElementById("bumenTypesSelectSearch");
            if(bumenTypesSelectSearchInput != null){
                var bumenTypesIndex = bumenTypesSelectSearchInput.selectedIndex;
                if( bumenTypesIndex  != 0){
                    searchForm.bumenTypes = document.getElementById("bumenTypesSelectSearch").options[bumenTypesIndex].value;
                }
            }
                     
            var zhiwuTypesSelectSearchInput = document.getElementById("zhiwuTypesSelectSearch");
            if(zhiwuTypesSelectSearchInput != null){
                var zhiwuTypesIndex = zhiwuTypesSelectSearchInput.selectedIndex;
                if( zhiwuTypesIndex  != 0){
                    searchForm.zhiwuTypes = document.getElementById("zhiwuTypesSelectSearch").options[zhiwuTypesIndex].value;
                }
            }
                                         
                                            <!-- 本表的查询条件 -->

             
            //月份
            var monthSearchInput = $('#monthSearch');
            if( monthSearchInput != null){
                if (monthSearchInput.val() != null && monthSearchInput.val() != '') {
                    searchForm.month = $('#monthSearch').val();
                }
            }
                                                                    getDataList();
        }

        // 获取数据列表
        function getDataList() {
            http("xinzi/page", "GET", {
                page: pageIndex,
                limit: pageSize,
                sort: sortColumn,
                order: sortOrder,
                //本表的
                month: searchForm.month,
            //级联表的
                yonghuNumber: searchForm.yonghuNumber,
                yonghuName: searchForm.yonghuName,
                yonghuPhone: searchForm.yonghuPhone,
                yonghuIdNumber: searchForm.yonghuIdNumber,
                bumenTypes: searchForm.bumenTypes,
                zhiwuTypes: searchForm.zhiwuTypes,
                ruzhiTimeStart: searchForm.ruzhiTimeStart,
                ruzhiTimeEnd: searchForm.ruzhiTimeEnd,


            }, (res) => {
                if(res.code == 0) {
                    clear();
                    $("#thisTbody").html("");
                    dataList = res.data.list;
                    totalPage = res.data.totalPage;
                    for (var i = 0; i < dataList.length; i++) { //遍历一下表格数据  
                        var trow = setDataRow(dataList[i], i); //定义一个方法,返回tr数据 
                        $('#thisTbody').append(trow);
                    }
                    pagination(); //渲染翻页组件
                    getRoleButtons();// 权限按钮控制
                }
            });
        }

        // 渲染表格数据
        function setDataRow(item, number) {
            //创建行 
            var row = document.createElement('tr');
            row.setAttribute('class', 'useOnce');
            //创建勾选框
            var checkbox = document.createElement('td');
            var checkboxDiv = document.createElement('div');
            checkboxDiv.setAttribute("class", "custom-control custom-checkbox");
            var checkboxInput = document.createElement('input');
            checkboxInput.setAttribute("class", "custom-control-input");
            checkboxInput.setAttribute("type", "checkbox");
            checkboxInput.setAttribute('name', 'chk');
            checkboxInput.setAttribute('value', item.id);
            checkboxInput.setAttribute("id", number);
            checkboxDiv.appendChild(checkboxInput);
            var checkboxLabel = document.createElement('label');
            checkboxLabel.setAttribute("class", "custom-control-label");
            checkboxLabel.setAttribute("for", number);
            checkboxDiv.appendChild(checkboxLabel);
            checkbox.appendChild(checkboxDiv);
            row.appendChild(checkbox)


                    //员工编号
            var yonghuNumberCell = document.createElement('td');
            yonghuNumberCell.innerHTML = item.yonghuNumber;
            row.appendChild(yonghuNumberCell);


                    //姓名
            var yonghuNameCell = document.createElement('td');
            yonghuNameCell.innerHTML = item.yonghuName;
            row.appendChild(yonghuNameCell);


                    //手机号
            var yonghuPhoneCell = document.createElement('td');
            yonghuPhoneCell.innerHTML = item.yonghuPhone;
            row.appendChild(yonghuPhoneCell);


                    //身份证号
            var yonghuIdNumberCell = document.createElement('td');
            yonghuIdNumberCell.innerHTML = item.yonghuIdNumber;
            row.appendChild(yonghuIdNumberCell);


                //照片
            // var yonghuPhotoCell = document.createElement('td');
            // var yonghuPhotoImg = document.createElement('img');
            // var yonghuPhotoImgValue = item.yonghuPhoto;
            // if(yonghuPhotoImgValue !=null && yonghuPhotoImgValue !='' && yonghuPhotoImgValue !='null'){
            //         yonghuPhotoImg.setAttribute('src', yonghuPhotoImgValue);
            //         yonghuPhotoImg.setAttribute('height', 100);
            //         yonghuPhotoImg.setAttribute('width', 100);
            //         yonghuPhotoCell.appendChild(yonghuPhotoImg);
            // }else{
            //         yonghuPhotoCell.innerHTML = "暂无图片";
            // }
            // row.appendChild(yonghuPhotoCell);
            //
            //             //性别
            // var sexTypesCell = document.createElement('td');
            // sexTypesCell.innerHTML = item.sexValue;
            // row.appendChild(sexTypesCell);

                        //部门
            var bumenTypesCell = document.createElement('td');
            bumenTypesCell.innerHTML = item.bumenValue;
            row.appendChild(bumenTypesCell);

                        //职务
            var zhiwuTypesCell = document.createElement('td');
            zhiwuTypesCell.innerHTML = item.zhiwuValue;
            row.appendChild(zhiwuTypesCell);


                    //出生日期
            // var chushengriqiTimeCell = document.createElement('td');
            // chushengriqiTimeCell.innerHTML = item.chushengriqiTime;
            // row.appendChild(chushengriqiTimeCell);
            //
            //
            //         //入职时间
            // var ruzhiTimeCell = document.createElement('td');
            // ruzhiTimeCell.innerHTML = item.ruzhiTime;
            // row.appendChild(ruzhiTimeCell);
            //
            //
            //         //详细介绍
            // var yonghuContentCell = document.createElement('td');
            // //如果图文详情包含图片
            // if (item.yonghuContent && item.yonghuContent.indexOf('img') != -1) {
            //     //暂时只考虑图片+文字 和 文字+图片的情况
            //     var beginIndex = item.yonghuContent.indexOf('<img');
            //     var endIndex = item.yonghuContent.indexOf('>');
            //         yonghuContentCell.innerHTML = item.yonghuContent.substring(beginIndex, endIndex + 1).replace("img", "img width='100' height='100'");
            // } else {
            //     if (item.yonghuContent != null && item.yonghuContent != "" && item.yonghuContent.length >= 11) {
            //             yonghuContentCell.innerHTML = item.yonghuContent.substring(0, 10) + "...";
            //     } else {
            //             yonghuContentCell.innerHTML = item.yonghuContent;
            //     }
            // }
            // row.appendChild(yonghuContentCell);



            //月份
            var monthCell = document.createElement('td');
            monthCell.innerHTML = item.month;
            row.appendChild(monthCell);


            //基本工资
            var jibenMoneyCell = document.createElement('td');
            jibenMoneyCell.innerHTML = item.jibenMoney;
            row.appendChild(jibenMoneyCell);


            //加班费
            var jiabanMoneyCell = document.createElement('td');
            jiabanMoneyCell.innerHTML = item.jiabanMoney;
            row.appendChild(jiabanMoneyCell);


            //奖金
            var jiangjinMoneyCell = document.createElement('td');
            jiangjinMoneyCell.innerHTML = item.jiangjinMoney;
            row.appendChild(jiangjinMoneyCell);


            // //住房补贴
            // var zhufangMoneyCell = document.createElement('td');
            // zhufangMoneyCell.innerHTML = item.zhufangMoney;
            // row.appendChild(zhufangMoneyCell);
            //
            //
            // //吃饭补贴
            // var chifanMoneyCell = document.createElement('td');
            // chifanMoneyCell.innerHTML = item.chifanMoney;
            // row.appendChild(chifanMoneyCell);
            //
            //
            // //工龄费
            // var gonglingMoneyCell = document.createElement('td');
            // gonglingMoneyCell.innerHTML = item.gonglingMoney;
            // row.appendChild(gonglingMoneyCell);
            //
            //
            // //考勤费
            // var kaoqinMoneyCell = document.createElement('td');
            // kaoqinMoneyCell.innerHTML = item.kaoqinMoney;
            // row.appendChild(kaoqinMoneyCell);
            //
            //
            // //保险费
            // var baoxianfeiMoneyCell = document.createElement('td');
            // baoxianfeiMoneyCell.innerHTML = item.baoxianfeiMoney;
            // row.appendChild(baoxianfeiMoneyCell);
            //
            //
            // //五险一金缴纳金额
            // var wuxianyijinMoneyCell = document.createElement('td');
            // wuxianyijinMoneyCell.innerHTML = item.wuxianyijinMoney;
            // row.appendChild(wuxianyijinMoneyCell);
            //
            //
            // //罚款
            // var fakuanMoneyCell = document.createElement('td');
            // fakuanMoneyCell.innerHTML = item.fakuanMoney;
            // row.appendChild(fakuanMoneyCell);


            //实发金额
            var shifaMoneyCell = document.createElement('td');
            shifaMoneyCell.innerHTML = item.shifaMoney;
            row.appendChild(shifaMoneyCell);


                //备注
            // var xinziContentCell = document.createElement('td');
            // //如果图文详情包含图片
            // if (item.xinziContent && item.xinziContent.indexOf('img') != -1) {
            //     //暂时只考虑图片+文字 和 文字+图片的情况
            //     var beginIndex = item.xinziContent.indexOf('<img');
            //     var endIndex = item.xinziContent.indexOf('>');
            //         xinziContentCell.innerHTML = item.xinziContent.substring(beginIndex, endIndex + 1).replace("img", "img width='100' height='100'");
            // } else {
            //     if (item.xinziContent != null && item.xinziContent != "" && item.xinziContent.length >= 11) {
            //             xinziContentCell.innerHTML = item.xinziContent.substring(0, 10) + "...";
            //     } else {
            //             xinziContentCell.innerHTML = item.xinziContent;
            //     }
            // }
            // row.appendChild(xinziContentCell);


            //发放时间
            var insertTimeCell = document.createElement('td');
            insertTimeCell.innerHTML = item.insertTime;
            row.appendChild(insertTimeCell);



            //每行按钮
            var btnGroup = document.createElement('td');

            //详情按钮
            var detailBtn = document.createElement('button');
            var detailAttr = "detail(" + item.id + ')';
            detailBtn.setAttribute("type", "button");
            detailBtn.setAttribute("class", "btn btn-info btn-sm 查看");
            detailBtn.setAttribute("onclick", detailAttr);
            detailBtn.innerHTML = "查看";
            btnGroup.appendChild(detailBtn);

            //修改按钮
            var editBtn = document.createElement('button');
            var editAttr = 'edit(' + item.id + ')';
            editBtn.setAttribute("type", "button");
            editBtn.setAttribute("class", "btn btn-warning btn-sm 修改");
            editBtn.setAttribute("onclick", editAttr);
            editBtn.innerHTML = "修改";
            btnGroup.appendChild(editBtn);

            //删除按钮
            var deleteBtn = document.createElement('button');
            var deleteAttr = 'remove(' + item.id + ')';
            deleteBtn.setAttribute("type", "button");
            deleteBtn.setAttribute("class", "btn btn-danger btn-sm 删除");
            deleteBtn.setAttribute("onclick", deleteAttr);
            deleteBtn.innerHTML = "删除";
            btnGroup.appendChild(deleteBtn);
            row.appendChild(btnGroup);

            return row;
    }


        // 翻页
        function pageNumChange(val) {
            if (val == 'pre') {
                pageIndex--;
            } else if (val == 'next') {
                pageIndex++;
            } else {
                pageIndex = val;
            }
            getDataList();
        }

        // 下载
        function download(url) {
            window.open(url);
        }
        // 打开新窗口播放媒体
        function mediaPlay(url){
            window.open(url);
        }

        // 渲染翻页组件
        function pagination() {
            var beginIndex = pageIndex;
            var endIndex = pageIndex;
            var point = 4;
            //计算页码
            for (var i = 0; i < 3; i++) {
                if (endIndex == totalPage) {
                    break;
                }
                endIndex++;
                point--;
            }
            for (var i = 0; i < 3; i++) {
                if (beginIndex == 1) {
                    break;
                }
                beginIndex--;
                point--;
            }
            if (point > 0) {
                while (point > 0) {
                    if (endIndex == totalPage) {
                        break;
                    }
                    endIndex++;
                    point--;
                }
                while (point > 0) {
                    if (beginIndex == 1) {
                        break;
                    }
                    beginIndex--;
                    point--
                }
            }
            // 是否显示 前一页 按钮
            if (pageIndex > 1) {
                $('#tableId_previous').show();
            } else {
                $('#tableId_previous').hide();
            }
            // 渲染页码按钮
            for (var i = beginIndex; i <= endIndex; i++) {
                var pageNum = document.createElement('li');
                pageNum.setAttribute('onclick', "pageNumChange(" + i + ")");
                if (pageIndex == i) {
                    pageNum.setAttribute('class', 'paginate_button page-item active useOnce');
                } else {
                    pageNum.setAttribute('class', 'paginate_button page-item useOnce');
                }
                var pageHref = document.createElement('a');
                pageHref.setAttribute('class', 'page-link');
                pageHref.setAttribute('href', '#');
                pageHref.setAttribute('aria-controls', 'tableId');
                pageHref.setAttribute('data-dt-idx', i);
                pageHref.setAttribute('tabindex', 0);
                pageHref.innerHTML = i;
                pageNum.appendChild(pageHref);
                $('#tableId_next').before(pageNum);
            }
            // 是否显示 下一页 按钮
            if (pageIndex < totalPage) {
                $('#tableId_next').show();
                $('#tableId_next a').attr('data-dt-idx', endIndex + 1);
            } else {
                $('#tableId_next').hide();
            }
            var pageNumInfo = "当前第 " + pageIndex + " 页，共 " + totalPage + " 页";
            $('#tableId_info').html(pageNumInfo);
        }

        // 跳转到指定页
        function toThatPage() {
            //var index = document.getElementById('pageIndexInput').value;
            if (index < 0 || index > totalPage) {
                alert('请输入正确的页码');
            } else {
                pageNumChange(index);
            }
        }

        // 全选/全不选
        function chooseAll() {
            checkAll = !checkAll;
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                boxs[i].checked = checkAll;
            }
        }

        // 批量删除
        function deleteMore() {
            ids = []
            var boxs = document.getElementsByName("chk");
            for (var i = 0; i < boxs.length; i++) {
                if (boxs[i].checked) {
                    ids.push(boxs[i].value)
                }
            }
            if (ids.length == 0) {
                alert('请勾选要删除的记录');
            } else {
                remove(ids);
            }
        }

        // 删除
        function remove(id) {
            var mymessage = confirm("真的要删除吗？");
            if (mymessage == true) {
                var paramArray = [];
                if (id == ids) {
                    paramArray = id;
                } else {
                    paramArray.push(id);
                }
                httpJson("xinzi/delete", "POST", paramArray, (res) => {
                    if(res.code == 0){
                        getDataList();
                        alert('删除成功');
                    }
                });
            } else {
                alert("已取消操作");
            }
        }

        // 用户登出
        <%@ include file="../../static/logout.jsp"%>

        //修改
        function edit(id) {
            window.sessionStorage.setItem('updateId', id)
            window.location.href = "add-or-update.jsp"
        }

        //清除会重复渲染的节点
        function clear() {
            var elements = document.getElementsByClassName('useOnce');
            for (var i = elements.length - 1; i >= 0; i--) {
                elements[i].parentNode.removeChild(elements[i]);
            }
        }

        //添加
        function add() {
            window.sessionStorage.setItem("addxinzi", "addxinzi");
            window.location.href = "add-or-update.jsp"
        }

        //报表
        function graph() {
            window.location.href = "graph.jsp"
        }

        // 查看详情
        function detail(id) {
            window.sessionStorage.setItem("updateId", id);
            window.location.href = "info.jsp";
        }

    //填充级联表搜索下拉框
                                         
                     
                     
                     
                                                             
        function bumenTypesSelectSearch() {
            var bumenTypesSelectSearch = document.getElementById('bumenTypesSelectSearch');
            if(bumenTypesSelectSearch != null) {
                bumenTypesSelectSearch.add(new Option('-请选择-',''));
                if (bumenTypesOptions != null && bumenTypesOptions.length > 0){
                    for (var i = 0; i < bumenTypesOptions.length; i++) {
                            bumenTypesSelectSearch.add(new Option(bumenTypesOptions[i].indexName, bumenTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                     
        function zhiwuTypesSelectSearch() {
            var zhiwuTypesSelectSearch = document.getElementById('zhiwuTypesSelectSearch');
            if(zhiwuTypesSelectSearch != null) {
                zhiwuTypesSelectSearch.add(new Option('-请选择-',''));
                if (zhiwuTypesOptions != null && zhiwuTypesOptions.length > 0){
                    for (var i = 0; i < zhiwuTypesOptions.length; i++) {
                            zhiwuTypesSelectSearch.add(new Option(zhiwuTypesOptions[i].indexName, zhiwuTypesOptions[i].codeIndex));
                    }
                }
            }
        }
                                         
                                        
    //填充本表搜索下拉框
             
                                                        
    //查询级联表搜索条件所有列表
            function bumenTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=bumen_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        bumenTypesOptions = res.data.list;
                    }
                });
            }
            function zhiwuTypesSelect() {
                //填充下拉框选项
                http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=zhiwu_types", "GET", {}, (res) => {
                    if(res.code == 0){
                        zhiwuTypesOptions = res.data.list;
                    }
                });
            }

    //查询当前表搜索条件所有列表










        $(document).ready(function () {
            //激活翻页按钮
            $('#tableId_previous').attr('class', 'paginate_button page-item previous')
            $('#tableId_next').attr('class', 'paginate_button page-item next')
            //隐藏原生搜索框
            $('#tableId_filter').hide()
            //设置右上角用户名
            $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
            //设置项目名
            $('.sidebar-header h3 a').html(projectName)
            setMenu();
            init();

            //查询级联表的搜索下拉框
            bumenTypesSelect();
            zhiwuTypesSelect();

            //查询当前表的搜索下拉框
            getDataList();

        //级联表的下拉框赋值
                                                 
                         
                         
                         
                                                                         
            bumenTypesSelectSearch();
                         
            zhiwuTypesSelectSearch();
                                                 
                                                
        //当前表的下拉框赋值
                                     
                                                                                                                                                                        
        <%@ include file="../../static/myInfo.js"%>
    });
</script>
</body>

</html>
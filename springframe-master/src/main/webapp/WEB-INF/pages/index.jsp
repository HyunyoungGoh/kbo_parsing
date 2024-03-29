<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>KBO Article Generator | Index</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/resources/assets/bootstrap-3.3.4/css/bootstrap.min.css">

    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet"
          type="text/css">
    <link href="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/font-awesome/css/font-awesome.min.css"
          rel="stylesheet" type="text/css">
    <link href="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/simple-line-icons/simple-line-icons.min.css"
          rel="stylesheet" type="text/css">
    <link href="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/bootstrap/css/bootstrap.min.css"
          rel="stylesheet" type="text/css">
    <link href="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/uniform/css/uniform.default.css"
          rel="stylesheet" type="text/css">
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="/resources/assets/metronic_v3.3.0/theme/assets/admin/pages/css/timeline.css" rel="stylesheet"
          type="text/css">
    <link rel="stylesheet" type="text/css"
          href="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/bootstrap-datepicker/css/datepicker3.css">
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="/resources/assets/metronic_v3.3.0/theme/assets/global/css/components.css" rel="stylesheet"
          type="text/css">
    <link href="/resources/assets/metronic_v3.3.0/theme/assets/global/css/plugins.css" rel="stylesheet" type="text/css">
    <link href="/resources/assets/metronic_v3.3.0/theme/assets/admin/layout3/css/layout.css" rel="stylesheet"
          type="text/css">
    <link href="/resources/assets/metronic_v3.3.0/theme/assets/admin/layout3/css/themes/default.css" rel="stylesheet"
          type="text/css" id="style_color">
    <link href="/resources/assets/css/index.css" rel="stylesheet" type="text/css">
    <link href="/resources/assets/css/calendar.css" rel="stylesheet" type="text/css">
    <!-- END THEME STYLES -->
    <%--BEGIN INDEX_PAGE SCRIPT--%>
    <script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script type="text/javascript" src="/resources/assets/javascript/scroll.js"></script>
    <script type="text/javascript" src="/resources/assets/javascript/index.js"></script>
    <%--END INDEX_PAGE SCRIPT--%>

</head>
<jsp:include page="header.jsp"/>
<!-- BEGIN PAGE CONTAINER -->
<div class="page-container">
    <!-- BEGIN PAGE HEAD -->
    <div class="page-head">
        <div class="container">
            <!-- BEGIN PAGE TITLE -->
            <div class="page-title">
                <h1>Introduction
                    <small>Who is Mr.Writer?</small>
                </h1>
            </div>
            <!-- END PAGE TITLE -->
        </div>
    </div>
    <!-- END PAGE HEAD -->
    <!-- BEGIN PAGE CONTENT -->
    <div class="page-content">
        <div class="container">
            <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                            <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                            Widget settings form goes here
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn blue">Save changes</button>
                            <button type="button" class="btn default" data-dismiss="modal">Close</button>
                        </div>
                    </div>
                    <!-- /.modal-content -->
                </div>
                <!-- /.modal-dialog -->
            </div>
            <!-- /.modal -->
            <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
            <!-- BEGIN PAGE BREADCRUMB -->
            <ul class="page-breadcrumb breadcrumb">
                <li>
                    <a href="#">Home</a><i class="fa fa-circle"></i>
                </li>
                <li class="active">
                    Mr.Writer
                </li>
            </ul>
            <!-- END PAGE BREADCRUMB -->

            <!-- BEGIN PAGE CONTENT INNER -->
            <div class="portlet light">
                <div class="portlet-body">
                    <div class="row">
                        <!-- Introduce -->
                        <div class="col-md-12" >
                            <div class="col-md-4" align="center">
                                <br/>
                                <a><img src="/resources/images/logo.png" alt="logo" class="logo_img"></a>
                            </div>
                            <div class="col-md-8" align="left">
                                <div class="explain">
                                    <h1>Mr.Writer</h1><br/>
                                    <p>Mr.Writer은 KBO 홈페이지에서 제공하는 야구경기기록 데이트럴 파싱 및 분석하여</p>
                                    <p>[의사결정트리]를 생성하고 이를 통해 야구기사를 자동적으로 작성할 수 있다</p>
                                    <p>서두의 문장을 결정하고, 이를 통해 본론에 나올 문장구성들을 재조정한다</p>
                                    <p>생성된 기사는 페이스북 계적 "Mr Writer LinkLab" 및 본 웹 페이지로 자동 등록된다</p>
                                </div>
                            </div>
                            <a href="/"></a>
                        </div>
                        <!-- phone & Com img -->
                        <div class="col-md-1"></div>
                        <div class="col-md-11" align="center">
                            <br/>
                            <a><img src="/resources/images/page.png" class="big_img"></a>
                        </div>
                        <!-- Arrow -->
                        <div class="col-md-12" align="center">
                            <br/><br/>
                            <div class="hover1 effect1">
                                <a onclick="kuisin('testdiv'); return false;"><img src="/resources/images/arrow.png"></a>
                            </div>
                            <br/>
                            <!-- Hidden Page -->
                            <div id="testdiv" style="display:none">
                                <br/>
                                <a><img src="/resources/images/structure.png" class="big_img"></a>
                                <br/><br/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END PAGE CONTENT INNER -->
        </div>
    </div>
    <!-- END PAGE CONTENT -->
</div>
<!-- END PAGE CONTAINER -->
<!-- BEGIN PRE-FOOTER -->
<div class="page-prefooter">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                <h2>About</h2>
                <p>All of the articles made by MrWriter BOT</p>
            </div>
            <div class="col-md-3 col-sm-6 col-xs12 footer-block">

            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 footer-block">

            </div>
            <div class="col-md-3 col-sm-6 col-xs-12 footer-block">
                <h2>Contacts</h2>
                <address class="margin-bottom-40">
                    Phone: 010 3660 0908<br>
                    Email: <a href="mailto:gohyunyoung98@gmail.com">gohyunyoung98@gmail.com</a>
                </address>
            </div>
        </div>
    </div>
</div>
<!-- END PRE-FOOTER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">
    <div class="container">
        2014 © Metronic. All Rights Reserved.
    </div>
</div>
<div class="scroll-to-top" style="display: none;">
    <i class="icon-arrow-up"></i>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/respond.min.js"></script>
<script src="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/excanvas.min.js"></script>
<![endif]-->

<%--<script src="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/jquery-1.11.0.min.js" type="text/javascript"></script>--%>
<%--<script src="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>--%>
<!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
<script src="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"
        type="text/javascript"></script>
<script src="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/bootstrap/js/bootstrap.min.js"
        type="text/javascript"></script>
<script src="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
        type="text/javascript"></script>
<script src="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
        type="text/javascript"></script>
<script src="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/jquery.blockui.min.js"
        type="text/javascript"></script>
<script src="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/jquery.cokie.min.js"
        type="text/javascript"></script>
<script src="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/uniform/jquery.uniform.min.js"
        type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript"
        src="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript"
        src="/resources/assets/metronic_v3.3.0/theme/assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="/resources/assets/metronic_v3.3.0/theme/assets/global/scripts/metronic.js" type="text/javascript"></script>
<script src="/resources/assets/metronic_v3.3.0/theme/assets/admin/layout3/scripts/layout.js"
        type="text/javascript"></script>
<script src="/resources/assets/metronic_v3.3.0/theme/assets/admin/layout3/scripts/demo.js"
        type="text/javascript"></script>
<script src="/resources/assets/metronic_v3.3.0/theme/assets/admin/pages/scripts/components-pickers.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN CUSTOM SCRIPTS -->
<script src="/resources/assets/javascript/index.js"></script>
<!-- END CUSTOM SCRIPTS -->
<script>
    jQuery(document).ready(function () {
        // initiate layout and plugins
        Metronic.init(); // init metronic core components
        Layout.init(); // init current layout
        Demo.init(); // init demo features
        ComponentsPickers.init();
    });
</script>
<!-- END JAVASCRIPTS -->
<!-- END BODY -->
</body>
</html>
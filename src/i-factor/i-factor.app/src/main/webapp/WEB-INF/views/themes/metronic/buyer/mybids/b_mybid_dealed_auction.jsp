﻿<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/global.jsp"%>
<%@ include file="/WEB-INF/views/themes/metronic/include/i18n.jsp"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->

<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8" />
    <title><fmt:message key="common.topnav.title"/></title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <!-- <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" /> -->
    <link rel="stylesheet" href="${base}/static/libs/fonts.googleapis/fonts.googleapis.css">
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet" />
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/uniform/css/uniform.default.css" rel="stylesheet" />
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap-switch/css/bootstrap-switch.min.css" rel="stylesheet" />
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery-ui/jquery-ui.min.css" rel="stylesheet" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/select2/select2.css" />
    <link rel="stylesheet" type="text/css" href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/extensions/Scroller/css/dataTables.scroller.min.css" />
    <link rel="stylesheet" type="text/css" href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/extensions/ColReorder/css/dataTables.colReorder.min.css" />
    <link rel="stylesheet" type="text/css" href="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.css" />
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/css/components.css" rel="stylesheet" />
    <link href="${base}/static/libs/metronic/3.3.0/assets/global/css/plugins.css" rel="stylesheet" />
    <link href="${base}/static/themes/metronic/css/layout.css" rel="stylesheet" />
    <link id="style_color" href="${base}/static/themes/metronic/css/themes/light2.css" rel="stylesheet" />
    <link href="${base}/static/themes/metronic/css/flaticon/flaticon.css" rel="stylesheet" />
    <link href="${base}/static/themes/metronic/css/custom.css" rel="stylesheet" />
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="${base}/static/themes/metronic/img/home/policy_1.png" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<!-- DOC: Apply "page-header-fixed-mobile" and "page-footer-fixed-mobile" class to body element to force fixed header or footer in mobile devices -->
<!-- DOC: Apply "page-sidebar-closed" class to the body and "page-sidebar-menu-closed" class to the sidebar menu element to hide the sidebar by default -->
<!-- DOC: Apply "page-sidebar-hide" class to the body to make the sidebar completely hidden on toggle -->
<!-- DOC: Apply "page-sidebar-closed-hide-logo" class to the body element to make the logo hidden on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-hide" class to body element to completely hide the sidebar on sidebar toggle -->
<!-- DOC: Apply "page-sidebar-fixed" class to have fixed sidebar -->
<!-- DOC: Apply "page-footer-fixed" class to the body element to have fixed footer -->
<!-- DOC: Apply "page-sidebar-reversed" class to put the sidebar on the right side -->
<!-- DOC: Apply "page-full-width" class to the body element to have full width page without the sidebar menu -->
<body class="page-header-fixed page-quick-sidebar-over-content">
    <!-- BEGIN HEADER -->
    <div class="page-header navbar navbar-fixed-top">
        <!-- BEGIN HEADER INNER -->
        <div class="page-header-inner">
            <!-- BEGIN LOGO -->
            <div class="page-logo">
                <a href="index.html">
                    <img src="${base}/static/themes/metronic/img/entroauction_1.png" alt="logo" class="logo-default" />
                </a>
                <div class="menu-toggler sidebar-toggler hide">
                    <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
                </div>
            </div>
            <!-- END LOGO -->
            <!-- BEGIN HEADER SEARCH BOX -->
            <form class="search-form search-form-expanded" action="extra_search.html" method="GET">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search Invoice/Seller/Debtor" name="query">
                    <span class="input-group-btn">
                        <a href="javascript:;" class="btn submit"><i class="icon-magnifier"></i></a>
                    </span>
                </div>
            </form>
            <!-- END HEADER SEARCH BOX -->
            <!-- BEGIN RESPONSIVE MENU TOGGLER -->
            <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
            </a>
            <!-- END RESPONSIVE MENU TOGGLER -->
            <!-- BEGIN TOP NAVIGATION MENU -->
           <div class="top-menu">
                <ul class="nav navbar-nav pull-right">
                    <!-- BEGIN NOTIFICATION DROPDOWN -->
                    <li class="dropdown dropdown-extended dropdown-notification" id="header_notification_bar">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <i class="icon-envelope-open"></i>
                            <span class="badge badge-default">
                                <fmt:message key='bc.application.badge.default' />
                            </span>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <p>
                                    <fmt:message key='bc.application.dropdown.menu.p' />
                                </p>
                            </li>
                            <li>
                                <ul class="dropdown-menu-list scroller" style="height: 200px;">
                                    <li>
                                        <a href="#">
                                            <span class="label label-sm label-icon label-success">
                                                <i class="fa fa-plus"></i>
                                            </span>
                                             <fmt:message key='bc.application.scroller.label.success' /> <span class="time">
                                                <fmt:message key='bc.application.scroller.label.success1' />
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-sm label-icon label-danger">
                                                <i class="fa fa-bolt"></i>
                                            </span><fmt:message key='bc.application.scroller.label.danger' /><span class="time">
                                                <fmt:message key='bc.application.scroller.label.danger1' />
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-sm label-icon label-warning">
                                                <i class="fa fa-bell-o"></i>
                                            </span>
                                            <fmt:message key='bc.application.scroller.label.warning' /> <span class="time">
                                                <fmt:message key='bc.application.scroller.label.warning1' />
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="label label-sm label-icon label-info">
                                                <i class="fa fa-bullhorn"></i>
                                            </span>
                                            <fmt:message key='bc.application.scroller.label.info' /> <span class="time">
                                                <fmt:message key='bc.application.scroller.label.info1' />
                                            </span>
                                        </a>
                                    </li>
                                    <li>
                                       <a href="#">
                                            <span class="label label-sm label-icon label-danger">
                                                <i class="fa fa-bolt"></i>
                                            </span>
                                            <fmt:message key='bc.application.scroller.label.danger' /> <span class="time">
                                                <fmt:message key='bc.application.scroller.label.danger' />
                                            </span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="external">
                                <a href="#" style="color:#428bca">
                                    <fmt:message key='bc.application.dropdown.menu.external' /> <i class="m-icon-swapright icon-arrow-right" style="color:#428bca; background: none"></i>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown dropdown-language">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                            <img alt="" src="${base}/static/libs/metronic/3.3.0/assets/global/img/flags/gb.png">
                            <span class="langname"></span>
                            <i class="fa fa-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="#">
                                    <img alt="" src="${base}/static/libs/metronic/3.3.0/assets/global/img/flags/vn.png"> <fmt:message key='common.lang.vi' />
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img alt="" src="${base}/static/libs/metronic/3.3.0/assets/global/img/flags/cn.png"> <fmt:message key='common.lang.simpchinese' />
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img alt="" src="${base}/static/libs/metronic/3.3.0/assets/global/img/flags/cn.png"> <fmt:message key='common.lang.Tradchinese' />
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img alt="" src="${base}/static/libs/metronic/3.3.0/assets/global/img/flags/nl.png"> <fmt:message key='common.lang.bahasa' />
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img alt="" src="${base}/static/libs/metronic/3.3.0/assets/global/img/flags/id.png"> <fmt:message key='common.lang.nederlands' />
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <img alt="" src="${base}/static/libs/metronic/3.3.0/assets/global/img/flags/ro.png"> <fmt:message key='common.lang.ramana' />
                                </a>
                            </li>
                        </ul>
                    </li>
                    <!-- END NOTIFICATION DROPDOWN -->
                    <!-- BEGIN USER LOGIN DROPDOWN -->
                    <li class="dropdown dropdown-user">
                        <a href="#" class="dropdown-toggle if-dropdown-user" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                 			<img alt="" class="img-circle hide1" src="${base}/static/themes/metronic/img/avatar3_small.jpg" />
                			 <span class="username username-hide-on-mobile">
                     		<fmt:message key='bc.application.dropdown.user.mobile' />
                			 </span>
                 			<i class="fa fa-angle-down"></i>
             			</a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="${base}/buyer/profile/view">
                         			<i class="icon-user"></i> <fmt:message key='bc.application.dropdown.menu.icon.user' />
                    	 		</a>
                            </li>
                            <li>
                            <li>
                                <a href="inbox.html">
                                     <i class="icon-envelope-open"></i> <fmt:message key='bc.application.inbox.html' /> &nbsp;&nbsp;&nbsp;&nbsp;<span class="badge badge-danger">
                             			<fmt:message key='bc.application.inbox.html1' />
                         			</span>
                                </a>
                            </li>
                            <li class="divider">
                            </li>
                            <li>
                                <a href="${base}/logout">
                         			<i class="icon-key"></i> <fmt:message key='bc.application.login.html' />
                     			</a>
                            </li>
                        </ul>
                    </li>
                    <!-- END USER LOGIN DROPDOWN -->
                    <!-- BEGIN QUICK SIDEBAR TOGGLER -->
                    <li class="dropdown dropdown-extended last">
                        <a href="${base}/logout" class="dropdown-toggle if-logout">
                            <i class="icon-logout"></i>
                        </a>
                    </li>
                    <!-- END QUICK SIDEBAR TOGGLER -->
                </ul>
            </div>
            <!-- END TOP NAVIGATION MENU -->
        </div>
        <!-- END HEADER INNER -->
    </div>
    <!-- END HEADER -->
    <div class="clearfix">
    </div>
    <!-- BEGIN CONTAINER -->
    <div class="page-container">
        <!-- BEGIN SIDEBAR -->
         <div class="page-sidebar-wrapper">
	    <!-- DOC: Set data-auto-scroll="false" to disable the sidebar from auto scrolling/focusing -->
	    <!-- DOC: Change data-auto-speed="200" to adjust the sub menu slide up/down speed -->
	    <div class="page-sidebar navbar-collapse collapse">
	      <!-- BEGIN SIDEBAR MENU -->
	      <ul class="page-sidebar-menu " data-auto-scroll="true" data-slide-speed="200">
	        <!-- DOC: To remove the sidebar toggler from the sidebar you just need to completely remove the below "sidebar-toggler-wrapper" LI element -->
	        <li class="sidebar-toggler-wrapper">
	          <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
	          <div class="sidebar-toggler">
	          </div>
	          <!-- END SIDEBAR TOGGLER BUTTON -->
	        </li>
	        <!-- BEGIN ACCOUNT MENU GROUP -->
			  <%@ include file="/WEB-INF/views/themes/metronic/include/menu.jsp"%>
	        <!-- END ACCOUNT MENU GROUP -->
	
	        <!-- BEGIN FRONTEND THEME LINKS -->
	        <!-- END FRONTEND THEME LINKS -->
	      </ul>
	      <!-- END SIDEBAR MENU -->
	    </div>
	  </div>
        <!-- END SIDEBAR -->
        <!-- BEGIN CONTENT -->
        <div class="page-content-wrapper">
            <div class="page-content">

                <!-- BEGIN PAGE HEADER-->
                <div class="page-bar">
                    <ul class="page-breadcrumb">
                        <li>
                            <a href="#"><fmt:message key='buyer.mybid.dealed.page.header.myBids' /></a>
                            <i class="fa fa-angle-right"></i>
                        </li>
                        <li>
                            <a href="#"><fmt:message key='buyer.mybid.dealed.page.header.dealedAuction' /></a>
                        </li>
                    </ul>
                </div>
                <h5 class="page-title">
                    <b><fmt:message key='buyer.mybid.dealed.page.title.myBids' />&nbsp;&nbsp;&nbsp;<span id="invoiceNum"></span></b>
                </h5>
                <h5 class="page-title">
                    <small><b><fmt:message key='seller.market.list.page.auctionStatus' />:&nbsp;</b><span style="color: #d64635"><b><fmt:message key='buyer.mybid.dealed.page.Status' /></b>&nbsp;<i class="icon-lock"></i>&nbsp;&nbsp;<fmt:message key='buyer.mybid.dealed.page.statusExplain' />.</span></small>
                </h5>
                <!-- END PAGE HEADER-->
                <!-- BEGIN PAGE CONTENT-->
                <form class="form-inline" id="formQuery" name="listform" method="post" role="form">
                <div class="clearfix">
                    <div class="panel panel-success">
                        <div class="panel-heading" style="padding: 5px 5px;">
                            <h3 class="if-panel-title bold"><fmt:message key='seller.market.list.page.panel.heading' /></h3>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-sm-6 col-xs-6 text-left bold"><fmt:message key='seller.market.list.page.panel.body.financing' /></div>
                                <div class="col-sm-6 col-xs-6 text-right"><a href="#" id="toggle_link" class="if_toggle if_show" onclick="toggle('More&nbsp;&nbsp;', 'Less&nbsp;&nbsp;','col-sm-offset-5 col-sm-1 col-xs-12 text-right','col-sm-offset-3 col-sm-1 col-xs-12 text-right');">More&nbsp;&nbsp;<i class="icon-arrow-down"></i></a></div>
                            </div>
                            <div class="row">
                                <!-- Begin Invoice Amount -->
                                <div class="col-sm-2 col-xs-12 text-left if-div-input-sm"><a href="#"><fmt:message key='seller.market.list.page.panel.body.invoiceAmount' /></a></div>
                                <div class="col-sm-2 col-xs-12 ">
                                    <input type="text" class="form-control if-input-sm if-div-input-sm" id="finInvAmountFrom" name="finInvAmountFrom" placeholder="From (VND)">
                                </div>
                                <div class="col-sm-2 col-xs-12 ">
                                    <input type="text" class="form-control if-input-sm if-div-input-sm" id="finInvAmountTo" name="finInvAmountTo" placeholder="To (VND)">
                                </div>
                                <!-- End Invoice Amount -->
                                <!-- Begin Accepted Advance -->
                                <div class="col-sm-2 col-xs-12 text-left if-div-input-sm"><a href="#"><fmt:message key='seller.myinvoice.dealed.page.panel.body.acceptedAdvance' /> &nbsp;</a> </div>
                                <div class="col-sm-2 col-xs-12">
                                    <input type="text" class="form-control if-input-sm if-div-input-sm" id="acceptedAdvanceFrom" name="acceptedAdvanceFrom" placeholder="From (%)">
                                </div>
                                <div class="col-sm-2 col-xs-12">
                                    <input type="text" class="form-control if-input-sm if-div-input-sm" id="acceptedAdvanceTo" name="acceptedAdvanceTo" placeholder="To (%)">
                                </div>
                                <!-- End Accepted Advance -->
                                <!-- Begin Accepted Interest -->
                                <div class="col-sm-2 col-xs-12 text-left  if-div-input-sm"><a href="#"><fmt:message key='seller.myinvoice.dealed.page.panel.body.acceptedInterest' /> &nbsp;</a></div>
                                <div class="col-sm-2 col-xs-12 ">
                                    <input type="text" class="form-control if-input-sm if-div-input-sm" id="acceptedInterestFrom" name="acceptedInterestFrom" placeholder="From (%)">
                                </div>
                                <div class="col-sm-2 col-xs-12 ">
                                    <input type="text" class="form-control if-input-sm if-div-input-sm" id="acceptedInterestTo" name="acceptedInterestTo" placeholder="To (%)">
                                </div>
                                <!-- End Accepted Interest -->                                
                                <div class="col-sm-12 col-xs-12 text-left bold if_filter_hidden"><fmt:message key='seller.market.list.page.panel.body.dataInformation' /></div>
                                <!-- Begin hidden fields -->
                                <!-- Begin  Auction close date  -->                                
                                <div class="col-sm-2 col-xs-12 text-left  if-div-input-sm if_filter_hidden"><a href="#"> <fmt:message key='seller.myinvoice.dealed.page.panel.body.auctionClosedDate' /> </a></div>
                                <div class="col-sm-2 col-xs-12 if_filter_hidden">
                                    <input type="text" class="form-control if-input-sm if-div-input-sm date-picker" id="auctionClosedDateFrom" name="auctionClosedDateFrom" value="From date" readonly="" />
                                </div>
                                <div class="col-sm-2 col-xs-12 if_filter_hidden">
                                    <input type="text" class="form-control if-input-sm if-div-input-sm date-picker" id="auctionClosedDateTo" name="auctionClosedDateTo" value="To date" readonly="" />
                                </div>
                                <!-- End  Auction close date  -->
                                <!-- Begin Expected settlement date -->
                                <div class="col-sm-2 col-xs-12 text-left  if-div-input-sm if_filter_hidden"><a href="#"><fmt:message key='invoice.submit.form.field.finExpPmtDate' /></a></div>
                                <div class="col-sm-2 col-xs-12 if_filter_hidden">
                                    <input type="text" class="form-control if-input-sm if-div-input-sm date-picker" id="finExpPmtDateFrom" name="finExpPmtDateFrom" value="From date" readonly="" />
                                </div>
                                <div class="col-sm-2 col-xs-12 if_filter_hidden">
                                    <input type="text" class="form-control if-input-sm if-div-input-sm date-picker" id="finExpPmtDateTo" name="finExpPmtDateTo" value="To date" readonly="" />
                                </div>
                                <!-- End Expected settlement date -->                               
                                <div class="col-sm-12 col-xs-12 text-left bold if_filter_hidden"><fmt:message key='seller.market.list.page.panel.body.invoiceInformation' /></div>
                                <div class="col-sm-2 col-xs-12 text-left  if-div-input-sm if_filter_hidden"><fmt:message key='seller.myinvoice.dealed.page.table.th.status' /></div>
                                <!-- Begin 25% -->
                                <div class="col-sm-2 col-xs-12 text-left  if-div-input-sm if_filter_hidden"><a href="#">25% &nbsp;<span><input type="checkbox" id="status1" name="status" value="25%"></span></a></div>
                                <!-- End 25% -->
                                <!-- Begin 50% -->
                                <div class="col-sm-2 col-xs-12 text-left  if-div-input-sm if_filter_hidden"><a href="#">50% &nbsp;<span><input type="checkbox" id="status2" name="status" value="50%"></span></a></div>
                                <!-- End 50%  -->
                                <!-- Begin 75% -->
                                <div class="col-sm-2 col-xs-12 text-left  if-div-input-sm if_filter_hidden"><a href="#">75% &nbsp;<span><input type="checkbox" id="status3" name="status" value="75%"></span></a></div>
                                <!-- End 75% -->
                                <!-- End hidden fields -->                              
                                <div class="col-sm-offset-5 col-sm-1 col-xs-12 text-right" id="ifFilterButton">
                                    <button type="submit" class="btn if-btn"><fmt:message key='seller.market.list.page.panel.button.apply' /></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="portlet box">
                            <div class="">
                                <table class="table table-striped table-bordered table-hover" id="content_table">
                                    <thead>
                                        <tr>
                                            <th style="width:20px">
                                                <fmt:message key='invoice.list.thead.no' />
                                            </th>
                                            <th style="width:60px">
                                                <fmt:message key='seller.myinvoice.dealed.page.table.th.status' />
                                            </th>
                                            <th style="width:60px">
                                                <fmt:message key='invoice.list.thead.biddinghistory' />
                                            </th>
                                            <th style="width:80px">
                                                <fmt:message key='seller.myinvoice.dealed.page.table.th.auctionClosedDate' />
                                            </th>
                                            <th style="width:80px">
                                                <fmt:message key='invoice.list.thead.stickerId' />
                                            </th>
                                            <th style="width:150px">
                                                <fmt:message key='invoice.list.thead.invoiceAmount' />
                                            </th>
                                            <th style="width:80px">
                                                <fmt:message key='invoice.list.thead.invoiceSellerId' />
                                            </th>
                                            <th style="width:250px">
                                                <fmt:message key='invoice.list.thead.invoiceDetor' />
                                            </th>
                                            <th style="width:80px">
                                                <fmt:message key='seller.myinvoice.dealed.page.panel.body.acceptedAdvance' />
                                            </th>
                                            <th style="width:80px">
                                                <fmt:message key='seller.myinvoice.dealed.page.panel.body.acceptedInterest' />
                                            </th>
                                            <th style="width:100px" class="if-tooltip">
                                                <a data-toggle="tooltip white" data-original-title=" Expected total advance amount to be paid" style="color:white"><fmt:message key='buyer.mybid.dealed.page.table.th.etaatbp' />&nbsp;<i class="icon-question"></i></a>
                                            </th>
                                            <th style="width:20px">
                                                <fmt:message key='invoice.submit.form.field.finExpPmtDate' />
                                            </th>
                                            <th style="width:100px" class="if-tooltip">
                                                <a data-toggle="tooltip white" data-original-title=" Expected total recievable amount after settlement" style="color:white"><fmt:message key='buyer.mybid.dealed.page.table.th.etaraas' />&nbsp;<i class="icon-question"></i></a>
                                            </th>
                                            <th style="width:100px" class="if-tooltip">
                                                <a  data-toggle="tooltip white" data-original-title="Expected net return after settlement" style="color:white"><fmt:message key='buyer.mybid.dealed.page.table.th.enras' />&nbsp;<i class="icon-question"></i></a>
                                            </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      <c:if test="${not empty page.content}">
				                      <c:forEach var="item" items="${page.content}" varStatus="status">
				                        <tr>
				                          <td>${status.index + 1}</td> 
				                          <td><button type="button" class="btn-small btn-circle if-tooltip" style="background-color:#00ff21">
                                              <a style="color:#000000" href="#" data-toggle="tooltip white" data-original-title="<fmt:message key="${item.flowStatus}_V1"/>:&nbsp;<fmt:formatDate value='${item.updateTime}' pattern='MM/dd/yyyy'/>">25%</a>
                                              </button>
				                          </td>
				                          <td>
				                            <a href="javascript:;" target="main-iframe">
				                          	  <button type="button" class="btn-small btn-info btn-circle" onclick="window.open('${base}/buyer/auction/mybiddealed/biddhistory/${item.id}');"><i class="fa fa-list"></i></button>
				                          	</a>
				                          </td>
				                          <td><fmt:formatDate value='${item.finInvIssDate}' pattern='MM/dd/yyyy'/></td>
				                          <td>
				                          	<a href="${base}/buyer/auction/dealed/detail/${item.id}">
			                          	      ${item.finStickerId}
			                           	    </a> 
				                          </td>
				                          <td><fmt:formatNumber value="${item.finInvAmount}" type="number" />&nbsp;VND</td>
				                          <td>
				                          	<a href="${base}/buyer/profile/seller/${item.sellerId}">
				                          	   ${item.sellerId}
				                           	</a>
				                            </td>
				                            <td>
				                          	<a href="${base}/buyer/profile/debtorById/${item.id}">
				                          	   ${item.debtorName}
				                           	</a>
				                          </td>
				                          <td>${item.bestBuyerAdv}&nbsp;%</td>
				                          <td>${item.bestBuyerInt }&nbsp;%</td>
				                          <c:set var="saccanoffrtsienaatbrtf" value="${item.finInvAmount*item.bestBuyerAdv/100*0.015}" />
				                          <c:set var="saccanoffrtsietaatbp" value="${item.finInvAmount*item.bestBuyerAdv/100+saccanoffrtsienaatbrtf}" />
				                          <td><fmt:formatNumber value="${saccanoffrtsietaatbp}" type="number" />&nbsp;VND</td>
				                          <td><fmt:formatDate value='${item.finExpPmtDate}' pattern='MM/dd/yyyy'/></td>
				                          <c:set var="interval" value="${item.finExpPmtDate.time - item.startDate.time}"/>
				                          <c:set var="days1" value="${interval/1000/60/60/24}"/>
				                          <fmt:formatNumber var="days2" value="${days1-2}" pattern="#"/>
				                          <c:set var="saccanoffrtsieraasif" value="${item.finInvAmount*item.bestBuyerAdv/100*item.bestBuyerInt/100*(days2/360)}" />
				                          <c:set var="saccanoffrtsietaraas" value="${item.finInvAmount*item.bestBuyerAdv/100+saccanoffrtsieraasif}" />
				                          <td><fmt:formatNumber  value="${saccanoffrtsietaraas}" type="number" />&nbsp;VND</td>
				                          <c:set var="saccanoffrtsienras" value="${saccanoffrtsieraasif-saccanoffrtsienaatbrtf}" />
				                          <td><fmt:formatNumber  value="${saccanoffrtsienras}" type="number" />&nbsp;VND</td>
				                        </tr>
				                      </c:forEach>
				                      </c:if>
                                    </tbody>
                                    <tfoot>
			                          <%-- <tr>
			                            <td colspan="14">
			                             <input type="hidden" name="pageNumber" value="${page.number}" />
			                             <input type="hidden" name="pageSize" value="${page.size}" />
			                            </td>
			                          </tr> --%>
			                        </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                </form>
                <!-- END PAGE CONTENT-->
            </div>
        </div>
        <!-- END CONTENT -->
    </div>
    <!-- END CONTAINER -->
    <!-- BEGIN FOOTER -->
    <div class="page-footer">
        <div class="page-footer-inner text-center">
            <fmt:message key='buyer.apply.form.footer.copyright' />
        </div>
        <div class="scroll-to-top">
            <i class="icon-arrow-up"></i>
        </div>
    </div>
    <!-- END FOOTER -->
    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- BEGIN CORE PLUGINS -->
    <!--[if lt IE 9]>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/respond.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/excanvas.min.js"></script>
    <![endif]-->
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery-1.11.0.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery-migrate-1.2.1.min.js"></script>
    <!-- IMPORTANT! Load jquery-ui-1.10.3.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery-ui/jquery-ui-1.10.3.custom.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery.blockui.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/jquery.cokie.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/uniform/jquery.uniform.min.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
    <script src="${base}/static/themes/metronic/js/ui-alert-dialog-api.js"></script>
    <!-- END CORE PLUGINS -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <!--<script src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>-->
    <script type="text/javascript" src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/media/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/extensions/TableTools/js/dataTables.tableTools.min.js"></script>
    <script type="text/javascript" src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/extensions/ColReorder/js/dataTables.colReorder.min.js"></script>
    <script type="text/javascript" src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/extensions/Scroller/js/dataTables.scroller.min.js"></script>
    <script type="text/javascript" src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/datatables/plugins/bootstrap/dataTables.bootstrap.js"></script>
    <script type="text/javascript" src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootstrap-pager/bootstrapPager.min.js"></script>
    <script type="text/javascript" src="${base}/static/libs/metronic/3.3.0/assets/global/plugins/bootbox/bootbox.min.js"></script>
    <!-- END PAGE LEVEL PLUGINS -->

    <script src="${base}/static/libs/metronic/3.3.0/assets/global/scripts/metronic.js"></script>
    <script src="${base}/static/libs/metronic/3.3.0/assets/admin/pages/scripts/components-pickers.js"></script>
    <script src="${base}/static/themes/metronic/js/layout.js"></script>
    <script src="${base}/static/themes/metronic/js/quick-sidebar.js"></script>
    <script src="${base}/static/themes/metronic/js/ifactor.js"></script>
    <script>
        jQuery(document).ready(function () {
            Metronic.init(); // init metronic core components
            Layout.init(); // init current layout
            ComponentsPickers.init();
            UIAlertDialogApi.init();
            $('#content_table').DataTable({
                searching: false,
                "order": [[1, "desc"]],
                //      "sDom": 'tip',
                "aoColumnDefs": [{ 'bSortable': false, 'aTargets': [0,2] }],
                "fnDrawCallback": function (oSettings) {
                    if (oSettings.bSorted || oSettings.bFiltered) {
                    	if(oSettings.aiDisplay.length<2){
                    		$('#invoiceNum').html(oSettings.aiDisplay.length+" Invoice");
                    		}else{
                    	$('#invoiceNum').html(oSettings.aiDisplay.length+" Invoices");
                    	}
                        for (var i = 0, iLen = oSettings.aiDisplay.length ; i < iLen ; i++) {
                            $('td:eq(0)', oSettings.aoData[oSettings.aiDisplay[i]].nTr).html(i + 1);
                        }
                    }
                },
                iDisplayLength:15,
                pagingType: "bootstrapPager",
                pagerSettings: {
                    textboxWidth: 60,
                    firstIcon: "fa fa-angle-double-left",
                    previousIcon: "fa fa-angle-left",
                    nextIcon: "fa fa-angle-right",
                    lastIcon: "fa  fa-angle-double-right",
                    searchOnEnter: true
                }
            });
        });
        
        var app = {
    			base : '${base}',
    			version : '${version.app}',
    			loginName : '${loginUser.loginName}',
    			selfUrl : '${self.url}',
    			successSavedMsg : "<fmt:message key='buyer.apply.message.successSaved'/>",
    			successUpdatedMsg : "<fmt:message key='buyer.apply.message.successUpdated'/>",
    			successSubmittedMsg : "<fmt:message key='buyer.apply.message.successSubmitted'/>",
    			successRedirectMsg : "<fmt:message key='buyer.apply.message.successRedirectMsg'/>"
    		};
    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>

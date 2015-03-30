<%@ page contentType="text/html;charset=UTF-8" %>
<%--
# Seller
--%>
<%@ include file="/WEB-INF/views/include/global.jsp"%>
<c:set target="${self}" property="title"><fmt:message key='report.buyerDetailedReport'/></c:set>
<c:set target="${self.css}" property="main">
    <style type="text/css">
    .table-bordered,
    .table-bordered>thead>tr>th, 
    .table-bordered>tbody>tr>th, 
    .table-bordered>tfoot>tr>th, 
    .table-bordered>thead>tr>td, 
    .table-bordered>tbody>tr>td, 
    .table-bordered>tfoot>tr>td {
      border: 1px solid #000;
    }
    </style>
</c:set>
<c:set target="${self.js}" property="main">
    <script type="text/javascript">
    </script>
</c:set>

<c:set target="${self.content}" property="main">
              <div id="form-title"><c:out value="${form_title}" /></div>
              <div id="form-main">
                
                  <div class="clearfix row" style="margin-top:10px;">
                    <div class="col-sm-12">
                      <table class="table table-bordered">
                        <thead>
                          <tr style="background:#bdd6ee;">
                            <th><fmt:message key='report.buyer.detail.thead.no'/></th>
                            <th><fmt:message key='report.buyer.detail.thead.buyerId'/></th>
                            <th><fmt:message key='report.buyer.detail.thead.region'/></th>
                            <th><fmt:message key='report.buyer.detail.thead.noOfBidsPlaced'/></th>
                            <th><fmt:message key='report.buyer.detail.thead.noOfBidAccepted'/></th>
                            <th><fmt:message key='report.buyer.detail.thead.percentOfSuccessfulBid'/></th>
                            <th><fmt:message key='report.buyer.detail.thead.totalReturn'/></th>
                            <th><fmt:message key='report.buyer.detail.thead.weightedAveragePercentFinancing'/></th>
                            <th><fmt:message key='report.buyer.detail.thead.weightedAverageInterestRate'/></th>
                          </tr>
                        </thead>
                        <tbody>
                        <%-- <c:if test="${not empty page.content}">
                          <c:forEach var="item" items="${page.content}" varStatus="status">    
                          <tr>
                            <td>${item.sellerCompanyName }</td>
                            <td>${item.debtorName }</td>
                            <td>${item.finInvAmount }</td>
                            <td>${item.noOfOffers }</td>
                            <td>${item.curBestOffrInt }</td>
                            <td>${item.bestBuyerAdv }</td>
                            <td>${item.bestBuyerInt }</td>
                            <td>${item.rating}</td>
                            <td>${item.flowStatus }</td>
                            <td>${item.bestBuyerInt }</td>
                            <td>${item.rating}</td>
                            <td>${item.flowStatus }</td>
                          </tr>
                          </c:forEach>
                        </c:if> --%>
                        <c:if test="${not empty details}">
                        <c:forEach var="detail" items="${details}" varStatus="status">
                        <tr>
                          <td><c:out value="${status.index+1}"/></td>
                          <td>${detail[0]}</td>
                          <td>${detail[1]}</td>
                          <td>${detail[2]}</td>
                          <td>${detail[3]}</td>
                          <td>${detail[4]}</td>
                          <td>${detail[5]}</td>
                          <td>${detail[6]}</td>
                          <td>${detail[7]}</td>                     
                        </tr>
                        </c:forEach>
                        </c:if>
                        </tbody>
                        <tfoot>
                        <tr>
                          <td><fmt:message key='report.footer.total'/></td>
                          <td></td>
                          <td></td>
                          <td>${detailsSum["sumNoOfBidsPlaced"]}</td>
                          <td>${detailsSum["sumNoOfBidAccepted"]}</td>
                          <td></td>
                          <td>${detailsSum["sumTotalReturn"]}</td>
                          <td></td>
                          <td></td>
                        </tr>
                        </tfoot>
                      </table>
                    </div>
                </div>
              </div>
</c:set>
<c:set target="${self.content}" property="free">
</c:set>

<%@ include file="/WEB-INF/views/themes/default/include/main.jsp"%>

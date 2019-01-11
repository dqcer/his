<%@page contentType="text/html; charset=UTF-8" %>

<br />
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="paging" value="${requestScope.paging}" scope="request"/>
<c:set var="currentPageNo" value="${paging.currentPageNo}"/>
<c:set var="totalPageCount" value="${paging.totalPageCount}"/>
<c:set var="totalSize" value="${paging.totalSize>0?paging.totalSize:0}"/>

<!-- 分页js -->
<script src="${ctx}/bootstrap/js/bootstrap-paginator.js"></script>
  <script>
        var ops={
            currentPage:"${currentPageNo}",    //当前页
            totalPages:"${totalPageCount}",   //总页数
            numberOfPages:5,  //页面上最多显示的页码数
            alignment:"right",  //对齐方式
            size:"nomal" ,    //设置大小:large、nomal、small、mini
            itemTexts: function (type, page, current) {
                switch (type) {
                    case "first":
                        return "首页";
                    case "prev":
                        return "上一页";
                    case "next":
                        return "下一页";
                    case "last":
                        return "末页";
                    case "page":
                        return page;
                }
            },
            onPageClicked:function(e,orEvent,type,page){//页码点击时触发
            	 $("#currentPageNo").val(page);
            	 $("#search_form").submit();
            }
        };
        $(function(){
            $("#cutPageDiv").bootstrapPaginator(ops);
        })
    </script>
 <div id="cutPageDiv" style="float: right;margin: 0px;cursor: pointer"></div>
 <div class="pageCount" >总计${totalSize}条</div>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--
  Created by IntelliJ IDEA.
  User: gohyunyoung98
  Date: 16. 7. 25
  Time: 오후 5:19
  To change this template use File | Settings | File Templates.
  --%>
<html>
<head>
</head>
<body>
<c:set var="startIdx" value="0"/>
<c:set var="count" value="${urlCountArr[0]}"/>
<c:set var="endIdx" value="${startIdx+count}"/>
<c:set var="date" value="${article.date}"></c:set>
<c:forEach var="article" items="${articleArrayList}" varStatus="status">
    <li class=timeline id="${article.id}" hidden>
        <div class="timeline-time">
            <c:choose>
                <c:when test="${date==article.date}"></c:when>
                <c:otherwise>
            <span class="time" style='color: #303a41'>
                ${article.date.substring(4,6)}월
                ${article.date.substring(6,8)}일
                ${article.date.substring(8,article.date.length())}
            </span>
                </c:otherwise>
            </c:choose>
            <c:set var="date" value="${article.date}"></c:set>
        </div>
        <div class="timeline-icon"></div>
        <div class="timeline-body" data-name="${article.emblem}">
            <h2>${article.head}</h2>
            <div class="timeline-content">
                <img class="timeline-img pull-left"
                     src=${String.format("/resources/images/emblem_image/emblemB_%s.png",article.emblem)} alt="${article.emblem}">
                    ${article.intro}
                <br/>
                    ${article.main}
                <br/>
                    ${article.conc}
            </div>
            <div class="plusImage" >
                <a onclick="plusVideo()">
                    <img src="/resources/images/arrow.png"/>
                </a>
            </div>

            <div class="timeline-footer" style="display:none;">
                <c:if test="${count>0}">
                    <c:forEach var="urlArrayList" begin="${startIdx}" end="${endIdx-1}" items="${criticalVOD_urlArrayList}">
                        <iframe width="400px" height="250px" src="${urlArrayList.vodUrl}"></iframe>
                    </c:forEach>
                </c:if>
                <c:set var="startIdx" value="${endIdx}"/>
                <c:set var="count" value="${urlCountArr[status.index+1]}"/>
                <c:set var="endIdx" value="${startIdx+count}"/>
                <div></div>
                <div align="right">
                    <a href="${article.url}"> <i class="m-icon-swapright m-icon-white"></i><i>해당 경기 상세히 보러가기</i> </a>
                </div>
            </div>
        </div>
    </li>
</c:forEach>
</body>
</html>
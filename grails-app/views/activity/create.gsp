<%--
  Created by IntelliJ IDEA.
  User: tobias
  Date: 30/4/20
  Time: 23:17
--%>

%{--<%@ page contentType="text/html;charset=UTF-8" %>--}%
%{--Include Main Layout--}%
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="activity" args="['Creation']"/>
    </div>
    <div class="card-body">
        <g:form controller="activity" action="save">

        %{--Partial Templating--}%
            <g:render template="form"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
                <g:link controller="activity" action="index" id="${activityTId}" class="btn btn-primary"><g:message code="cancel"/></g:link>
            </div>
        </g:form>
    </div>
</div>
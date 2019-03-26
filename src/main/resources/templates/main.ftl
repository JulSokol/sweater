<#import "parts/common.ftl" as c>

<@c.page>
<div class="form-row">
<form method="get" action="/main" class="form-inline">
    <input type="text" name="filter" value="${filter!""}" placeholder="Search by tag">
    <button type="submit" class="btn btn-primary ml-2">Search</button>
</form>

<div>
    <form method="post" enctype="multipart/form-data" "><#--action="/main удалила-->
        <input type="text" name="text" placeholder="Введите сообщение"/>
        <input input type="text" name="tag" placeholder="Тег"/>
        <input type="file" name="file">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Добавить</button>
    </form>
</div>


<#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
        <div>
           <#if message.filename??>
               <img width="100px" height="100px" src="/img/${message.filename}">
           </#if>
        </div>
    </div>

<#else>
No message
</#list>
</@c.page>
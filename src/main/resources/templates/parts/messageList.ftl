<#include "security.ftl">
<#import "pager.ftl" as p>


<@p.pager url page>

<div class="card-columns" id="message-list">
<#list page.content as message>
    <div class="card my-3">
        <div>
        <#if message.filename??>
               <img width="100px" height="100px" src="/img/${message.filename}" class="card-img-top">
        </#if>
            <div class="m-2">
            </div>
            <span>${message.text}</span><br/>
            <i>#${message.tag}</i>
        </div>
        <div class="card-footer text-muted">
            <a href="/user-messages/${message.author.id}">${message.authorName}</a>
            <#if message.author.id == currentUserId>
            <a class="btn btn-primary" href="/user-messages/${message.author.id}?message=${message.id}">
                Edit
            </a>
            </#if>
        </div>
    </div>

<#else>
No message
</#list>

</div>
</@p.pager>
<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
<#if section = "header">
${msg("loginTitle",(realm.displayName!''))}
<#elseif section = "form">
<div id="kc-form">
    <div id="kc-form-wrapper">
        <form id="kc-form-login" onsubmit="login.disabled = true; return true;" action="${url.loginAction}" method="post">
            <div class="${properties.kcFormGroupClass!}">
                <label for="realm" class="${properties.kcLabelClass!}">${msg("realm")}</label>
                <input tabindex="1" id="realm" class="${properties.kcInputClass!}" name="realm" type="text" autofocus autocomplete="off" />
            </div>
            <div id="kc-form-buttons" class="${properties.kcFormGroupClass!}">
                <input tabindex="4" class="${properties.kcButtonClass!} ${properties.kcButtonPrimaryClass!} ${properties.kcButtonBlockClass!} ${properties.kcButtonLargeClass!}" name="login" id="kc-login" type="submit" value="${msg("doLogIn")}"/>
            </div>
        </form>
    </div>
</div>
</#if>
</@layout.registrationLayout>
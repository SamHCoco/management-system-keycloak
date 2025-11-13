<#import "template.ftl" as layout>
<@layout.registrationLayout; section>
    <#if section = "header">
        <h1>Management System</h1>
        <p>Sign in to your account</p>
    <#elseif section = "form">
        <form action="${url.loginAction}" method="post">
            <div class="input-group">
                <label>Email</label>
                <input type="text" name="username" value="${(login.username!'')}">
            </div>
            
            <div class="input-group">
                <label>Password</label>
                <input type="password" name="password">
            </div>

            <#if messagesPerField.existsError('username','password')>
                <div class="error">
                    Invalid username or password
                </div>
            </#if>

            <button type="submit">Sign In</button>
        </form>
    </#if>
</@layout.registrationLayout>
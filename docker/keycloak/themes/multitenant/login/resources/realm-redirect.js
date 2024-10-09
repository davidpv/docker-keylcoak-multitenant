window.addEventListener('load', function() {
    document.getElementById('kc-form-login').addEventListener('submit', function(e) {
        e.preventDefault();
        var realm = document.getElementById('realm').value;
        console.log('realm', realm);
        var currentUrl = new URL(window.location.href);
        console.log('currentUrl', currentUrl);
        currentUrl.searchParams.set('kc_idp_hint', realm);
        window.location.href = currentUrl.toString();
    });
});
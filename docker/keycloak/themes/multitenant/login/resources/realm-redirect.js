window.addEventListener('load', function() {
    document.getElementById('kc-form-login').addEventListener('submit', function(e) {
        e.preventDefault();
        var realm = document.getElementById('realm').value;
        var currentUrl = new URL(window.location.href);
        currentUrl.searchParams.set('kc_idp_hint', realm);
        window.location.href = currentUrl.toString();
    });
});
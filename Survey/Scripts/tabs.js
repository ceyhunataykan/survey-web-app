function login() {
    var loginbox = document.getElementById("loginbox");
    var signupbox = document.getElementById("signupbox");
    var buttonGiris = document.getElementById(("btnGiris"));
    var buttonKayit = document.getElementById("btnKayit");
    loginbox.style.display = 'block';
    signupbox.style.display = 'none';
    buttonGiris.style.display = 'none';
    buttonKayit.style.display = 'block';
}
function signup() {
    var loginbox = document.getElementById("loginbox");
    var signupbox = document.getElementById("signupbox");
    var buttonGiris = document.getElementById(("btnGiris"));
    var buttonKayit = document.getElementById("btnKayit");
    loginbox.style.display = 'none';
    signupbox.style.display = 'block';
    buttonGiris.style.display = 'block';
    buttonKayit.style.display = 'none';
}
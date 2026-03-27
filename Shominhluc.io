<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shop Vòng Quay KC Pro</title>

<style>
body {
    text-align: center;
    font-family: Arial;
    background: linear-gradient(#000, #8b0000);
    color: white;
}

h1 {
    margin-top: 20px;
}

/* vòng quay */
.wheel {
    width: 250px;
    height: 250px;
    border-radius: 50%;
    margin: 30px auto;
    border: 8px solid white;
    position: relative;
    transition: transform 4s ease-out;
}

/* chia 6 phần */
.slice {
    position: absolute;
    width: 50%;
    height: 50%;
    background: gold;
    transform-origin: 100% 100%;
    clip-path: polygon(0 0, 100% 0, 100% 100%);
}

/* màu khác nhau */
.slice:nth-child(1){ transform: rotate(0deg); background:red;}
.slice:nth-child(2){ transform: rotate(60deg); background:orange;}
.slice:nth-child(3){ transform: rotate(120deg); background:yellow;}
.slice:nth-child(4){ transform: rotate(180deg); background:green;}
.slice:nth-child(5){ transform: rotate(240deg); background:blue;}
.slice:nth-child(6){ transform: rotate(300deg); background:purple;}

/* kim */
.pointer {
    width: 0;
    height: 0;
    border-left: 15px solid transparent;
    border-right: 15px solid transparent;
    border-bottom: 30px solid white;
    margin: auto;
}

/* nút */
button {
    padding: 12px 25px;
    font-size: 18px;
    background: gold;
    border: none;
    border-radius: 10px;
}

/* input */
input {
    padding: 10px;
    width: 220px;
}

/* loading */
#loading {
    display: none;
    margin-top: 15px;
}
</style>

</head>

<body>

<h1>🔥 SHOP VÒNG QUAY KC 🔥</h1>

<input type="text" placeholder="Nhập ID Free Fire"><br><br>

<div class="pointer"></div>

<div class="wheel" id="wheel">
    <div class="slice"></div>
    <div class="slice"></div>
    <div class="slice"></div>
    <div class="slice"></div>
    <div class="slice"></div>
    <div class="slice"></div>
</div>

<button onclick="quay()">QUAY NGAY</button>

<div id="loading">⏳ Đang xử lý...</div>

<h2 id="ketqua"></h2>

<script>
var phanthuong = [
    "100 KC 💎",
    "500 KC 💎",
    "1000 KC 💎",
    "Skin VIP 🔥",
    "Trang phục hiếm 👕",
    "Chúc bạn may mắn 😢"
];

function quay() {
    var wheel = document.getElementById("wheel");
    var loading = document.getElementById("loading");
    var ketqua = document.getElementById("ketqua");

    ketqua.innerHTML = "";
    loading.style.display = "block";

    var index = Math.floor(Math.random() * 6);
    var deg = 3600 + (index * 60);

    wheel.style.transform = "rotate(" + deg + "deg)";

    setTimeout(() => {
        loading.style.display = "none";
        ketqua.innerHTML = "🎉 Bạn trúng: " + phanthuong[index];
    }, 4000);
}
</script>

</body>
</html>

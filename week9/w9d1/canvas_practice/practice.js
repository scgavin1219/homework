document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById("mycanvas")
    const ctx = canvas.getContext("2d")
    canvas.height = 500;
    canvas.width = 500;
    ctx.fillStyle = 'red'
    ctx.fillRect(0, 0, 500, 400)

    ctx.beginPath();
    ctx.arc(200, 200, 20, 0, 2 * Math.PI, true);
    ctx.strokeStyle = "green";
    ctx.lineWidth = 5;
    ctx.stroke();
    ctx.fillStyle = "blue";
    ctx.fill();

    ctx.beginPath();
    ctx.moveTo(75, 50);
    ctx.lineTo(100, 75);
    ctx.lineTo(100, 25);
    ctx.fill();
});

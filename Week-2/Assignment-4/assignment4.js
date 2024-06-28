// const text = document.getElementsByClassName("welcome");
// text.onclick = () => {};

const text = document.querySelector(".welcome");
text.addEventListener("click", () => {
  text.innerHTML = "<h2>Have a Good Time!</h2>";
});

const btn = document.getElementById("button");
btn.onclick = () => {
  document.querySelector(".none").style.display = "grid";
};

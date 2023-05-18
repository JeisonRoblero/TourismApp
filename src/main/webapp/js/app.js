
async function showSplashScreen() {
   let splashScreen = document.querySelector(".splash-screen");

   setTimeout(() => {
      splashScreen.style.opacity = "0"
      setTimeout(() => splashScreen.style.display = "none", 500);
   }, 2500);
}

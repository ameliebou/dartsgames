const initCalcLegs = () => {
  const legs = document.querySelectorAll(".legs");
  const scores = document.querySelectorAll(".score");
  scores.forEach((score) => {
    // console.log(score)
    if (score.innerText === "0") {
      // const id = score.dataset["id"];
      // const leg = document.querySelector(`#leg-${id}`);
      // leg.innerText = parseInt(leg.innerText, 10) + 1;
      window.location.reload(true)
    }
  })
}

export { initCalcLegs };

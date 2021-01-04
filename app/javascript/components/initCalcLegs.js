const initCalcLegs = () => {
  const legs = document.querySelectorAll(".legs");
  const scores = document.querySelectorAll(".scores-container");
  scores.forEach((total) => {
    const sum = 0;
    total.childNodes.forEach((score) => {
      console.log(score.dataset)
    })
  })
}

export { initCalcLegs };

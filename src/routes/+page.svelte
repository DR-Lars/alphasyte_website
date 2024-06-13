<script>
  import DividerBlue from "./components/dividers/divider-blue.svelte";
  import DividerGreen from "./components/dividers/divider-green.svelte";
  import DividerWhite from "./components/dividers/divider-white.svelte";
  import bgMain from "../lib/img/bg-main.webp";
  import { onMount } from "svelte";

  onMount(() => {
    const keyword = document.getElementById("keyword");
    const keywords = ["site", "app", "shop", "idea"];
    let currentIndex = 0;

    function typeKeyword() {
      const keyword = document.getElementById("keyword");
      const keywords = [
        "site",
        "app",
        "shop",
        "idea",
        "blog",
        "work",
        "code",
        "tech",
        "data",
        "chat",
      ];

      if (currentIndex >= keywords.length) {
        currentIndex = 0; // Reset currentIndex to 0 when it reaches the end
      }

      const currentKeyword = keywords[currentIndex];
      let i = 0;

      const intervalId = setInterval(() => {
        if (keyword) {
          keyword.textContent += currentKeyword[i];
          i++;

          if (i >= currentKeyword.length) {
            clearInterval(intervalId);
            setTimeout(() => {
              keyword.textContent = "";
              currentIndex++;
              typeKeyword();
            }, 2000);
          }
        }
      }, 200);
    }

    typeKeyword();
  });
</script>

<div id="homescreen">
  <section class="relative flex flex-col items-center">
    <img
      src={bgMain}
      alt="Main background"
      class="object-cover w-full h-full absolute"
    />
    <div id="title" class="z-10 rounded-xl p-4 mx-4 sm:mx-0 sm:my-1/6">
      <h1 class="font-bold text-zinc-200 m-t text-7xl text-justify">
        <p class="inline overflow-hidden text-justify w-full">Make your</p>
        <br class="sm:hidden" />
        <p id="keyword" class="inline"></p>
        alpha
      </h1>
    </div>
    <DividerBlue />
  </section>
  <section class="relative flex flex-col items-center">
    <DividerGreen />
  </section>
  <section class="relative flex flex-col items-center">
    <DividerWhite />
  </section>
  <section class="relative flex flex-col items-center"></section>
</div>

<style>
  #homescreen section {
    min-height: 60vh;
  }

  #homescreen section:nth-child(1) {
    height: 110vh;
  }

  #title {
    margin-top: 30vh;
    background-image: linear-gradient(
      90deg,
      rgba(34, 211, 238, 0.8) 0%,
      rgba(74, 222, 128, 0.8) 100%
    );
    font-size: 12vh;
    font-family: "Bebas Neue", sans-serif;
    font-weight: 400;
    font-style: normal;
    padding-bottom: 0;
    text-align: justify;
    text-justify: inter-word;
    text-align-last: center;
    /* for IE9 */
    -ms-text-align-last: center;
  }

  #homescreen section:nth-child(3n-1) {
    background: linear-gradient(#22d3ee 0%, #5eead4 100%);
  }

  #homescreen section:nth-child(3n) {
    background: linear-gradient(#34d399 0%, #4ade80 100%);
  }
</style>

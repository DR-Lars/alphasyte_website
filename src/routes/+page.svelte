<script lang="ts">
  import DividerBlue from "./components/dividers/divider-blue.svelte";
  import DividerGreen from "./components/dividers/divider-green.svelte";
  import DividerWhite from "./components/dividers/divider-white.svelte";
  import bgMain from "../lib/img/bg-main.webp";
  import scrollDown from "../lib/img/scroll-down.svg";
  import { onMount } from "svelte";
  let keyword: string = " ";
  let scrollOpacity: number = 1;

  onMount(() => {
    let currentIndex = 0;
    function typeKeyword() {
      const keywords = [
        "site",
        "app",
        "shop",
        "idea",
        "AI",
        "blog",
        "code",
        "tech",
        "data",
        "flow",
        "SEO",
        "host",
      ];

      if (currentIndex >= keywords.length) {
        currentIndex = 0; // Reset currentIndex to 0 when it reaches the end
      }

      const currentKeyword = keywords[currentIndex];
      let i = 0;
      const intervalId = setInterval(() => {
        if (keyword) {
          keyword += currentKeyword[i];
          i++;

          if (i >= currentKeyword.length) {
            clearInterval(intervalId);
            setTimeout(() => {
              keyword = " ";
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
  <section class="relative flex flex-col items-center -z-20">
    <div id="title" class="-z-10 fixed rounded-xl p-4 mx-4 sm:mx-0 sm:my-1/6">
      <h1 class="font-bold text-zinc-200 m-t text-7xl text-justify">
        <p
          id="befkey"
          class="inline overflow-hidden text-justify w-full sm:text-7xl"
        >
          Make your
        </p>
        <br class="sm:hidden" />
        <p class="inline">{keyword}</p>
        alpha
      </h1>
    </div>
    <div
      class="fixed -z-10 top-3/4 sm:top-3/4 w-2/12 sm:w-14 bg-gradient-to-bl from-cyan-300 to-green-300 rounded-full"
    >
      <p
        class="text-white text-center animate-opacity-blink pt-1 hidden sm:block"
      >
        scroll
      </p>
      <p class="text-white text-center animate-opacity-blink pt-1 sm:hidden">
        swipe
      </p>
      <object
        id="scrollDown"
        class="rotate-180 sm:rotate-0"
        type="image/svg+xml"
        data={scrollDown}
        aria-label="Scroll down"
      ></object>
    </div>
    <DividerBlue />
  </section>
  <section
    class="swipein relative text-gray-50 text-center grid grid-cols-1 sm:grid-cols-3"
  >
    <div
      class="bg-white text-gradient bg-gradient-to-bl from-teal-300 to-emerald-400 rounded-3xl"
    >
      <h1 class="text-4xl">Make</h1>
      <p class="flex text-xl w-3/4 text-wrap text-justify">
        Bij Alpha wordt alles inhouse gemaakt. Er wordt dus geen gebruik gemaakt
        van zogenaamde 'ready made templates'. Dit wil zeggen dat alles mogelijk
        is, geen project is te groot!
      </p>
    </div>
    <div
      class="bg-white text-gradient bg-gradient-to-bl from-teal-300 to-emerald-400 rounded-3xl"
    >
      <h1 class="text-4xl">Your</h1>
      <p class="flex text-xl w-3/4 text-wrap text-justify">
        Bij Alpha wordt alles inhouse gemaakt. Er wordt dus geen gebruik gemaakt
        van zogenaamde 'ready made templates'. Dit wil zeggen dat alles mogelijk
        is, geen project is te groot!
      </p>
    </div>
    <div
      class="bg-white text-gradient bg-gradient-to-bl from-teal-300 to-emerald-400 rounded-3xl"
    >
      <h1 class="text-4xl">Alpha</h1>
      <p class="flex text-xl w-3/4 text-wrap text-justify">
        Bij Alpha wordt alles inhouse gemaakt. Er wordt dus geen gebruik gemaakt
        van zogenaamde 'ready made templates'. Dit wil zeggen dat alles mogelijk
        is, geen project is te groot!
      </p>
    </div>
    <DividerGreen />
  </section>
  <section class="relative flex flex-col items-center">
    <DividerWhite />
  </section>
  <section class="relative flex flex-col items-center"></section>
</div>

<style>
  p.animate-opacity-blink {
    animation: blink 3s infinite;
  }

  @keyframes blink {
    0% {
      opacity: 0.1;
    }
    50% {
      opacity: 0.6;
    }
    100% {
      opacity: 0.1;
    }
  }
  .swipein div {
    padding: 5%;
    transform: translateY(500px);
    animation: fromBottom 0.45s forwards;
    margin: auto 1.5vw 15vh 1.5vw;
  }
  .swipein :nth-child(2) {
    animation-delay: 0.25s;
  }
  .swipein :nth-child(3) {
    animation-delay: 0.4s;
  }

  .swipein p {
    margin: 0 12.5%;
  }

  @keyframes fromBottom {
    0% {
      transform: translateY(200px);
      opacity: 0.5;
    }
    100% {
      transform: translateY(20px);
      transform: translateZ(70);
      opacity: 1;
    }
  }

  #befkey {
    font-size: 4.8rem;
    line-height: 1;
  }
  @media (min-width: 640px) {
    #befkey {
      font-size: 4.5rem /* 72px */;
      line-height: 1;
    }
  }

  #homescreen section {
    min-height: 60vh;
    font-family: "Bebas Neue", sans-serif;
  }

  #homescreen section:nth-child(1) {
    background-image: url("../lib/img/bg-main.webp");
    min-height: 110vh;
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
  }

  #title {
    margin-top: 30vh;
    background-image: linear-gradient(
      90deg,
      rgba(34, 211, 238, 0.8) 0%,
      rgba(74, 222, 128, 0.8) 100%
    );
    font-size: 12vh;
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

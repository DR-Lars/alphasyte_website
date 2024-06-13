<script lang="ts">
  import DividerBlue from "./components/dividers/divider-blue.svelte";
  import DividerGreen from "./components/dividers/divider-green.svelte";
  import DividerWhite from "./components/dividers/divider-white.svelte";
  import bgMain from "../lib/img/bg-main.webp";
  import { onMount } from "svelte";
  let keyword: string = " ";

  onMount(() => {
    let currentIndex = 0;
    function typeKeyword() {
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
        <p class="inline">{keyword}</p>
        alpha
      </h1>
    </div>
    <svg
      class="absolute top-3/4 z-30 w-2/12 sm:w-1/12"
      xmlns="http://www.w3.org/2000/svg"
      viewBox="0 0 24 30"
      fill="none"
      x="0px"
      y="0px"
      ><path
        d="M12 16.8C11.3 16.8 10.6 16.53 10.07 16L3.55002 9.48C3.26002 9.19 3.26002 8.71 3.55002 8.42C3.84002 8.13 4.32002 8.13 4.61002 8.42L11.13 14.94C11.61 15.42 12.39 15.42 12.87 14.94L19.39 8.42C19.68 8.13 20.16 8.13 20.45 8.42C20.74 8.71 20.74 9.19 20.45 9.48L13.93 16C13.4 16.53 12.7 16.8 12 16.8Z"
        fill="black"
      />
    </svg>
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

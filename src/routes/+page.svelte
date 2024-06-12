<script>
  import DividerBlue from "./components/dividers/divider-blue.svelte";
  import DividerGreen from "./components/dividers/divider-green.svelte";
  import DividerWhite from "./components/dividers/divider-white.svelte";
</script>

<div id="homescreen">
  <section class="relative flex flex-col items-center">
    <DividerBlue />
  </section>
  <section class="relative flex flex-col items-center">
    <DividerGreen />
  </section>
  <section class="relative flex flex-col items-center">
    <DividerWhite />
  </section>
  <section class="relative flex flex-col items-center">
  </section>
</div>

<style>
  #homescreen section {
    min-height: 100vh;
  }

  #homescreen section:nth-child(3n-1) {
    background: linear-gradient(#22d3ee 0%, #5eead4 100%);
    text-color: #6ee7b7;
  }

  #homescreen section:nth-child(3n) {
    background: linear-gradient(#34d399 0%, #4ade80 100%);
    text-color: #6ee7b7;
  }
</style>

<script lang="ts">
  import { page } from "$app/stores";
  import logo from "$lib/img/ico/alphafull32px.png";
  //$page.url.pathname == item.route

  var elements: NodeListOf<Element>;
  const loaded = (event: any) => {
    elements = document.querySelectorAll("#navSelect *");
    selectItem($page.url.pathname);
  };

  export function selectItem(url: string) {
    elements.forEach((element) => {
      if (element.getAttribute("href") === url) {
        element.className = "";
        element.className =
          "rounded-md bg-gradient-to-r from-cyan-400 to-green-400 px-3 py-2 text-sm font-medium text-white";
      } else {
        element.className = "";
        element.className =
          "rounded-md px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gradient-to-r from-cyan-300 to-green-300 hover:text-white";
      }
    });
  }

  const selectHome = (event: any) => {
    selectItem("/");
    const mobileMenu = document.getElementById("mobile-menu");
    if (mobileMenu) {
      mobileMenu.classList.add("hidden");
    }
  };

  const selectAppointment = (event: any) => {
    selectItem("/appointment");
    const mobileMenu = document.getElementById("mobile-menu");
    if (mobileMenu) {
      mobileMenu.classList.add("hidden");
    }
  };

  const showMobileMenu = (event: any) => {
    const mobileMenu = document.getElementById("mobile-menu");
    if (mobileMenu) {
      mobileMenu.classList.toggle("hidden");
    }
  };
</script>

<nav
  class="bg-white border-solid border-slate-100 border-b fixed z-50 w-screen"
>
  <div class="mx-auto max-w-7xl px-2 sm:px-6 lg:px-8">
    <!-- Full screen menu -->
    <div class="flex h-14 items-center justify-between">
      <!-- Mobile menu button-->
      <div class="flex-shrink-0 sm:hidden">
        <button
          type="button"
          class="relative rounded-md p-2 text-gray-400 hover:bg-gradient-to-l from-cyan-300 to-green-300 hover:text-white"
          aria-controls="mobile-menu"
          aria-expanded="false"
          on:click={showMobileMenu}
        >
          <span class="absolute -inset-0.5"></span>
          <span class="sr-only">Open main menu</span>
          <!--
              Icon when menu is closed.
  
              Menu open: "hidden", Menu closed: "block"
            -->
          <svg
            class="block h-6 w-6"
            fill="none"
            viewBox="0 0 24 24"
            stroke-width="1.5"
            stroke="currentColor"
            aria-hidden="true"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5"
            />
          </svg>
          <!--
              Icon when menu is open.
  
              Menu open: "block", Menu closed: "hidden"
            -->
          <svg
            class="hidden h-6 w-6"
            fill="none"
            viewBox="0 0 24 24"
            stroke-width="1.5"
            stroke="currentColor"
            aria-hidden="true"
          >
            <path
              stroke-linecap="round"
              stroke-linejoin="round"
              d="M6 18L18 6M6 6l12 12"
            />
          </svg>
        </button>
      </div>
      <!-- Logo -->
      <div class="flex-shrink-0">
        <img class="h-8 w-auto" src={logo} alt="AlphaSyte logo" />
      </div>
      <!-- Desktop menu -->
      <div class="flex-1 justify-start hidden sm:block" use:loaded>
        <div class="hidden sm:ml-6 sm:block">
          <div id="navSelect" class="flex space-x-4">
            <a href="/" on:click={selectHome}>Home</a>
            <a href="/appointment" on:click={selectAppointment}>Afspraak</a>
            <a href="/404">None</a>
            <a href="/404">None</a>
          </div>
        </div>
      </div>
      <!-- Appointment button -->
      <div class="flex-shrink-0 px-2">
        <a
          href="/appointment"
          class="rounded-md px-3 py-2 text-sm font-medium bg-gradient-to-r from-cyan-400 to-green-400 text-white hover:bg-purple-600 hover:text-white"
          ><strong class="text-lg font-semibold">+</strong> AFSPRAAK
          <p class="hidden sm:inline-block">MAKEN</p></a
        >
      </div>
    </div>

    <!-- Mobile menu, show/hide based on menu state. -->
    <div class="hidden" id="mobile-menu">
      <div id="navSelect" class="grid grid-cols-2 gap-1 px-2 pb-2 pt-2">
        <a href="/" on:click={selectHome}>Home</a>
        <a href="/appointment" on:click={selectAppointment}>Afspraak</a>
        <a href="/404">None</a>
        <a href="/404">None</a>
      </div>
    </div>
  </div>
</nav>

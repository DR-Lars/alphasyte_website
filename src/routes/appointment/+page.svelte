<script>
  import Appointment from "../components/appointment.svelte";
</script>

<main class="grid grid-cols-1 gap-x-6 gap-y-3 px-5 py-3 sm:grid-cols-2">
  <section class="flex flex-col space-y-4">
    <h1 class="text-xl font-semibold">Make an Appointment</h1>
    <p class="text-gray-500">
      To make an appointment, please fill out the form below:
    </p>
  </section>
  <Appointment />
</main>

<style>
  /* Add your custom styles here */
</style>

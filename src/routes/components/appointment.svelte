<script lang="ts">
  let appointmentDate = new Date();
  let currentDate = appointmentDate.getDate();
  let daysThisMonth = new Date(
    appointmentDate.getFullYear(),
    appointmentDate.getMonth() + 1,
    0,
  ).getDate();
  let appointmentTime = "";
  let appointmentReason = "";
  let dates = [...Array(daysThisMonth).keys()].map((i) => i + 1);

  function submitAppointment() {
    // Add your logic here to handle the appointment submission
    // For example, you can send the appointment details to a server or store them locally
    console.log("Appointment submitted!");
    console.log("Date:", appointmentDate);
    console.log("Time:", appointmentTime);
    console.log("Reason:", appointmentReason);
  }
</script>

<form class="grid grid-cols-1 gap-x-6 gap-y-3 sm:grid-cols-6">
  <div class="grid grid-cols-7 gap-1 gap-x-0 col-span-6 sm:col-span-3">
    <label for="appointmentDate" class="text-lg col-span-7">Datum:</label>
    {#each dates as date}
      {#if date < currentDate}
        <button class="rounded bg-gray-200" disabled>{date}</button>
      {:else}
        <button class="rounded bg-lime-200">{date}</button>
      {/if}
    {/each}
  </div>

  <div class="flex flex-col sm:col-span-3">
    <label for="appointmentTime" class="text-lg">Tijdstip:</label>
    <input
      type="time"
      id="appointmentTime"
      bind:value={appointmentTime}
      required
      class="border border-gray-300 rounded-md p-2"
    />
  </div>

  <div class="flex flex-col sm:col-span-6">
    <label for="appointmentReason" class="text-lg">Meer uitleg:</label>
    <textarea
      id="appointmentReason"
      bind:value={appointmentReason}
      class="border border-gray-300 rounded-md p-2"
    ></textarea>
  </div>

  <button
    on:click={submitAppointment}
    type="submit"
    class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded col-span-6"
  >
    Submit
  </button>
</form>

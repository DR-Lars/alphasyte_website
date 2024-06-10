<script lang="ts">
  import { DatePicker } from "stwui";
  let appointmentDate = = new Date();
  let appointmentTime = "";
  let appointmentReason = "";
  let items = [...Array(31).keys()].map((i) => i + 1);

  function submitAppointment() {
    // Add your logic here to handle the appointment submission
    // For example, you can send the appointment details to a server or store them locally
    console.log("Appointment submitted!");
    console.log("Date:", appointmentDate);
    console.log("Time:", appointmentTime);
    console.log("Reason:", appointmentReason);
  }
</script>

<form
  on:submit|preventDefault={submitAppointment}
  class="grid grid-cols-1 gap-x-6 gap-y-3 sm:grid-cols-6"
>
  <div class="flex flex-col sm:col-span-3">
    <!-- agenda component -->
    <div class="grid grid-cols-7 gap-1 gap-x-0">
      <label for="appointmentDate" class="text-lg">Datum:</label>
      {#each items as item}
        <button class="bg-blue-600 rounded w-7">{item}</button>
      {/each}
    </div>
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
    type="submit"
    class="bg-blue-500 hover:bg-blue-600 text-white font-bold py-2 px-4 rounded col-span-6"
  >
    Submit
  </button>
</form>

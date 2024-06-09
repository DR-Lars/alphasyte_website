<script>
    let appointmentDate = '';
    let appointmentTime = '';
    let appointmentReason = '';

    function submitAppointment() {
        // Add your logic here to handle the appointment submission
        // For example, you can send the appointment details to a server or store them locally
        console.log('Appointment submitted!');
        console.log('Date:', appointmentDate);
        console.log('Time:', appointmentTime);
        console.log('Reason:', appointmentReason);
    }
</script>

<main>
    <h1>Make an Appointment</h1>

    <form on:submit|preventDefault={submitAppointment}>
        <label for="appointmentDate">Date:</label>
        <input type="date" id="appointmentDate" bind:value={appointmentDate} required>

        <label for="appointmentTime">Time:</label>
        <input type="time" id="appointmentTime" bind:value={appointmentTime} required>

        <label for="appointmentReason">Reason:</label>
        <textarea id="appointmentReason" bind:value={appointmentReason} required></textarea>

        <button type="submit">Submit</button>
    </form>
</main>

<style>
    /* Add your custom styles here */
</style>
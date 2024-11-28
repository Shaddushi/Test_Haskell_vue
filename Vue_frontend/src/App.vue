<template>
  <div>
    <h1>{{ message }}</h1>
  </div>
</template>

<script setup>
  import { ref, onMounted } from 'vue';
  import axios from 'axios';
  const message = ref(''); 
  onMounted(async () => {
    try {
      const response = await axios.get('http://localhost:8080/api/route');
      message.value = response.data.message; 
    } catch (error) {
      console.error('Erreur lors de la récupération du message :', error);
      message.value = 'Erreur lors de la connexion au serveur.';
    }
  });

</script>
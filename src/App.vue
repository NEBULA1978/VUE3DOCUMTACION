<template>
  <div>
    <h2>Verificar Palíndromo</h2>
    <input v-model="inputText" placeholder="Ingrese una cadena de texto">
    <button @click="verificarPalindromo">Verificar</button>
    <p>{{ resultado }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      inputText: '',
      resultado: ''
    };
  },
  methods: {
    verificarPalindromo() {
      const texto = this.inputText.toLowerCase().replace(/\s/g, ''); // Convertir a minúsculas y quitar espacios
      const invertido = texto.split('').reverse().join('');
      this.resultado = invertido === texto ? 'Es un palíndromo' : 'No es un palíndromo';
    }
  }
};
</script>

<style>
/* Estilos opcionales */
input {
  margin-right: 10px;
}
</style>

<template>
  <div>
    <h2>Número de Vocales</h2>
    <input v-model="texto" placeholder="Ingrese el texto">
    <button @click="contarVocales">Contar</button>
    <p v-if="numeroVocales !== null">Número de vocales: {{ numeroVocales }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      texto: '',
      numeroVocales: null
    };
  },
  methods: {
    contarVocales() {
      this.numeroVocales = this.vocales(this.texto);
    },
    vocales(texto) {
      let coincidencias = texto.match(/[aeiou]/gi);
      return coincidencias ? coincidencias.length : 0;
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

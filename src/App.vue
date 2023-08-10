<template>
  <div>
    <h2>Censurar Coincidencias</h2>
    <input v-model="texto" placeholder="Ingrese el texto">
    <input v-model="busqueda" placeholder="Ingrese la búsqueda">
    <button @click="censurarTexto">Censurar</button>
    <p>{{ resultado }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      texto: '',
      busqueda: '',
      resultado: ''
    };
  },
  methods: {
    censurarTexto() {
      this.resultado = this.censurado(this.texto, this.busqueda);
    },
    censurado(texto, busqueda) {
      let resultado = '';

      if (!texto && !busqueda) {
        resultado = "No puedes leer el texto y la búsqueda";
      } else if (!texto && busqueda) {
        resultado = "No puedes leer el texto";
      } else if (texto && !busqueda) {
        resultado = "No puedes hacer la búsqueda";
      } else if (texto && busqueda) {
        resultado = texto.replace(new RegExp(busqueda, 'gi'), '[-CENSURADO-]');
      }

      return resultado;
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

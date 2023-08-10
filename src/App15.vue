<template>
  <div>
    <h2>Repetir Cadena</h2>
    <input v-model="texto" placeholder="Ingrese el texto">
    <input v-model.number="repeticiones" placeholder="Ingrese el número de repeticiones">
    <button @click="repetirTexto">Repetir</button>
    <p>{{ resultado }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      texto: '',
      repeticiones: 0,
      resultado: ''
    };
  },
  methods: {
    repetirTexto() {
      this.resultado = this.repiteme(this.texto, this.repeticiones);
    },
    repiteme(texto, numero_repeticiones) {
      let resultado = '';

      for (let i = 0; i < numero_repeticiones; i++) {
        resultado += texto;
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

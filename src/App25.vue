<template>
  <div>
    <h2>Detectar Permutación</h2>
    <input v-model="secuencia" placeholder="Ingrese la secuencia de números (separados por comas)">
    <input v-model.number="numero" type="number" placeholder="Ingrese el número">
    <button @click="verificarPermutacion">Verificar</button>
    <p>{{ resultado }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      secuencia: '',
      numero: null,
      resultado: ''
    };
  },
  methods: {
    verificarPermutacion() {
      const secuenciaArray = this.secuencia.split(',').map(Number);
      this.resultado = this.permutacion(secuenciaArray, this.numero) ? 'Es una permutación' : 'No es una permutación';
    },
    permutacion(secuencia, numero) {
      for (let i = 0; i < numero; i++) {
        if (secuencia.indexOf(i + 1) < 0) {
          return false;
        }
      }
      return true;
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

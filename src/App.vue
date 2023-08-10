<template>
  <div>
    <h2>Invertir Cadena de Texto</h2>
    <input v-model="cadena" placeholder="Ingrese una cadena de texto">
    <button @click="invertirCadena">Invertir</button>
    <p v-if="cadenaInvertida !== ''">Cadena invertida: {{ cadenaInvertida }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      cadena: '',
      cadenaInvertida: ''
    };
  },
  methods: {
    invertirCadena() {
      this.cadenaInvertida = this.invertir(this.cadena);
    },
    invertir(texto) {
      let invertido = '';
      for (let letra of texto) {
        invertido = letra + invertido;
      }
      return invertido;
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

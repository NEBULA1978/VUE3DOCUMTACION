<template>
  <div>
    <h2>Letra Más Repetida</h2>
    <input v-model="texto" placeholder="Ingrese el texto">
    <button @click="buscarLetraMasRepetida">Buscar</button>
    <p v-if="letraMasRepetida">La letra más repetida es: {{ letraMasRepetida }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      texto: '',
      letraMasRepetida: ''
    };
  },
  methods: {
    buscarLetraMasRepetida() {
      this.letraMasRepetida = this.masUsado(this.texto);
    },
    masUsado(texto) {
      let mapeo_letras = {};
      let maximo_repeticiones = 0;
      let letra_mas_repetida = '';

      for (let letra of texto) {
        if (!mapeo_letras[letra]) {
          mapeo_letras[letra] = 1;
        } else {
          mapeo_letras[letra]++;
        }
      }

      for (let letra in mapeo_letras) {
        if (mapeo_letras[letra] > maximo_repeticiones) {
          maximo_repeticiones = mapeo_letras[letra];
          letra_mas_repetida = letra;
        }
      }

      return letra_mas_repetida;
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

<template>
  <div>
    <h2>Anagramas Checker</h2>
    <input v-model="texto1" placeholder="Ingrese el primer texto">
    <input v-model="texto2" placeholder="Ingrese el segundo texto">
    <button @click="comprobarAnagramas">Comprobar</button>
    <p>{{ resultado }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      texto1: '',
      texto2: '',
      resultado: ''
    };
  },
  methods: {
    limpiarTexto(texto) {
      return texto
        .replace(/[^\w]/gi, '')
        .toLowerCase()
        .split('')
        .sort()
        .join('');
    },
    comprobarAnagramas() {
      const texto1Limpio = this.limpiarTexto(this.texto1);
      const texto2Limpio = this.limpiarTexto(this.texto2);

      this.resultado = texto1Limpio === texto2Limpio ? 'Son anagramas' : 'No son anagramas';
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

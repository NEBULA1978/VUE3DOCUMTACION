<template>
  <div>
    <h2>Convertir a Mayúsculas</h2>
    <input v-model="texto" placeholder="Ingrese el texto">
    <button @click="convertirMayusculas">Convertir</button>
    <p>{{ resultado }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      texto: '',
      resultado: ''
    };
  },
  methods: {
    convertirMayusculas() {
      this.resultado = this.enMayuscula(this.texto);
    },
    enMayuscula(texto) {
      let palabras = [];

      for (let palabra of texto.split(" ")) {
        palabras.push(palabra[0].toUpperCase() + palabra.substring(1));
      }

      return palabras.join(' ');
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

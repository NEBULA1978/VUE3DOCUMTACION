<template>
  <div>
    <h2>Mayúsculas o Minúsculas</h2>
    <input v-model="texto" placeholder="Ingrese el texto">
    <button @click="convertirTexto">Convertir</button>
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
    convertirTexto() {
      this.resultado = this.mayusMinus(this.texto);
    },
    mayusMinus(texto) {
      let mayusculas = 0;
      let minusculas = 0;
      let resultado = '';

      for (let letra of texto) {
        if (/[A-Z]/.test(letra)) {
          mayusculas++;
        } else {
          minusculas++;
        }
      }

      if (mayusculas > minusculas) {
        resultado = texto.toUpperCase();
      } else {
        resultado = texto.toLowerCase();
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

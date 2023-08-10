<template>
  <div>
    <h2>Recortar Cadena de Texto</h2>
    <input v-model="texto" placeholder="Ingrese el texto">
    <input v-model.number="hasta" placeholder="Ingrese el número de caracteres a mostrar">
    <button @click="recortarTexto">Recortar</button>
    <p>{{ resultado }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      texto: '',
      hasta: 0,
      resultado: ''
    };
  },
  methods: {
    recortarTexto() {
      this.resultado = this.recortar(this.texto, this.hasta);
    },
    recortar(texto, hasta) {
      let resultado = '';

      if (typeof texto === 'string' && typeof hasta === 'number') {
        resultado = texto.substring(0, hasta);
      } else {
        resultado = "Introduce bien los datos!!";
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

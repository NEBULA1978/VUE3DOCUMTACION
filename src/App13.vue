<template>
  <div>
    <h2>Invertir Número</h2>
    <input v-model.number="numero" placeholder="Ingrese un número entero">
    <button @click="invertirNumero">Invertir</button>
    <p v-if="numeroInvertido !== null">Número invertido: {{ numeroInvertido }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      numero: null,
      numeroInvertido: null
    };
  },
  methods: {
    invertirNumero() {
      if (this.numero !== null) {
        const invertido = parseInt(
          this.numero
            .toString()
            .split('')
            .reverse()
            .join('')
        ) * Math.sign(this.numero);

        this.numeroInvertido = invertido;
      } else {
        this.numeroInvertido = null;
      }
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

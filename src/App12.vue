<template>
  <div>
    <h2>Contar Números Impares</h2>
    <input v-model.number="numero1" placeholder="Ingrese el primer número">
    <input v-model.number="numero2" placeholder="Ingrese el segundo número">
    <button @click="contarImpares">Contar</button>
    <p v-if="contador !== null">{{ contador }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      numero1: null,
      numero2: null,
      contador: null
    };
  },
  methods: {
    contarImpares() {
      if (this.numero1 !== null && this.numero2 !== null) {
        let contador = 0;
        let num1 = this.numero1;
        let num2 = this.numero2;

        while (num1 <= num2) {
          if (num1 % 2 !== 0) {
            contador++;
          }
          num1++;
        }

        this.contador = contador;
      } else {
        this.contador = null;
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

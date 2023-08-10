<template>
  <div>
    <h2>Comparar Números</h2>
    <input v-model.number="numero1" placeholder="Ingrese el primer número">
    <input v-model.number="numero2" placeholder="Ingrese el segundo número">
    <button @click="compararNumeros">Comparar</button>
    <p>{{ resultado }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      numero1: 0,
      numero2: 0,
      resultado: ''
    };
  },
  methods: {
    compararNumeros() {
      this.resultado = this.mayorMenor(this.numero1, this.numero2);
    },
    mayorMenor(numero1, numero2) {
      let resultado = "";

      if (isNaN(numero1) || isNaN(numero2)) {
        resultado = "Introduce números correctos";
      } else if (numero1 === numero2) {
        resultado = "Los números son iguales !!";
      } else if (numero1 > numero2) {
        resultado = "El número mayor es: " + numero1 + "\n";
        resultado += "El número menor es: " + numero2;
      } else {
        resultado = "El número mayor es: " + numero2 + "\n";
        resultado += "El número menor es: " + numero1;
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

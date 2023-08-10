<template>
  <div>
    <h2>Calcular Porcentaje</h2>
    <input v-model.number="porcentaje" placeholder="Ingrese el porcentaje">
    <input v-model.number="numero" placeholder="Ingrese el número">
    <button @click="calcularPorcentaje">Calcular</button>
    <p v-if="resultado !== ''">{{ resultado }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      porcentaje: null,
      numero: null,
      resultado: ''
    };
  },
  methods: {
    calcularPorcentaje() {
      if (this.porcentaje !== null && this.numero !== null) {
        const operacion = (this.numero * (this.porcentaje / 100));
        this.resultado = `El ${this.porcentaje} % de ${this.numero} es ${operacion.toFixed(2)}`;
      } else {
        this.resultado = '';
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

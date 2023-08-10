<template>
  <div>
    <!-- Usamos v-for para crear dos campos de entrada -->
    <div v-for="(input, index) in inputs" :key="index">
      <h1>{{ input.msg }}</h1>
      <input v-model="input.msg">
    </div>
    
    <!-- Botón para cambiar o restaurar el valor del segundo campo de entrada -->
    <button @click="toggleValor">Cambiar Valor</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      inputs: [
        { msg: 'Hello World!' },
        { msg: 'Hola Mundo!' }
      ],
      newValue: 'Nuevo Valor',
      originalValue: 'Hola Mundo!' // Valor original del segundo campo
    };
  },
  methods: {
    toggleValor() {
      // Verificamos si el valor actual es el valor original
      if (this.inputs[1].msg === this.originalValue) {
        this.inputs[1].msg = this.newValue; // Cambiamos al nuevo valor
      } else {
        this.inputs[1].msg = this.originalValue; // Restauramos el valor original
      }
    }
  }
};
</script>

<template>
  <div>
    <h2>Elementos Comunes en Arrays</h2>
    <input v-model="array1Input" placeholder="Ingrese elementos para el primer array (separados por comas)">
    <input v-model="array2Input" placeholder="Ingrese elementos para el segundo array (separados por comas)">
    <button @click="encontrarElementosComunes">Encontrar</button>
    <p v-if="elementosComunes.length > 0">Elementos comunes: {{ elementosComunes }}</p>
  </div>
</template>

<script>
export default {
  data() {
    return {
      array1Input: '',
      array2Input: '',
      elementosComunes: []
    };
  },
  methods: {
    encontrarElementosComunes() {
      const array1 = this.array1Input.split(',').map(elemento => elemento.trim());
      const array2 = this.array2Input.split(',').map(elemento => elemento.trim());

      this.elementosComunes = this.elementosComunesEntreArrays(array1, array2);
    },
    elementosComunesEntreArrays(array1, array2) {
      return array1.filter(elemento => array2.includes(elemento));
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

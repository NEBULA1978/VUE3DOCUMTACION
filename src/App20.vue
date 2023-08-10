<template>
  <div>
    <h2>Mis Películas</h2>
    <div v-for="(pelicula, index) in peliculas" :key="index">
      {{ mostrarEstadoPelicula(pelicula) }}
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      peliculas: [
        {
          titulo: "El señor de los anillos",
          director: "Peter Jacson",
          vista: true
        },
        {
          titulo: "La liga de la justicia",
          director: "Zack Snyder",
          vista: false
        },
        {
          titulo: "Los vengadores: Endgame",
          director: "Joe Ruso",
          vista: true
        },
        {
          titulo: "Batman vs Superman",
          director: "Zack Snyder",
          vista: false
        }
      ]
    };
  },
  methods: {
    mostrarEstadoPelicula(pelicula) {
      let estado = pelicula.vista ? "Ya has visto" : "Te falta por ver";
      return `${estado}: "${pelicula.titulo} de ${pelicula.director}"`;
    }
  }
};
</script>

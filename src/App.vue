<template>
  <div>
    <!-- Sección para agregar usuarios -->
    <h2>Agregar Usuarios</h2>
    <form @submit.prevent="agregarUsuario">
      <input v-model="nuevoUsuario" placeholder="Nombre de usuario">
      <button>Añadir Usuario</button>
    </form>

    <!-- Sección para mostrar/ocultar la lista de usuarios -->
    <h2>Lista de Usuarios</h2>
    <button @click="toggleLista">{{ mostrarLista ? 'Ocultar' : 'Mostrar' }} Lista</button>

    <!-- Lista de usuarios con botones para borrar y guardar -->
    <ul v-if="mostrarLista">
      <li v-for="(usuario, index) in usuarios" :key="index">
        {{ usuario }}
        <button @click="borrarUsuario(index)">Borrar</button>
        <button @click="guardarUsuario(index)">Guardar</button>
      </li>
    </ul>

    <!-- Sección para mostrar/ocultar la lista de usuarios guardados -->
    <h2>Lista Guardada</h2>
    <button @click="toggleListaGuardada">{{ mostrarListaGuardada ? 'Ocultar' : 'Mostrar' }} Lista Guardada</button>

    <!-- Lista de usuarios guardados -->
    <ul v-if="mostrarListaGuardada">
      <li v-for="(usuario, index) in usuariosGuardados" :key="index">{{ usuario }}</li>
    </ul>
  </div>
</template>

<script>
export default {
  data() {
    return {
      nuevoUsuario: '',
      usuarios: ['Usuario 1', 'Usuario 2', 'Usuario 3'],
      usuariosGuardados: [],
      mostrarLista: false,
      mostrarListaGuardada: false
    };
  },
  methods: {
    // Agregar un nuevo usuario a la lista
    agregarUsuario() {
      if (this.nuevoUsuario.trim() !== '') {
        this.usuarios.push(this.nuevoUsuario);
        this.nuevoUsuario = ''; // Limpiamos el campo de entrada
      }
    },
    // Borrar un usuario de la lista
    borrarUsuario(index) {
      this.usuarios.splice(index, 1);
    },
    // Guardar un usuario en la lista de usuarios guardados
    guardarUsuario(index) {
      const usuario = this.usuarios[index];
      this.usuariosGuardados.push(usuario);
    },
    // Alternar la visibilidad de la lista de usuarios
    toggleLista() {
      this.mostrarLista = !this.mostrarLista;
    },
    // Alternar la visibilidad de la lista de usuarios guardados
    toggleListaGuardada() {
      this.mostrarListaGuardada = !this.mostrarListaGuardada;
    }
  }
};
</script>

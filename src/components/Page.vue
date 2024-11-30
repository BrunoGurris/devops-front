<template>
  <div class="col-12 col-lg-6 border rounded p-3">
    <h4 class="text-center mb-4">{{ pageName }}</h4>

    <div class="mb-2">
      <label class="form-label m-0">Nome:</label>
      <input type="text" class="form-control" v-model="name">
    </div>
    <div class="mb-2">
      <label class="form-label m-0">E-mail:</label>
      <input type="text" class="form-control" v-model="email">
    </div>
    <div class="mb-2 text-end">
      <button type="button" class="btn btn-success" @click="createStudent()">Criar</button>
    </div>

    <h5 class="mt-5">Lista de estudantes</h5>
    <table class="table table-bordered">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">Nome</th>
          <th scope="col">E-mail</th>
          <th scope="col">Ação</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(student, n) in students" :key="n">
          <th scope="row">{{ student.id }}</th>
          <td>{{ student.name }}</td>
          <td>{{ student.email }}</td>
          <td><button type="button" class="btn btn-outline-danger btn-sm" @click="deleteStudent(student.id)"><i
                class="bi bi-trash"></i></button></td>
        </tr>
      </tbody>
    </table>

    <div class="text-center" v-if="students.length == 0">
      <p>Nenhum estudante cadastrado</p>
    </div>
  </div>
</template>

<script>
import axios from 'axios';

export default {
  name: 'App',

  data() {
    return {
      name: '',
      email: '',

      students: []
    }
  },

  props: ['pageName', 'url'],

  methods: {
    async getAllStudents() {
      try {
        this.students = []
        const response = await axios.get(`${this.url}/students`)
        this.students = response.data
      } catch (error) {
        console.log(error)
      }
    },

    async createStudent() {
      try {
        await axios.post(`${this.url}/students`, {
          name: this.name,
          email: this.email
        })

        this.name = ''
        this.email = ''
        this.getAllStudents()
      } catch (error) {
        alert(error.response.data.error)
      }
    },

    async deleteStudent(id) {
      try {
        await axios.delete(`${this.url}/students/${id}`)
        this.getAllStudents()
      } catch (error) {
        alert(error.response.data.error)
      }
    }
  },

  created() {
    this.getAllStudents()
  }
}
</script>

<style></style>
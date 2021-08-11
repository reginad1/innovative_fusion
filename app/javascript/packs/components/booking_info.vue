<template>
  <div>
    <v-card-title class="text-h5 center">
      Book with Innovative Fusion
    </v-card-title>
    <v-form>
      <v-container>
        <v-row>
          <v-col
            cols="12"
            md="6"
          >
            <v-text-field
              v-model="firstname"
              label="First name"
              required
            ></v-text-field>
          </v-col>

          <v-col
            cols="12"
            md="6"
          >
            <v-text-field
              v-model="lastname"
              label="Last name"
              required
            ></v-text-field>
          </v-col>

          <v-col
            cols="12"
            md="12"
          >
            <v-text-field
              v-model="email"
              label="E-mail"
              required
            ></v-text-field>
          </v-col>
          <v-col
            cols="12"
            md="12"
          >
            <v-text-field
              v-model="message"
              label="Message"
              required
            ></v-text-field>
          </v-col>
        </v-row>
      </v-container>
      <v-btn
      class="mr-4"
      style="float:right;"
      @click="submitForm"
    >
      submit
    </v-btn>
    </v-form>
  </div>
</template>

<script>
import axios from 'axios';
export default {

  data: () => ({
    firstname: "",
    lastname: "",
    email: "",
    message: ""
  }),
  methods:{
    submitForm(){
      var data = {
        "firstname": this.firstname,
        "lastname": this.lastname,
        "email": this.email,
        "message": this.message
      }
      axios.post('/booking', data)
            .then((res) => {
                //Perform Success Action
            })
            .catch((error) => {
                // error.response.status Check status code
            }).finally(() => {
                //Perform action in always
            });
        }
    }
}

</script>

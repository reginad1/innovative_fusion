<template>
  <v-container class="grey lighten-5">
    <groupA/>
    <groupB/>
    <groupC/>
  </v-container>
</template>



<script>
import groupA from './group_a.vue'
import groupB from './group_b.vue'
import groupC from './group_c.vue'

  export default {
  components: { 
      groupA,
      groupB,
      groupC
    },
    data: () => ({
      
    }),
  }
</script>

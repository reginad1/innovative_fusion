<template>
  <div style="padding:15px;">
    <groupA/>
    <groupB/>
    <groupC/>
  </div>
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

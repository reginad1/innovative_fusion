<template>
  <div style="padding:15px;">
    <topBanner/>
    <groupA/>
    <groupB/>
    <groupC/>
  </div>
</template>



<script>
import topBanner from './top_banner.vue'
import groupA from './group_a.vue'
import groupB from './group_b.vue'
import groupC from './group_c.vue'

  export default {
  components: { 
      topBanner, 
      groupA,
      groupB,
      groupC
    },
    data: () => ({
      
    }),
  }
</script>

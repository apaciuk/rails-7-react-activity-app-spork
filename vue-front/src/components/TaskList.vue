<template>
  <div>
    <div v-for="todo in allTTodos" :key="todo.id">
      <TaskItem :todo="todo" />
    </div>
  </div>
</template>

<script>
import TaskItem from "@/components/TaskItem";
import { mapGetters } from "vuex";

export default {
  components: {
    TaskItem,
  },
  computed: {
    ...mapGetters(["allTTodos", "completed"]),
  },
};
</script>

<style scoped>
</style>
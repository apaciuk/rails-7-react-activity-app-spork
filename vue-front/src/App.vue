<template>
  <div id="app" class="container">
    <TaskInput />
    <TaskStatus />
    <TaskList />
  </div>
</template>

<script>
import TaskInput from "@/components/TaskInput";
import TaskList from "@/components/TaskList";
import TaskStatus from "@/components/TaskStatus";

export default {
  name: "App",
  components: {
    TaskInput,
    TaskList,
    TaskStatus
  }
};
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>

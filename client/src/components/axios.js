import axios from "axios";

const instance = axios.create({
  baseURL: window._env_.API_URL
});

export default instance;

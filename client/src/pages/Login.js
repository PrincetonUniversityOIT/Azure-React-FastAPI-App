import '../App.css';
import 'emerald-ui/lib/styles.css';
import axios from 'axios';
import TextField from 'emerald-ui/lib/TextField';
import Button from 'emerald-ui/lib/Button';
import { useNavigate } from 'react-router-dom';
import { useForm, Controller } from 'react-hook-form';
import qs from 'query-string';

function Login() {
  const { control, handleSubmit } = useForm();
  const navigate = useNavigate();

  const onSubmit = (data) => {
    data = {
      grant_type: "password",
      username: data.username,
      password: data.password
    }
    axios.post("http://localhost:8000/token", qs.stringify(data)).then(res => {
      sessionStorage.setItem("token", res.data.access_token);
      navigate("/");
    }).catch(error => { alert(error.response.data.detail); })
  }

  return (
    <div className="App" style={{ justifyContent: "center", paddingLeft: "150px", paddingRight: "150px" }}>
      <h1>Login</h1>
      <form onSubmit={handleSubmit(onSubmit)}>
        <Controller
          name="username"
          control={control}
          render={
            ({ field: { onChange, value } }) => (
              <TextField
                onChange={onChange}
                value={value}
                label="Username"
              />
            )
          }
        />
        <Controller
          name="password"
          control={control}
          render={
            ({ field: { onChange, value } }) => (
              <TextField
                onChange={onChange}
                value={value}
                label="Password"
                type="password"
              />
            )
          }
        />
        <Button type="submit" color="info">Log In</Button>
      </form>
    </div>
  )
}

export default Login;
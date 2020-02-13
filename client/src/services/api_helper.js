import axios from "axios";
const api = axios.create({
  baseURL: "http://localhost:3000"
});

//AUTH

// LOGIN 
export const loginUser = async loginData => {
  const resp = await api.post(`/auth/login`, loginData);
  api.defaults.headers.common.authorization = `Bearer ${resp.data.auth_token}`;
  console.log(resp);
  
  LocalStorage(resp);
  return resp.data;
  // console.log(resp.data.user);
  
};

// REGISTER
export const registerUser = async (registerData) => {
  try {
    // console.log("hello")
  const resp = await api.post('/signup', registerData);
  console.log(resp);
  
    api.defaults.headers.common.authorization = `Bearer ${resp.data.auth_token}`;
    localStorage.setItem('authToken', resp.data.auth_token);
    localStorage.setItem('user', resp.data.user);
    return resp.data;
  } catch(e) {
    console.log(e.response);
    if (e.response.status === 422) {
      return {errorMessage: "Username is already associated with a chef, please login to continue"}
    }
  }
}

const LocalStorage = resp => {
  localStorage.setItem("authToken", resp.data.auth_token);
  localStorage.setItem("user", resp.data.user);
};

// VERIFY USER
export const verifyUser = () => {
  const token = localStorage.getItem("authToken");
  if (token) {
    api.defaults.headers.common.authorization = `Bearer ${token}`;
  }
};

// ALL RECIPES 
export const recipesAll = async () => {
  const resp = await api.get(`/recipes/`);
  console.log(resp);
  return resp.data;
};

// CREATE RECIPES
export const recipesCreate = async recipeData => {
  const resp = await api.post(`/recipes/`, recipeData);
  console.log(resp);
  return resp.data;
};

// INDIVIDUAL RECIPE
export const recipeSingle = async id => {
  const resp = await api.get(`/recipes/${id}`);
  return resp.data;
};

// UPDATE RECIPE
export const recipeUpdate = async (id, recipeData) => {
  const resp = await api.put(`/recipes/${id}`, recipeData);
  return resp.data;
};

// DELETE INDIVIDUAL RECIPE
export const recipeDelete = async id => {
  const resp = await api.destroy(`/recipes/${id}`);
  return resp.data;
};

// GET INGREDIENTS OF RECIPE 
export const ingredientsrecipe = async id => {
  const resp = await api.get(`/recipes/${id}/ingredients`);
  return resp.data;
};

// CREATE INGREDIENT FOR RECIPE
export const ingredientCreate = async (id, ingredientData) => {
  const resp = await api.post(`/recipes/${id}/ingredients`, ingredientData);
  return resp.data;
};

// INDIVIDUAL INGREDIENT
export const ingredientSingle = async (r_id, i_id) => {
  const resp = await api.get(`/recipes/${r_id}/ingredients/${i_id}`);
  return resp.data;
};

// UPDATE INGREDIENT
export const ingredientUpdate = async (r_id, i_id, ingredientData) => {
  const resp = await api.put(`/recipes/${r_id}/ingredients/${i_id}`, ingredientData);
  return resp.data;
};

// DELETE INGREDIENT
export const ingredientDelete = async (r_id, i_id) => {
  const resp = await api.destroy(`/recipes/${r_id}/ingredients/${i_id}`);
  return resp.data;
};
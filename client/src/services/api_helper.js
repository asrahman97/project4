import axios from "axios";
const api = axios.create({
  baseURL: "http://localhost:3000/"
});

//AUTH

// LOGIN
export const loginUser = async loginData => {
  const resp = await api.post(`/auth/login`, loginData);
  api.defaults.headers.common.authorization = `Bearer ${resp.data.auth_token}`;

  LocalStorage(resp);
  return resp.data;
};

// REGISTER
export const registerUser = async registerData => {
  try {
    const resp = await api.post("/signup", registerData);

    api.defaults.headers.common.authorization = `Bearer ${resp.data.auth_token}`;
    localStorage.setItem("authToken", resp.data.auth_token);
    localStorage.setItem("user", resp.data.user);
    return resp.data;
  } catch (e) {
    console.log(e.response);
    if (e.response.status === 422) {
      return {
        errorMessage:
          "Username is already associated with a chef, please login to continue"
      };
    }
  }
};

const LocalStorage = resp => {
  localStorage.setItem("authToken", resp.data.auth_token);
  localStorage.setItem("user", resp.data.user);
  localStorage.setItem("user_id", resp.data.id);
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
  return resp.data;
};

// CREATE RECIPES
export const recipesCreate = async recipeData => {
  const resp = await api.post(`/recipes/`, recipeData);
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
  const resp = await api.delete(`/recipes/${id}`);
  return resp.data;
};

// GET REVIEWS OF RECIPE
export const reviewsRecipe = async id => {
  const resp = await api.get(`/recipes/${id}/reviews`);
  return resp.data;
};

// CREATE REVIEW FOR RECIPE
export const reviewCreate = async (id, reviewData) => {
  const resp = await api.post(`/recipes/${id}/reviews`, reviewData);
  return resp.data;
};

// INDIVIDUAL REVIEW
export const reviewSingle = async (r_id, i_id) => {
  const resp = await api.get(`/recipes/${r_id}/reviews/${i_id}`);
  return resp.data;
};

// UPDATE REVIEW
export const reviewUpdate = async (r_id, i_id, reviewData) => {
  const resp = await api.put(`/recipes/${r_id}/reviews/${i_id}`, reviewData);
  return resp.data;
};

// DELETE REVIEW
export const reviewDelete = async (r_id, i_id) => {
  const resp = await api.delete(`/recipes/${r_id}/reviews/${i_id}`);
  return resp.data;
};

// Get individual user

export const getUser = async id => {
  const resp = await api.get(`/users/${id}`);
  return resp.data;
};

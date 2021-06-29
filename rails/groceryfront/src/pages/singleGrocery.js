import React from "react";
import { Link } from "react-router-dom";

// destructuring the props needed to get our post, including router prop match
const SingleGrocery = ({ groceries, match, edit, deleteGroceries }) => {
  const id = parseInt(match.params.id); //get the id from url param
  const grocery = groceries.find((grocery) => grocery.id === id);

  ////////////////////
  // Styles
  ///////////////////
  const div = {
    textAlign: "center",
    border: "3px solid green",
    width: "80%",
    margin: "30px auto",
  };

  return (
    <div style={div}>
      <h1>{grocery.grocery}</h1>
      <h2>{grocery.quantity}</h2>
      <button onClick={(event) => edit(grocery)}>Edit</button>
      <Link to="/">
        <button>Go Back</button>
      </Link>
    </div>
  );
};

export default SingleGrocery;
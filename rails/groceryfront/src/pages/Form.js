import React, { useState } from "react";

const Form = ( { initialGrocery, handleSubmit, buttonLabel, history }) => {
    const [formData, setFormData] = useState(initialGrocery);

    const handleChange = (event) => {
        setFormData({...formData, [event.target.name]: event.target.value });
    };

    const handleSubmisson = (event) => {
        event.preventDefault();
        handleSubmit(formData);
        history.push("/");
    }


    return (
        <form onSubmit={handleSubmisson}>
        <input
          type="text"
          onChange={handleChange}
          value={formData.grocery}
          name="grocery"
        />
        <input
          type="text"
          onChange={handleChange}
          value={formData.quantity}
          name="quantity"
        />
        <input type="submit" value={buttonLabel} />
      </form> 
    )
    
    
}

export default Form
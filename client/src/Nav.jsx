import React from 'react'
import { Link } from "react-router-dom";

const Nav = ({ user, setUser }) => {

    function handleLogoutClick() {
      fetch("/signout", { method: "DELETE" }).then((r) => {
        if (r.ok) {
          setUser(null);
        }
      });
    }



  return (
    <>
      <header>
        <div>
          <Link to="/">Home</Link>
        </div>
        <div>
          {user ? (
            <button onClick={handleLogoutClick}>Logout</button>
          ) : (
            <>
              <Link to="/signup">Signup</Link>
              <Link to="/login">Login</Link>
            </>
          )}
        </div>
      </header>
    </>
  );
};

export default Nav
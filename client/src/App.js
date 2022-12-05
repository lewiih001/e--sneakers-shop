import React, { useEffect, useState } from "react";
import { Routes, Route } from "react-router-dom";
import SignUp from "./SingUp";
import Login from "./Login";
import Nav from "./Nav";
import Home from "./Home";

function App() {
  const [user, setUser] = useState(null);

  useEffect(() => {
    // auto-login
    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);

  return (
    <>
      <Nav user={user} setUser={setUser} />
      <main>
        {user ? (
          <Routes>
            <Route path="/" element={<Home user={user} />} />
          </Routes>
        ) : (
          <Routes>
            <Route path="/signup" element={<SignUp setUser={setUser} />} />
            <Route path="/login" element={<Login setUser={setUser} />} />
            <Route path="/" element={<Home />} />
          </Routes>
        )}
      </main>
    </>
  );
}

export default App;

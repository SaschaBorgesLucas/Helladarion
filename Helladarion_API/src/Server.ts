import express from "express";
const porta = 3000;
const app = express();

app.get("/revistas", (req, res) =>{
    res.send("funfando");
});

app.get("/capas", (req, res) =>{
    res.send("funfando");
});

app.listen(porta, ()=>{
    console.log(`servidor em execução na porta http://localhost:${porta}/`);
});
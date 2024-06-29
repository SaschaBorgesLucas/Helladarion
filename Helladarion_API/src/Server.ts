import express from "express";
import { PrismaClient } from "@prisma/client";
const porta = 3000;
const app = express();
const prisma = new PrismaClient;

app.get("/revistas", async (req, res) =>{
    const revistas = await prisma.revistas.findMany();
    res.json(revistas);
});

app.get("/capas", (req, res) =>{
    res.send("funfando");
});

app.listen(porta, ()=>{
    console.log(`servidor em execução na porta http://localhost:${porta}/\n
                 Revistas: http://localhost:${porta}/revistas`);
});
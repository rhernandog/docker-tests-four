const express = require("express");

const app = express();

app.get("/", (req, res) => {
	res.send("<h1>HOME PAGE</h1><p>Simple web app using node and express, package as a Docker image.</p>");
});

app.get("/about", (req, res) => {
	res.send("<h1>THIS IS THE ABOUT ROUTE.</h1>")
});

app.listen(8080, () => {
	console.log("Express server listening on Port 8080");
});

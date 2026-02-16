const express = require("express");
const routes = require("./routes");
const metricsMiddleware = require("./metrics");

const app = express();

app.use(express.json());
app.use(metricsMiddleware);

app.use("/", routes);

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`App running on port ${PORT}`);
});

module.exports = app;

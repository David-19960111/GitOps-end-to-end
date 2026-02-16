const client = require("prom-client");

const collectDefaultMetrics = client.collectDefaultMetrics;
collectDefaultMetrics();

module.exports = async (req, res, next) => {
  if (req.url === "/metrics") {
    res.set("Content-Type", client.register.contentType);
    res.end(await client.register.metrics());
  } else {
    next();
  }
};

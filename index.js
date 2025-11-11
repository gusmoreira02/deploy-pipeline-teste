const express = require('express');

const app = express();
const PORT = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('Hello, mundo! Deploy automático do deploy-pipeline-teste 🚀');
});

app.listen(PORT, () => {
  console.log(`Servidor ouvindo na porta ${PORT}`);
});

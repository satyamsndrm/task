const express = require("express");
const MySql = require("sync-mysql");
const configObj = require("../config/config.js").configObj;
const request = require("supertest");

const router = express.Router();
var conn = "";

router.get("/name/:id", (req, res) => {
  let id = req.params.id;
  let resp_obj = {
    status: false,
    data: []
  };
  conn = new MySql(configObj);
  let query = `SELECT * FROM student WHERE id =${id}`;
  let result = conn.query(query);
  if (result.length !== 0) {
    resp_obj = {
      status: true,
      data: result
    };
  }
  res.json(resp_obj);
});
router.get("/class/:id", (req, res) => {
  let id = req.params.id;
  let resp_obj = {
    status: false,
    data: []
  };
  conn = new MySql(configObj);
  let query = `SELECT * FROM student_class WHERE id =${id}`;
  let result = conn.query(query);
  if (result.length !== 0) {
    resp_obj = {
      status: true,
      data: result
    };
  }
  res.json(resp_obj);
});
router.get("/reports/:id", async (req, res) => {
  let id = req.params.id;
  conn = new MySql(configObj);
  const client = request(req.app);
  var resp_1 = await client.get("/student/name/" + id);
  var resp_2 = await client.get("/student/class/" + id);
  let resp_obj = {
    status: false,
    data: []
  };
  resp_1 = resp_1.body;
  resp_2 = resp_2.body;
  if (resp_1.data.length !== 0 && resp_2.data.length !== 0) {
    let data = {
      id: resp_1.data[0].id,
      name: resp_1.data[0].name,
      student_id: resp_2.data[0].student_id,
      class: resp_2.data[0].class
    };
    let query = `INSERT INTO student_reports VALUES 
            (${data.id},'${data.name}','${data.student_id}', 
            '${data.class}' )`;
    let result = conn.query(query);
    console.log(result);
  }
  res.json(resp_obj);
});

module.exports = router;

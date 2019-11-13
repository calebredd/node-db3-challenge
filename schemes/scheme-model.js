const db = require("../data/data-config");
function find() {
  return db("schemes");
}
function findById(id) {
  return db("schemes").where({ id });
}
function add(schemeData) {
  return db("schemes")
    .insert(schemeData)
    .then(ids => ({ id: ids[0] }));
}
function update(id, schemeData) {
  return db("schemes")
    .where({ id })
    .update(schemeData);
}
function remove(id) {
  return db("schemes")
    .where({ id })
    .del();
}
function findSteps(id) {
  return db("schemes")
    .join("steps", "steps.scheme_id", "schemes.id")
    .select("steps.step_number", "steps.instructions")
    .where("schemes.id", id);
}
// function addStep(stepData, id) {
//   return db("steps").insert(stepData);
// }

module.exports = { find, findById, findSteps, add, update, remove };

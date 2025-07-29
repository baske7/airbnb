const express = require("express");
const router = express.Router();
const db = require("../db");
router.get("/", async (req, res) => {
  try {
    const [rows] = await db.query(`
      SELECT p.*, MAX(pi.imageUrl) AS imageUrl
      FROM properties p
      LEFT JOIN propertyImages pi ON p.propertyId = pi.propertyId AND pi.isFeatured = 1
      WHERE p.isActive = 1
      GROUP BY p.propertyId
    `);
    res.json(rows);

  } catch (err) {
    res.status(500).json({ error: "Database error" });
  }
});
router.get("/:id", async (req, res) => {
  const propertyId = req.params.id;

  try {
    const [rows] = await db.query(
      `
      SELECT p.*, MAX(pi.imageUrl) AS imageUrl
      FROM properties p
      LEFT JOIN propertyImages pi ON p.propertyId = pi.propertyId AND pi.isFeatured = 1
      WHERE p.propertyId = ?
      GROUP BY p.propertyId
      `,
      [propertyId]
    );

    if (rows.length === 0) {
      return res.status(404).json({ error: "Apartment not found" });
    }

    res.json(rows[0]);

  } catch (err) {
    console.error(err);
    res.status(500).json({ error: "Database error" });
  }
});
module.exports = router;

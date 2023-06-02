const pg = require("pg");
const dotenv = require("dotenv").config;

const { Pool } = pg;

const connectionString = "postgres://postgres:docker@localhost:5432/hopcamp";
const pool = new Pool({ connectionString: connectionString });

const seedCampsites = async () => {
  try {
    // Connect to the database
    const client = await pool.connect();
    const { default: campsitesCollection } = await import("./campSitesDG.js");

    // Insert the faker data into the table
    await Promise.all(
      campsitesCollection.map(async (campsite) => {
        const query = {
          text: "INSERT INTO campsites (name, available, demand, instantBook, descriptions, capacity, restrictions, amenities, price, type, imgURL) VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11)",
          values: [
            campsite.name,
            campsite.available,
            campsite.demand,
            campsite.instantBook,
            campsite.descriptions,
            campsite.capacity,
            campsite.restrictions,
            campsite.amenities,
            campsite.price,
            campsite.type,
            campsite.imgURL,
          ],
        };
        await client.query(query);
      })
    );

    // Release the database connection
    client.release();

    console.log("Faker data seeded successfully!");
  } catch (error) {
    console.error("Error seeding faker data:", error);
  } finally {
    // Close the database pool
    pool.end();
  }
};

seedCampsites();
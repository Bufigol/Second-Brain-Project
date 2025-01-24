/* global use, db */
// MongoDB Playground
// Use Ctrl+Space inside a snippet or a string literal to trigger completions.

const database = "second_brain_project";
const collection = "notes";

// Create a new database.
use(database);

// Create a new collection.
db.createCollection(collection, {
  validator: {
    $jsonSchema: {
      bsonType: "object",
      required: ["nota_id", "type", "content", "metadata"],
      properties: {
        _id: {
          bsonType: "objectId",
          description:
            "Identificador único de MongoDB, generado automáticamente.",
        },
        nota_id: {
          bsonType: "string",
          description: "Referencia a la ID en la base de datos MySQL.",
        },
        type: {
          bsonType: "string",
          enum: ["note", "task", "idea", "resource"],
          description: "Tipo de contenido (nota, tarea, idea, recurso).",
        },
        content: {
          bsonType: "object",
          required: ["text", "html", "plain_text"],
          properties: {
            text: {
              bsonType: "string",
              description: "Contenido principal.",
            },
            html: {
              bsonType: "string",
              description: "Versión HTML formateada del contenido.",
            },
            plain_text: {
              bsonType: "string",
              description: "Texto sin formato del contenido.",
            },
          },
        },
        metadata: {
          bsonType: "object",
          required: ["created_at", "updated_at", "author", "version"],
          properties: {
            created_at: {
              bsonType: "date", // Timestamp almacenado como Date en MongoDB
              description: "Fecha y hora de creación.",
            },
            updated_at: {
              bsonType: "date", // Timestamp almacenado como Date en MongoDB
              description: "Fecha y hora de última actualización.",
            },
            author: {
              bsonType: "string",
              description: "ID del usuario autor.",
            },
            version: {
              bsonType: "number",
              description: "Número de versión del contenido.",
            },
          },
        },
        attachments: {
          bsonType: "array",
          items: {
            bsonType: "object",
            required: ["type", "url"],
            properties: {
              type: {
                bsonType: "string",
                enum: ["image", "document", "audio"],
                description: "Tipo de adjunto (imagen, documento, audio).",
              },
              url: {
                bsonType: "string",
                description: "URL del almacenamiento del adjunto.",
              },
              metadata: {
                bsonType: "object",
                properties: {
                  size: {
                    bsonType: "number",
                    description: "Tamaño del archivo adjunto en bytes.",
                  },
                  mime_type: {
                    bsonType: "string",
                    description: "Tipo MIME del archivo adjunto.",
                  },
                  extracted_text: {
                    bsonType: "string",
                    description: "Texto extraído mediante OCR o transcripción.",
                  },
                },
              },
            },
          },
        },
        semantic_analysis: {
          bsonType: "object",
          properties: {
            keywords: {
              bsonType: "array",
              items: {
                bsonType: "string",
              },
              description: "Lista de palabras clave relacionadas al contenido.",
            },
            sentiment: {
              bsonType: "object",
              properties: {
                score: {
                  bsonType: "number",
                  description: "Puntuación de sentimiento del contenido.",
                },
                category: {
                  bsonType: "string",
                  enum: ["positive", "neutral", "negative"],
                  description: "Categoría del sentimiento del contenido.",
                },
              },
            },
            entities: {
              bsonType: "array",
              items: {
                bsonType: "object",
                properties: {
                  name: {
                    bsonType: "string",
                    description: "Nombre de la entidad reconocida.",
                  },
                  type: {
                    bsonType: "string",
                    enum: ["persona", "organización", "lugar"],
                    description: "Tipo de entidad reconocida.",
                  },
                },
              },
            },
          },
        },
        connections: {
          bsonType: "array",
          items: {
            bsonType: "object",
            required: ["nota_id", "strength", "type"],
            properties: {
              nota_id: {
                bsonType: "string",
                description: "ID de la nota relacionada.",
              },
              strength: {
                bsonType: "number",
                description: "Fuerza de la relación.",
              },
              type: {
                bsonType: "string",
                enum: ["references", "depends", "similar"],
                description: "Tipo de relación.",
              },
            },
          },
        },
        tags: {
          bsonType: "array",
          items: {
            bsonType: "object",
            required: ["name", "type"],
            properties: {
              name: {
                bsonType: "string",
                description: "Nombre de la etiqueta.",
              },
              type: {
                bsonType: "string",
                enum: ["user", "system", "automatic"],
                description: "Tipo de etiqueta.",
              },
            },
          },
        },
        context: {
          bsonType: "object",
          properties: {
            source: {
              bsonType: "string",
              enum: ["web", "mobile", "desktop"],
              description: "Fuente del contenido.",
            },
            location: {
              bsonType: "object",
              properties: {
                lat: {
                  bsonType: "number",
                  description: "Latitud de la ubicación.",
                },
                lon: {
                  bsonType: "number",
                  description: "Longitud de la ubicación.",
                },
              },
            },
          },
        },
      },
    },
  },
});

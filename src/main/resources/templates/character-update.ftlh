<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Character</title>
    <link rel="stylesheet" href="/css/style.css">
    <style>
        body { font-family: sans-serif; background: #f4f7f6; padding: 40px; }
        .form-container { background: white; padding: 30px; border-radius: 8px; max-width: 500px; margin: auto; box-shadow: 0 4px 6px rgba(0,0,0,0.1); }
        input, textarea { width: 100%; padding: 10px; margin: 10px 0; border: 1px solid #ddd; border-radius: 4px; box-sizing: border-box; }
        button { background: #4CAF50; color: white; padding: 12px; border: none; border-radius: 4px; cursor: pointer; width: 100%; font-size: 16px; }
        button:hover { background: #45a049; }
        .cancel-link { display: block; text-align: center; margin-top: 15px; color: #666; text-decoration: none; }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Update Character: ${character.name}</h2>
        <form action="/characters/save" method="POST">
            <input type="hidden" name="characterId" value="${character.characterId}">

            <label>Name:</label>
            <input type="text" name="name" value="${character.name!}" required>

            <label>Universe:</label>
            <input type="text" name="universe" value="${character.universe!}" required>

            <label>Role:</label>
            <input type="text" name="role" value="${character.role!}">

            <label>Power Level:</label>
            <input type="text" name="power" value="${character.power!}">

            <label>Image URL:</label>
            <input type="text" name="species" value="${character.species!}">

            <label>Summary:</label>
            <textarea name="description" rows="5">${character.description!}</textarea>

            <button type="submit">Update Character</button>
            <a href="/characters" class="cancel-link">Back to Gallery</a>
        </form>
    </div>
</body>
</html>
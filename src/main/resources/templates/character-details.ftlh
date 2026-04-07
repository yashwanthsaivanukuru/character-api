<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${character.name} Details</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>
    <nav>
        <a href="/characters">Back to Gallery</a>
    </nav>

    <main class="details-container">
        <h1>${character.name}</h1>
        <img src="${character.species!'/default.png'}" alt="${character.name}" style="width:300px;">
        <p><strong>Universe:</strong> ${character.universe}</p>
        <p><strong>Role:</strong> ${character.role}</p>
        <p><strong>Power:</strong> ${character.power}</p>
        <p>${character.description!}</p>

        <hr>
        <div class="actions">
            <#-- Step 9: Links to Update and Delete -->
            <a href="/characters/update/${character.characterId}">Edit Character</a> | 
            <a href="/characters/delete/${character.characterId}" 
               class="btn-delete" 
               onclick="return confirm('Are you sure you want to delete this character?')">
               Delete Character
            </a>
        </div>
    </main>
</body>
</html>
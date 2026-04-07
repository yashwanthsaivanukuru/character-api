<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Character - Character Gallery</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>
    <nav>
        <a href="/characters">Home</a> | 
        <a href="/about">About</a> | 
        <a href="/characters/create">Add a Character</a>
    </nav>
    <hr>
    <main>
        <div class="form-container">
            <h1>Add a New Character</h1>
            
            <form action="/characters/save" method="POST">
                
                <p>Name: <br>
                    <input type="text" name="name" required placeholder="e.g. Spider-Man">
                </p>
                
                <p>Universe: <br>
                    <input type="text" name="universe" required placeholder="e.g. Marvel">
                </p>
                
                <p>Role: <br>
                    <input type="text" name="role" required placeholder="e.g. Hero">
                </p>
                
                <p>Power Level: <br>
                    <input type="number" name="power" min="1" max="100" required>
                </p>
                
                <p>Image URL: <br>
                    <input type="url" name="species" required placeholder="Paste .jpg or .png link here">
                </p>
                
                <p>Summary: <br>
                    <textarea name="description" rows="4" cols="50" required placeholder="Tell us about the character..."></textarea>
                </p>
                
                <button type="submit" class="btn-submit">Submit Character</button>
            </form>
        </div>
    </main>
</body>
</html>
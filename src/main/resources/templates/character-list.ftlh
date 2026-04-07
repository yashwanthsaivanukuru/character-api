<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${title!"Character Gallery"}</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>
    <header style="background-color: #2c3e50; padding: 15px; color: white; text-align: center;">
        <nav>
            <a href="/characters/create" style="color: white; text-decoration: none; font-weight: bold;">Add New Character</a>
            <span style="margin: 0 10px;">|</span>
            <a href="/characters/about" style="color: white; text-decoration: none; font-weight: bold;">About</a>
        </nav>
    </header>

    <main style="max-width: 1200px; margin: 0 auto; padding: 20px;">
        
        <section style="text-align: center; margin: 40px 0;">
            <div style="background: white; padding: 30px; border-radius: 8px; box-shadow: 0 2px 10px rgba(0,0,0,0.1); display: inline-block;">
                <form action="/characters" method="GET">
                    <input type="text" name="search" placeholder="Search by name or universe..." 
                           value="${search!}" style="width: 400px; padding: 10px; border: 1px solid #ddd; border-radius: 4px;">
                    <br><br>
                    <button type="submit" style="width: 100%; padding: 12px; background-color: #4CAF50; color: white; border: none; border-radius: 4px; cursor: pointer; font-size: 16px;">
                        Search
                    </button>
                </form>
                <a href="/characters" style="display: block; margin-top: 10px; color: #666; text-decoration: none; font-size: 14px;">Clear</a>
            </div>
        </section>

        <div style="display: grid; grid-template-columns: repeat(auto-fill, minmax(250px, 1fr)); gap: 20px;">
            <#if characterList?has_content>
                <#list characterList as character>
                    <div style="background: white; border: 1px solid #eee; border-radius: 12px; padding: 20px; text-align: center; box-shadow: 0 4px 6px rgba(0,0,0,0.05);">
                        <img src="${character.species!'/default.png'}" alt="${character.name}" style="width: 100%; height: 250px; object-fit: cover; border-radius: 8px; margin-bottom: 15px;">
                        <h2 style="margin: 10px 0;">${character.name}</h2>
                        <p style="color: #666; margin-bottom: 15px;">${character.universe!}</p>
                        
                        <div style="border-top: 1px solid #eee; padding-top: 15px;">
                            <a href="/characters/${character.characterId}" style="color: #3498db; text-decoration: none; font-weight: bold;">Details</a>
                            <span style="margin: 0 10px; color: #ddd;">|</span>
                            <a href="/characters/delete/${character.characterId}" 
                               style="color: #e74c3c; text-decoration: none; font-weight: bold;" 
                               onclick="return confirm('Are you sure you want to delete this character?')">Delete</a>
                        </div>
                    </div>
                </#list>
            <#else>
                <div style="grid-column: 1 / -1; text-align: center; padding: 50px;">
                    <p>No characters found matching your criteria.</p>
                    <a href="/characters">Reset Gallery</a>
                </div>
            </#if>
        </div>
    </main>
</body>
</html>
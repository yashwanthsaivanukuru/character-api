


# Project: Wizarding World Character API
**Name:** Yashwanth Vanukuru 
**Character Theme:** Harry Potter

## Project Documentation
This API manages a collection of characters from the Harry Potter universe, stored in a Neon PostgreSQL cloud database.

## Installation
1. Clone the repository: `git clone https://github.com/yashwanthsaivanukuru/character-api.git`
2. Open the project in IntelliJ or VS Code.
3. Ensure you have the Neon database credentials in your `application.properties` file.
4. Run the application using Maven: `./mvnw spring-boot:run`

## API Endpoints
* `GET /api/characters` - Returns a list of all characters.
* `GET /api/characters/{id}` - Returns a single character by their ID.
* `POST /api/characters` - Adds a new character to the database.
* `PUT /api/characters/{id}` - Updates an existing character's information.
* `DELETE /api/characters/{id}` - Removes a character from the database.
* `GET /api/characters/category/{category}` - Filters characters by universe or species.
* `GET /api/characters/search?name=substring` - Searches for characters by a partial name.

## Demo Video
**OneDrive Link:** https://uncg-my.sharepoint.com/:v:/g/personal/y_vanukuru_uncg_edu/IQCsulTaIDzkRI2YOjK3eewFAeoifR3DDq-7hWD9BDNbZ5Q?e=burnwi
# Pokemon Generation Analyzer Setup
### Setting up the Database
- Locate the sqldump file titled "Pokemon_data.sql" within the .zip and extract it locally
- Open XAMPP and create a database titled "pokemon_database" using the dump file

### Creating a Test User
- Inside the "pokemon_database" tab within phpmyadmin, navigate to the "privileges" tab
- Create a new user named "testuser" with password "123" and host set to "localhost"
- Supply this user with `SELECT` features only

### Setting up the Web Visualization
- Locate the pokemon.php and pokemon.html files within the .zip
- Extract those files and insert them into your `xampp/htdocs/xampp` directory
- Navigate to "localhost/xampp" on your preferred web browser
- Select "pokemon.html" to load the visualization 

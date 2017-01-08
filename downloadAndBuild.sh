
# Create directory to hold data and db to keep our root dir clean
mkdir temp
cd temp

# Download raw data. If folders already exist then error will be shown
git clone https://github.com/openmundi/world.db.git
git clone https://github.com/openfootball/stadiums.git
git clone https://github.com/openfootball/players.git
git clone https://github.com/openfootball/national-teams.git
git clone https://github.com/openfootball/world-cup.git
git clone https://github.com/openfootball/euro-cup.git
git clone https://github.com/openfootball/africa-cup.git
git clone https://github.com/openfootball/north-america-gold-cup.git
git clone https://github.com/openfootball/copa-america.git
git clone https://github.com/openfootball/clubs.git
git clone https://github.com/openfootball/at-austria.git
git clone https://github.com/openfootball/ch-confoederatio-helvetica
git clone https://github.com/openfootball/de-deutschland.git
git clone https://github.com/openfootball/eng-england.git
git clone https://github.com/openfootball/es-espana.git
git clone https://github.com/openfootball/it-italy.git
git clone https://github.com/openfootball/europe-champions-league.git
git clone https://github.com/openfootball/mx-mexico.git
git clone https://github.com/openfootball/br-brazil.git
git clone https://github.com/openfootball/north-america-champions-league.git
git clone https://github.com/openfootball/copa-libertadores.git
git clone https://github.com/openfootball/copa-sudamericana.git

# delete the existing sqlite db
rm football.db

# Setup the database with world data
sportdb --dbname football.db setup --worldinclude world.db

sportdb --dbname football.db update --include 'stadiums'
sportdb --dbname football.db update --include 'players'

# World Cup is dependent on national-teams
sportdb --dbname football.db update --include 'national-teams'
sportdb --dbname football.db update --include 'world-cup'
sportdb --dbname football.db update --include 'euro-cup'
sportdb --dbname football.db update --include 'africa-cup'
sportdb --dbname football.db update --include 'north-america-goldf-cup'
sportdb --dbname football.db update --include 'copa-america'

sportdb --dbname football.db update --include 'clubs'
sportdb --dbname football.db update --include 'at-austria'
sportdb --dbname football.db update --include 'ch-confoederatio-helvetica'
sportdb --dbname football.db update --include 'de-deutschland'
sportdb --dbname football.db update --include 'eng-england'
sportdb --dbname football.db update --include 'es-espana'
sportdb --dbname football.db update --include 'it-italy'

sportdb --dbname football.db update --include 'europe-champions-league'

sportdb --dbname football.db update --include 'mx-mexico'
sportdb --dbname football.db update --include 'br-brazil'

sportdb --dbname football.db update --include 'north-america-champions-league'
sportdb --dbname football.db update --include 'copa-libertadores'
sportdb --dbname football.db update --include 'copa-sudamericana'

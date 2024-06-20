set -o errexit
REQUIREMENTS_FILE="projet/venv/requirements.txt"

# Install dependencies from requirements.txt
pip install -r "$REQUIREMENTS_FILE"

# Navigate to the directory containing manage.py
cd projet/projet

# Collect static files
python manage.py collectstatic --no-input

# Apply database migrations
python manage.py migrate

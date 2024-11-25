#!/usr/bin/env bash
# Exit on error
set -o errexit

# Criar e ativar o ambiente virtual, se necessário
python -m venv venv

# Modify this line as needed for your package manager (pip, poetry, etc.)
pip install -r requirements.txt

python manage.py makemigrations

# Apply any outstanding database migrations
python manage.py migrate

# Convert static asset files
python manage.py collectstatic --no-input
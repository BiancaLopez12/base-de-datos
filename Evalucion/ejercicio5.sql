SELECT max(age), license_id FROM drivers_license JOIN person
WHERE gender LIKE "female"
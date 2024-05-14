SELECT p.name, d.car_make, d.car_model, d.plate_number FROM drivers_license d JOIN person p ON p.license_id = d.id
WHERE gender like "male" AND height <=70
ORDER by height DESC
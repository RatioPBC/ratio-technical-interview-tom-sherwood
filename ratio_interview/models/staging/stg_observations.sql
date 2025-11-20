SELECT
DATE,
PATIENT as patient_id,
ENCOUNTER as encounter_id,
CODE,
DESCRIPTION,
"VALUE",
UNITS,
"TYPE"
from {{ source('synthea','observations') }}
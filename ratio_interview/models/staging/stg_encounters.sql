SELECT
Id as encounter_id,
"START"::date as encounter_start,
STOP::date as encounter_end,
PATIENT as patient_id,
ORGANIZATION,
PROVIDER,
PAYER,
ENCOUNTERCLASS,
CODE,
DESCRIPTION,
BASE_ENCOUNTER_COST,
TOTAL_CLAIM_COST,
PAYER_COVERAGE,
REASONCODE,
REASONDESCRIPTION
from {{ source('synthea','encounters') }}
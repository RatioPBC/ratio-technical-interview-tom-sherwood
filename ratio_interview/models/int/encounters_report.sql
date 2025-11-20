with three_encs as(
    select 
        DATE_PART('year', encounter_start) AS year_value
        , DATE_PART('month', encounter_start) AS month_value
        ,patient_id
        ,count(distinct encounter_id) as encounter_count
    from {{ ref('stg_encounters')}} as enc
    GROUP BY
        year_value
        ,month_value
        ,patient_id
    HAVING
        encounter_count > 3
)

select
    te.patient_id,
    pat.first_name,
    pat.last_name,
    pat.RACE,
    pat.ETHNICITY,
    pat.GENDER,
from three_encs te
left join {{  ref('stg_patients') }} pat on te.patient_id = pat.patient_id

-- SELECT
--     enc.*,
--     pat.RACE,
--     pat.ETHNICITY,
--     pat.GENDER,
-- from {{ ref('stg_encounters')}} as enc
-- left join {{ ref('stg_patients') }} as pat on enc.patient_id = pat.patient_id
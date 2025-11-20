# Questions

## Request from Stakeholder #1

_Produce a report that identifies patients with more than 3 encounters in a single month, including summaries of patient demographics and observation-specific details._

1. Explore and describe the relationship between patients, encounters, and observations. How would you model these tables and relationships in a dbt project?
1. Describe your approach to building out a new dbt project and the structure you would use to organize models. Go ahead and set up this structure and prepare the data related to patients, encounters, and observations.
1. Assume new CSVs are being processed and loaded daily. Describe how you would check for and handle data quality issues in the dbt project.
1. Build a model that can be exported as a report on patients with frequent encounters.
1. How would you approach documenting  this model and the dependent report for both technical teammates and non-technical stakeholders?

## Request from Stakeholder #2

_Produce a report that calculates the average healthcare expenses by race and gender, with a filter to exclude outliers (values more than 3 standard deviations from the mean)._

1. Explore the available source data. What source tables will you need to answer this question? What are their relationships?
1. Create the dbt model(s) needed to answer the question of healthcare expenses for different demographics. This does not yet need to fully answer the question in the prompt.
1. The stakeholder is concerned about data anomalies in the medications table. How would you validate the data and communicate potential issues to the client?
1. What questions do you have in order to finish the building the requested report? At this point you can complete the query accounting for any new information.
1. How would you build out a data quality monitoring system for the data in this dbt project? What metrics would you track and how would you ensure any issues identified can be acted upon? How would you evolve this dbt project over time knowing that monitoring data quality is a high priority?

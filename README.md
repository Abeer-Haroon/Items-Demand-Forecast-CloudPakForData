# Items Demand Forecast on Cloud Pak For Data
A data science project that forecasts the demand of various clothing items for different stores using a time series model on **IBM SPSS Modeler**. The entire data science pipeline is built on **Cloud Pak for Data**, which is an end-to-end analytics platform.

- Data Understanding - Cognos Dashboards
- Data Preparation - Data Refinery
- Modeling & Evaluation - SPSS Modeler
- Deployment

### Cloud Pak for Data

IBM Cloud Pak for Data System is an all-in-one cloud-native Data and AI platform in a box, that enables you to collect, organize and analyze data with unprecedented simplicity and agility, within a pre-configured, governed environment.

### Steps to recreate the demo

Create a new project > Import from File > Select the zipped folder >  **Create Project**


![Demo](Images/CreatingProject.gif)

- Click on **Sales Insights** to view the Dashboards created for the project.

![Demo](Images/ProjectPage-Dashboards.gif )

- Click on **SPSS Flow** to view the SPSS Models created for forecasting the demand of different clothing items in multiple stores.

![Demo](Images/SPSS.gif )

- Click on Forecast to view the end RShiny Web application. Within the RShiny code, add the scoring urls for the deployed models.

![Demo](Images/Shiny.gif )

### Organize

To assign business terms and categories or to apply governance rules and policies, click on **Organize** section.

- Add the terms and categories in **Business Glossary** tab.


![Demo](Images/businessglossary.gif )

- Add the governance rules and policies.

![Demo](Images/governance.gif )

- Commit the project to a local git and then push it.

![Demo](Images/commit.gif )

- Create a project release and click on it to view the assets in the project.

![Demo](Images/projectRelease.gif)

- Create a deployment for SPSS models.
![Demo](Images/creatingdeployment.gif)

You'll get the scoring url/API endpoint as shown below.

![Demo](Images/api.png)

- Add these endpoints to the RShiny app for each model and run the application!


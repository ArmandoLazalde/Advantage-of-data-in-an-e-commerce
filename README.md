# E-commerce-Sales-Report

## E-commerce Sales Analytics

Dashboard Report📊

![imagen](https://user-images.githubusercontent.com/99104425/225097640-8ec22d67-0c02-4b5f-9cfd-0c3321e66cd9.png)

For the development of this project, I will build a synthetic database simulating an e-commerce business of electronic products. The source and inspiration are coming from the following datasets:

- [Sales Product Data](https://www.kaggle.com/datasets/knightbearr/sales-product-data)
- [Marketing: Electronic Products and Pricing Data](https://www.kaggle.com/datasets/arashnic/e-product-pricing)
- [Electronic products and pricing data](https://data.world/datafiniti/electronic-products-and-pricing-data)

You can find the notebook in my Kaggle notebook: 
- [Electronic products and pricing data](https://www.kaggle.com/code/armandodelahoya/e-commerce-analytics-report)

###Context

We are freelance data analysts and we are hired for the following project: 
- E-commerce of electronic products wants to expand its product portfolio, so it would like to know better its customers and their respective consumption patterns, but it has only one year of operation and does not have a large database about them, however, that does not limit us because we can take advantage of the data provided. 

**Business problem:**
- We wish to expand the product catalog offered based on the sales obtained during the last year. 

**Strategic business goal:**
- Generate a visualization and analysis tool that allows us to know our customers better.

**Requirements:**
- An easy-to-use and easy-to-understand visualization tool
- Give insights on customer profiles and their respective consumption patterns
    - Which products are the most purchased?
    - What are the most popular brands
    - What was the best month for sales? How much was earned that month?
    - What City had the highest number of sales?
    - What products are most often sold together?
    - Average time of day when purchases are made
 

###Results 

Although the dataset manipulation can be done in this notebook thanks to Pandas, I decided to integrate SQL for practice, the dashboard was done in Power BI, below, you can find the script in my GitHub repository and the link to Power BI Service to see the final result

- [Github repository](https://github.com/ArmandoLazalde/E-commerce-Sales-Report)
- [Dashboard proposal 1](https://app.powerbi.com/view?r=eyJrIjoiZjI5Y2I0NTMtNGFiNy00OTNhLThhMzAtNWFlMTAzOTUzMDAyIiwidCI6IjAyNDlhNTcxLWI5YTItNGNhMi1iOTNiLTIwYzc3MDg4ZjA4YiJ9&pageName=ReportSection)
- [Dashboard proposal 2]()


![imagen](https://user-images.githubusercontent.com/99104425/225099195-8f3c6e23-a50d-44c7-834c-950552e73e40.png)
![imagen](https://user-images.githubusercontent.com/99104425/225099337-22bc389e-4ac1-463e-9f8c-85d28d21a0fc.png)

###Conclusions

 - Which products are the most purchased?
     - The three best-selling products fall into the smart tv category, the first is XBR-X50E Sony brand, second one LG B7A Series, and Samsung QF7 Series
 - What are the most popular brands?
     - Samsung, LG, Acer, HP
 - What was the best month for sales? How much was earned that month?
     - The best month was december, 15.4M dollars of revenue
 - What City had the highest number of sales?
     - The best city is San Francisco, 31M dollars of revenue
 - What products are most often sold together?
     - Apple Iphone 11 Pro Max and Lenovo Ideapad Slim are one of the most commonly purchased products
 - Average time of day when purchases are made
     - Customers prefer to shop between 11 a.m. and 12 a.m. and between 6 p.m. and 8 p.m.

# "Why do you buy a car?": assessing consumers' choice through rational choice theory
by <a href="https://github.com/EmiliaSicari">Emilia Sicari</a> Sicari</a> and <a href="https://github.com/rafalopezv">Rafael Lopez V.</a>

# Instructions
This is the final assignment for the course for the course <a href="https://github.com/HertieDataScience/SyllabusAndLectures" target="_blank">MPP-E1180: Introduction to Collaborative Social Science Data Analysis</a> taught by <a href="https://github.com/christophergandrud
" target="_blank">@ChristopherGandrud</a> at the <a href="https://hertie-school.berlin" target="_blank">Hertie School of Governance</a>  in Spring 2016.

According to the <a href="https://github.com/HertieDataScience/SyllabusAndLectures">Syllabus</a>, the purpose of the final assignment is to pose an interesting research question and try to answer it using data analysis and standard academic practices. Results have to be effectively communicated in a variety of formats:

- Presentation engagingly showing research question and key findings to a general academic audience );

- Standard academic paper (max 5000 words), properly cited laying out your research question, literature review, data, methods, and findings;

- Website designed to convey the research to a general audience.

All these files are included in this repository. 

The deadline in March 13, 2016. 

# Description of the project 

The aim of our research project is understading **how the rise in inequality, economic growth, population growth,  usage of public transportation modes and the presence of cars influence the purchase of new cars in Singapore**. 
Conversely to the standard rational choiche theory - according to which people use their complete knowledge to allocate their resources among different goods in a way to maximise theor utility - there might be other factors influencing consumers' choices. According to the Behavioural approach, other "irrational" factors such as social and emotional variables drive purchasing choices. Among them, reference points - to be conceived as mental thresholds that people set in order to compare themselves with others - are particularly relavant in contexts of high inequality. In such cases, people's consumption behaviour might be motivated by the desire to improve their position in the social ladder and acquire acknowledgement of their status by consuming certain types of goods. For instance, a person might prefer a BMW to a Mercedes Benz because it is more popular among hir/her acquaintences, rather than because of its better quality. 
Therefore, in order to understand to what extent the decision of buyng a car can be rational, we gathered and analysed data on economic growth, inequality, population trends, usage of public transportation and number of cars between 1995 and 2014 in Singapore. What makes the Singapore an interesting case study is that not only it has a developed and flourishing economy (which implies a growing gdp per capita), but also it has a very wide and well functioning public transportation network covering almost the entire extension of the island. In addition, it has a very strict policy aimed at deterring the purchase of cars, that obliges car owner to buy a certificate of car entitlement that can cost even more 70.000 Singaporean dollars. Therefore, not only this makes cars a luxury good in the island, but also it implies that the price of a car purchased in Singapore can be even more than five times higher than in other countries.

All the data are available automatically by running the R codes. No authorization is needed in order to access to any of these sources.

# Structure of the paper

The paper is structured as follows:
1. Introduction
2. Literature review
3. General overview of the project
    + Research question and justification
    + Description of variables
    + Hypotheses
    + Methodology
    + Data sources and gathering
    + Cleaning, processing and merging data sets
4. Statistical analysis
    + Descriptive statistics and central tendency
    + Correlation analysis
    + Inferential statistics
5. Conclusions

#Content of the repository

All the above mentioned elements are included into this repository, which is structured as follows:

## Folder structure and files description

    .
    ├── Final_assignment.Rmd                # A Markdown file containing ou final paper used to produce the pdf version
    ├── Final_assigmnent.pdf                # The final paper in pdf version
    ├── Preliminary_analyses.R              # An R script containing the preliminary analyses done with our data (gathering, cleaning, merging)
    ├── world.cities.R                      # An R script containing graphs comparing public transportation in Singapore with other world cities
    ├── bibliography.bib                    # A text file citing sources cited in the final paper
    ├── packages.bib                        # A text file citing the packages used in our analysis
    ├── cities.transport.statistics.csv.    # A csv file including transportation statistics comparing Singapore with other countries in the world
    ├── ObservationData_zqpldgb.csv         # A csv file containingthe time series of data on bottom 90% average income in Singapore from 1995 until 2014
    ├── ObservationData_rblkfmd.csv         # A csv file containing the time series of data on top 10% average income in Singapore from 1995 until 2014,
    ├── README.md                           # Readme file with explaining our work and the content of the repository
    ├── Presentation                        # A folder containing all the material related to the presentation
    │   ├── Presentation.Rmd                # The Markdown file with our final presentation used to produce the html version
    │   ├── Presentation.html               # The html version of our presentation
    |   ├── Figures.R                       # A R script containing all the figures plotted in the presentation
    |   ├── Images_presentation             # A folder with the images included in the presentation in jpeg and ong format
    ├── Website                             # A folder containing all the materials used to build the website
   

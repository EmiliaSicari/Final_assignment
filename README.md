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
- Introduction
- Literature review
- General overview of the project
    + Research question and justification
    + Description of variables
    + Hypotheses
    + Methodology
    + Data sources and gathering
    + Cleaning, processing and merging data sets
- Statistical analysis
    + Descriptive statistics and central tendency
    + Correlation analysis
    + Inferential statistics
- Conclusions

#Content of the repository

All the above mentioned elements - excluding the website - are included into this repository, which is structured as follows:

## Folder structure and files description

    .
    ├── Final Academic Paper                    # a folder containing all the materials used to write the final academic paper
    │   ├── bibliography.bib                    # a text file containing all the sources referred to in the final paper
    |   ├── cities.transport.statistics.csv.    # a csv file including transportation statistics comparing Singapore with other countries in the world
    |   ├── Final_Paper.pdf                     # pdf version of the final paper 
    |   ├── Final_Paper.Rmd                     # a markdown file used to produce the pdf version of the final paper
    |   ├── fina.data.frame.csv                 # the final data frame containing all the time series of the variables used for our analysis
    |   ├── Graphs.R                            # a R script including the graphs plotted in the final paper
    |   ├── ObservationData_zqpldgb.csv         # a csv file containing the time series of data on bottom 90% average income in Singapore from 1995 until 2014    
    |   ├── ObservationData_rblkfmd.csv         # a csv file containing the time series of data on top 10% average income in Singapore from 1995 until 2014
    |   ├── packages.bib                        # a text file with all the citations of the R packages used
    |   ├── population.trends.xls               # an excel with data on Singapore's residents and non residents then imported into R in csv format
    |   ├── Preliminary_analyses                # a R script including all the preliminary analyses done with data (gathering, cleaning, merging, etc.)
    |   ├── world.cities.R                      # a R script containing graphs comparing public transportation in Singapore with other world cities   
    ├── Final Presentation                      # a repository containing the final presentation updated to the final version of the analysis and its related materials
    |   ├── Final_Presentation.html             # html version of the final presentation
    |   ├── Final_Presentation.pdf              # pdf version of the final presentation
    |   ├── Final_Presentation.Rmd              # markdown version of the presentation from which extract the pdf and htlm versions
    |   ├── Images_presentation                 # a folder containing all the pictures in png, jpeg and gif format included in the presentation
    ├── Preliminary Presentation                # a folder containing the presentationwith the preliminary results
    |   ├── Figures.R                           # a R script with the graphs plotted in the presentation
    |   ├── Images_presentation                 # a folder containing all the pictures in png, jpeg and gif format included in the presentation
    |   ├── Preliminary_Presentation.html       # htlm version of the preliminary presentation
    |   ├── Preliminary_Presentation.Rmd        # markdown version of the preliminary presentation
   
## Link to the website

To visit the website, click on the following link: https://emiliasicari.github.io/Final_assignment/

To get access to the folder containing the materials used to build the website go to <a href="https://github.com/EmiliaSicari/Final_assignment/tree/gh-pages" gh-pages branch</a> 

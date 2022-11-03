## Store Data
data <- read.csv("%FILEPATH%/COVID19_line_list_data.csv")

# AGE
## Our Hypothesis is that older people have a greater risk to covid

### First we seperate the dataset into two parts, dead and alive
dead = subset(data, death_dummy == 1)
alive = subset(data, death_dummy == 0)

### We try to find the mean/average age in both datasets
mean(dead$age, na.rm = TRUE)
mean(alive$age, na.rm = TRUE)

### This doesn't prove the data is significant to hold the hypothesis as true, thus we do a T test at confidence level 99%!
### if p-value < 0.05, we accept the hypothesis and consider results to be significant
t.test(alive$age, dead$age, alternative="two.sided", conf.level = 0.99)


### Since, p-value ~ 0, so we reject the null hypothesis and conclude that this is statistically significant

# GENDER
## Our Hypothesis is that gender has no correlation with COVID deaths

### We again seperate the data into two datasets, male and female
men = subset(data, gender == "male")
women = subset(data, gender == "female")

### We find the % deaths in both genders
mean(men$death_dummy, na.rm = TRUE)
mean(women$death_dummy, na.rm = TRUE)

### Here we find that men have higher % of deaths. To declare the hypothesis is false we need to do a T test on the results
t.test(men$death_dummy, women$death_dummy, alternative="two.sided", conf.level = 0.99)

### 99% confidence: men have from 0.8% to 8.8% higher chance of dying








# Find if Age and/or Gender have any effect on COVID casualities

## Goal

From the dataset, find if there is any biasness towards Gender or Age, for COVID deaths.

## Process

Convert the data into two sets and perform T-test on the results to conclude it's significance based on the p-value

## Age

- The mean/average age of deaths reported is 68.58621
- The mean/average age of patients who withstood the virus, is 48.0772
- Before declaring biasness, we perform T test on 99% confidence level. To declare our Hypothesis to be true, we need the p value to be less than 0.05
- Since the p value obtained is 2.2e-16, which is ~0. We can safely declare our hypothesis to be true

## Gender

- The mean/average % of deaths in male patients is 0.08461538, which approximately 8.5%
- The mean/average % of deaths in femail patients is 0.03664921, which approximately 3.7%
- Running the T test again, with 99% confidence level, we get a p value of 0.002105
- Infact, the 99 percent confidence interval is 0.007817675 - 0.088114665, which means men have from 0.78% to 8.8% higher chance of dying

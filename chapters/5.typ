#import "../style.typ": citefig
#import "../functions.typ": chapter, textcite, parencite, note

#chapter(
  [Early Identification of Dropouts During the Special Forces Selection Program],
  label: [
    Huijzer, R., Blaauw, F. J., De Wit, A., De Jonge, P., & Den Hartigh, R. J. R. (2024).
    Early  Identification  of  Dropouts During the Special Forces Selection Program.
    _PsyArXiv_.
    #link("https://doi.org/10.31234/osf.io/nbs6j")
  ],
  abstract: [
    Special forces selection is a highly demanding process that involves exposure to high levels of psychological and physical stress resulting in dropout rates of up to 80%.
    To identify who likely drops out, we assessed a group of 249 recruits, every week of the program, on their experienced psychological and physical stress, recovery, self-efficacy, and motivation.
    Using both ordinary least squares regression and state-of-the-art machine learning models, we aimed to find the model that could predict dropout best.
    Furthermore, we inspected the best model to identify the most important predictors of dropout and to evaluate the predictive performance in practice.
    Via cross-validation, we found that linear regression performed best while remaining interpretable, with an Area Under the Curve (AUC) of 0.69.
    We also found that low levels of self-efficacy and motivation were significantly associated with dropout.
    Additionally, we found that dropout could often be predicted multiple weeks in advance and that the AUC score may underestimate the real-world predictive performance.
    Taken together, these findings offer novel insights in the use of prediction models on repeated measurements of psychological and physical processes, specifically in the context of special forces selection.
    This offers opportunities for early intervention and support, which could ultimately improve selection success rates.
  ]
)

== Introduction

Special forces are often considered the most elite military units, with the potential to significantly impact strategic military outcomes.
They are typically composed of highly trained and motivated individuals who are able to operate in high-stakes environments which are both psychologically and physically demanding.
However, dropout rates during the selection process are close to 80%
(e.g., #parencite(<gayton2015prospective>)).
This is a concern for both the recruits and the military as it incurs a personal toll on the recruits and is costly for the military.
Scientifically, a major challenge is identifying potential dropouts early in the selection period via accurate predictive models.
Such models could allow for early intervention on potential future dropouts by intervening the relevant psychological and physical processes.

The relatively scarce previous research investigated dropout by comparing test scores from before the selection period with the final dropout or graduation decision.
Psychological tests included, for instance, personality questionnaires and showed that a higher emotional stability and conscientiousness were associated with graduation
(e.g., #parencite(<jackson2012military>); #parencite(<sorlie2020person>); #parencite(<huijzer2022personality>); #parencite(<rolland1998psychometric>); #parencite(<tedeholm2021personality>)).
In other research, psychological hardiness was associated with graduation among 1,138 special forces recruits @bartone2008psychological and 178 Norwegian border patrol soldiers @johnsen2013psychological.
On the other hand, in a study including 73 South African special forces, hardiness and self-efficacy were not associated with graduation @beer2014exploring.
In another study, higher self-efficacy was significantly associated with graduation among 380 special forces recruits @gruber2009effects.

Physical tests typically include fitness, strength, and endurance tests.
For example, in a study among 69 Finnish soldiers, baseline information of aerobic fitness significantly predicted graduation @vaara2020can.
In a study on 160 Swedish police counterterrorism intervention units including various psychological and physical tests, the authors found that only running capacity was a significant predictor of graduation @tedeholm2023predictors
A study on 800 special forces recruits showed that both psychological and physical tests were significantly associated with graduation @farina2019physical.
Finally, a follow-up study on 117 special forces soldiers found that physical characteristics of the body, such as a lower percentage body fat and fat mass were predictors for physical performance and graduation @farina2022anthropometrics.

Despite some evidence for the role of psychological and physical factors in predicting dropout, a main issue of previous studies is that they showed limited effects and different predictor combinations.
For instance, when comparing agreeableness between military recruits and a civilian control group, agreeableness was found to be lower after training @jackson2012military, whereas this was not found in two recent studies @huijzer2022personality @tedeholm2023predictors.
Such contradicting results could be due to theoretical and methodological factors.
Theoretically, a commando profile could be composed of different combinations of characteristics that could allow an individual to perform in highly psychologically and physically demanding situations
(e.g., #parencite(<hartigh2016dynamic>)).
Accordingly, and methodology-related, an important factor contributing to dropout is how recruits respond to the stress during the heavy selection program.
This cannot be derived from psychological and physical measures taken at one point during the selection program.
Thus, an important question is: how do recruits actually respond to, and recover from, the stress to which they are exposed?
Such a question can be answered by measuring recruits during the selection period on relevant psychological and physical processes of stress and recovery.

Recent research provided initial evidence that repeated measures can be used to predict dropout.
For instance, one longitudinal study on elite soldiers found that recruits who voluntarily dropped out exhibited an increase in emotional or physical pain and a decrease in self-efficacy up to three days before dropping out @saxon2020continuous.
Similarly, in a study on 46 male and female recruits in the Australian Army basic military training course, higher stress and recovery, as measured via the Short Recovery and Stress Scale @kellmann2019recovery, were associated with a higher risk of delayed completion @tait2022factors.
Similar results have been found in sports.
For example, in a study on 135 adolescent elite athletes, lower recovery and higher stress states as measured by the Acute Recovery and Stress Scale (ARSS) were followed by depressive, burnout, and insomnia symptoms @gerber2022perceived.
In a study on 74 middle and long-distance runners, recovery and exertion were considered some of the most important variables for predicting injuries
(#parencite(<lovdal2021injury>), Figure 4).
These findings are promising as they suggest that dropout, either voluntary or involuntary (e.g., due to injury), can be predicted in advance based on measures taken during selection or training periods.

Building upon first efforts of predicting dropout from military programs and the increasing interest in the psychological and physical stress monitoring during army training, important statistical strides can be made.
Most notably, while previous studies often applied traditional statistical methods, i.e., how variables were associated with dropout or graduation, they often did not report the predictive performance.
This means that associations between variables could be too small to be useful in practice or they could be wrong due to overfitting @yarkoni2017choosing.
Ideally, a study would report predictive performance for multiple models to avoid overfitting and dependence on one model, and use repeated measures to allow for prediction of dropout in advance.
For a recent example in the context of the marine corps, see #textcite(<dijksma2022development>).

The current study aimed to assess the experienced psychological and physical stress and recovery of recruits during the selection weeks while improving upon the statistical methods used in previous research.
In line with recommendations from previous literature, we specifically focused on the experiences of self-efficacy, motivation, and psychological and physical stress and recovery @hartigh2022resilience.
We compared various classical and state-of-the-art machine learning models via cross-validation.
In addition, we explored the moment at which valid predictions of dropout could be made (e.g., one day, one week, or three weeks in advance).
Such knowledge could lead to a better understanding of the dropout process, and to targeted interventions in practice.

#block([
== Method

=== Participants

The sample for this study consisted of 249 male special forces recruits, ranging in age from 18 to 35 years.
Prior to their involvement in the study, active informed consent was obtained from each recruit.
The information letter informed participants about the study's purpose, procedures, and potential risks, as well as their right to withdraw from the study at any time.
The participants were diverse in terms of their military experience, with some being new recruits while others had prior experience in different branches of the armed forces.
Due to the sensitive nature of the data, more detailed information about the participants could not be made available.
], breakable: false)

#block[
=== Measures

During the selection period that lasted up to 16 weeks, we asked the following self-efficacy and motivation questions, both in Dutch:
"How confident are you that you can complete the course?" (0 = not confident at all, 100 = very confident) and
"How motivated are you to pass the training program?" (0 = not at all motivated, 100 = very motivated).
Furthermore, we used a Dutch version of the Short Recovery and Stress Scale (SRSS), a self-report questionnaire assessing perceived stress and recovery levels @kellmann2019recovery.
The Dutch version underwent a parallel back-translation procedure @vallerand1989vers.
It was subsequently validated in a group of 385 Dutch and Flemish athletes @brauers2023monitoring.
The SRSS consists of 8 items divided into two subscales: Recovery and Stress.
Items were rated on a seven-point Likert scale, with higher scores indicating greater levels of recovery or stress.
The Recovery subscale evaluates an individual's current state in comparison to their best recovery state ever, with items such as "Physical performance capacity" and "Mental performance capacity".
The Stress subscale assesses an individual's current state relative to their highest stress state ever, including items like "Muscle stress" and "Lack of inspiration", see #textcite(<kellmann2019recovery>) for more information.
Over the course of the study, the recruits completed the questionnaire weekly, resulting in a total of 1652 responses.
On average, we received about 6 responses per person.
The number of responses per participant varied due to individuals dropping out of the selection process before the end of the study.
The data was collected using an electronic questionnaire, which was administered via a web-based platform that we built for this project.
The collection occurred at the start of the training week, which was typically on Monday morning at 0800 hours.
]

=== Analysis

We processed the data to include the following 13 columns: _id_, _week_, _motivation_, _self-efficacy_, 8 SRSS items, and whether the individual drops out in the week after the response.
Here, we truncated the data at 13 weeks, given that the data was only collected for 14 out of 16 weeks.

Next, we analyzed the model in three ways.
We consider none of these ways as definitive, but instead consider each of these ways as a tool to evaluate the model
(e.g., #parencite(<mcshane2019abandon>); #parencite(<hofman2021integrating>)).
Firstly, we applied principles and techniques from machine learning to estimate the model's ability to predict future behaviors.
We used 12-fold cross-validation and the area under the receiver operating characteristic curve (AUC) as a performance metric, both via the MLJ.jl software package @blaom2020mlj.
The AUC is a measure of the performance of a binary classifier, where a value of 0.5 indicates random guessing and a value of 1.0 indicates perfect predictions.
We used the AUC because it is a robust metric that is not sensitive to class imbalance and is a common metric in the literature.
Furthermore, we used multiple different models to determine which one performed best in terms of predictive performance.
We fitted a binary logistic model with no intercept as our baseline model.
Next, we fitted two SIRUS models to the training data as the SIRUS model has shown to perform well in similar situations with relatively few samples and binary outcomes @benard2021sirus @huijzer2023sirus.
SIRUS is based on random forests, and, therefore, non-parametric meaning that it does not make assumptions about the distributions of the data.
Random forest-based models are robust to outliers, do not require scaling of the data, and perform very well generally @biau2016random.
Finally, we fitted a modern gradient boosting model called EvoTrees.jl @desgagne2024evotrees.
Gradient boosting models are not fully interpretable due to the large amounts of trees
(e.g., #parencite(<huijzer2023sirus>)),
but they are known to perform well in many situations
(e.g., #parencite(<chen2016xgboost>); #parencite(<ke2017lightgbm>)).
In the context of military selection, we prefer models with an optimal trade-off between predictive accuracy and interpretability.
Therefore, to combine predictive performance and interpretation @hofman2021integrating, we inspected the model that scored best on this trade-off.
Specifically, we fitted the model on the full dataset and inspected the fitted model.

Thirdly, we evaluated the predictive performance in practice.
To do so, we converted the predictions of the model in the range of 0 to 1 back to a binary outcome.
We did this by choosing a threshold and using this threshold to split the outcomes in dropout and graduate groups.
Next, we visualized the predictions of the model for different thresholds.
This helps researchers and practitioners in selecting the right balance between the number of false positives and false negatives, and provides an indication of the predictive performance in practice.

#block([
== Results

The results for the evaluation runs on the cross-validation data are shown in Figure #citefig(<fig:weekly-auc>).

#figure(
  [
    #image("../images/weekly-auc.png", width: 100%)
    #note([
      The different lines show the results for all folds in the 12-fold cross-validation.
      The average Area Under the Curve (AUC) and 1.96 $*$ standard error scores are shown in the bottom right of each graph.
    ])
  ],
  caption: "Receiver Operating Characteristic (ROC) Curves"
) <fig:weekly-auc>
], breakable: false)

In these results, the bottom two graphs both have a max tree depth of 2.
This higher depth allows these models to capture more complex interactions between variables.
However, the results show that these models do not perform markedly better than the simpler models, see #citefig(<fig:weekly-auc>).
This is likely caused by more complex models overfitting the data and could likely be solved by using more data.
In general, the logistic regression model performs best since it scores best in the trade-off between predictive performance and interpretability.
The interpetability is very high because the algorithm is very simple compared to the thousands of trees in gradient boosting models, and the performance is very comparable to the gradient boosting model.
Therefore, we inspect the logistic regression model in more detail below.

The coefficients of the logistic model, when fitted on the full dataset, are shown in #citefig(<tab:coefficients>).
When interpreting this model, note that there is variation in performance for the different cross-validation folds, see Figure #citefig(<fig:weekly-auc>).
This is why we decided post hoc to set our alpha level conservatively to 0.001 instead of the commonly used 0.05.
This lower alpha level means that we are less likely to find significant results.
Setting this level post hoc seemed reasonable as we use the p-value as just one of the many tools to interpret the model
(e.g., #parencite(<mcshane2019abandon>).
From Table #citefig(<tab:coefficients>), we can see that the variables "Self-Efficacy" and "Motivation" were significant.
The positive coefficients indicate that recruits who score higher of self-efficacy and higher on motivation are less likely to drop out.

#figure(
  {
    set text(size: 8.5pt)
    table(
      columns: (auto, auto, auto, auto, auto, auto),
      align: (left, right, right, right, right, right),
      table.hline(start: 0),
      table.header(
        [*Variable*], [*Coefficient*], [*Z-Score*], [*_p_-Value*], [*Lower 95%*], [*Upper 95%*],
      ),
      table.hline(start: 0),
      [Self-Efficacy], [1.734], [4.78], [\<0.001], [1.022], [2.446],
      [Motivation], [1.205], [3.6], [\<0.001], [0.549], [1.86],
      [Muscle Tension], [0.561], [2.18], [0.029], [0.056], [1.066],
      [Overall Stress], [-0.701], [-1.95], [0.051], [-1.405], [0.003],
      [Lack of Enthusiasm], [0.531], [1.38], [0.168], [-0.221], [1.282],
      [Negative Emotional State], [-0.493], [-1.38], [0.168], [-1.194], [0.209],
      [Emotional Balance], [0.406], [1.24], [0.215], [-0.233], [1.044],
      [Overall Recovery], [0.341], [0.89], [0.373], [-0.413], [1.096],
      [Physical Performance], [-0.343], [-0.83], [0.407], [-1.157], [0.47],
      [Mental Performance], [-0.245], [-0.6], [0.549], [-1.049], [0.56],
      [Recovery], [0.225], [0.55], [0.582], [-0.574], [1.025],
      table.hline(start: 0),
    )
  },
  caption: "Fitted Binary Logistic Regression Statistics"
) <tab:coefficients>

Next, the predictions made by the logistic regression model are visualized in Figure #citefig(<fig:weekly-thresholds>).
The figure shows that many of the dropouts were predicted correctly in the last week, which is in line with the AUC score as reported in Figure #citefig(<fig:weekly-auc>).
Furthermore, some dropouts were predicted weeks before the actual dropout event.
This suggests that the reported AUC score underestimates the actual predictive performance, since our data is modeled such that a dropout prediction is only considered correct if it is made in the week before the dropout event.

#figure(
  [
    #image("../images/weekly-thresholds.png", width: 100%)
    #note([
      This figure shows the true points of drop out for each participant in the leftmost subfigure.
      The second subfigure shows how the data was modeled.
      The aim was to train a model that could predict dropout events.
      The other three subfigures show the predictions according to the model for different thresholds.
      Different thresholds allow practitioners to select the right balance between the number of false positives and false negatives.
      This, together with the AUC, provides an indication of the predictive performance in practice.
    ])
  ],
  caption: "True Dropout Data and Predictions of the Model"
) <fig:weekly-thresholds>

== Discussion

The current study aimed to predict dropout during the special forces selection period.
To that end, we assessed the recruits on psychological and physical factors related to stress and recovery during this period.
We applied simple logistic models as well as more complex models on this data.
Next, we used various tools to analyze the model.
Specifically, we evaluated how well each model performs, we interpreted the best model, and evaluated the predictive performance in practice.
We found that a simple logistic regression model scored best on the trade-off between predictive performance and interpretability because it was interpretable and performed relatively well with an area under the curve (AUC) of 0.69.
The most complex models scored only slightly better on the AUC, which suggested we had insufficient data for more complex models.

The logistic regression model's revealed that self-efficacy and motivation were significantly related to dropout.
This provides support for earlier research that found that decreases in self-efficacy were related to dropout in a military context @saxon2020continuous.
More generally, it is in accordance with the perspective that temporal measures of self-efficacy and motivation can provide important information on an individual's resilience.
That is, motivation and self-efficacy are important psychological performance factors that ideally return to normal levels following psychological and physical stress.
When individuals loose resilience, as reflected in their self-efficacy and motivation levels, then this could be a warning signal for negative outcomes such as psychological problems or dropout
(for a review, see #parencite(<hartigh2022resilience>)).
Interesting in this regard is that more direct measures of stress and recovery experiences were less predictive of dropout.
One reason for this could be that the individual questions are more sensitive than items containing multiple questions.
Put differently, in items with multiple questions, variations tend to average out, making it less likely that the items become significantly related to dropout.
Another reason for this could be that the SRSS has, so far, only been validated in the sports context.
Despite the parallels between the sport and military context, individuals are typically exposed to more extreme psychological and physical stress during the selection program.
It could be that the experience of stress and recovery are so high for everyone, that it cannot account for the variance in the outcome anymore.

Finally, we estimated the predictive performance in practice.
We visualized the predictions of the model for different thresholds.
This showed that the model could sometimes predict dropout multiple weeks in advance with few false positives, depending on the chosen threshold.
In practice, this means that the calculated AUC scores may underestimate the predictive performance due to the way the data was modeled.
Note that choosing the right threshold is important as it determines the balance between the number of false positives and false negatives.
We showed multiple thresholds which could be used by practitioners to select the right balance.
Since the cost of missing a dropout is high, we recommend a higher threshold, which would result in more early warnings of dropout.

Future work could improve upon the current study in several ways.
First, the sample size was relatively small for machine learning models.
With a higher sample size, the variation in the cross-validation folds would most likely decrease.
Second, the frequency of measurements could be increased.
More frequent measurements could provide more opportunities for early intervention and support.
Third, this study could be complemented with quantitative measures to gain deeper insights into the personal experiences, coping strategies, and psychological states of recruits.
This could help refine the predictive models and identify potential areas for intervention.
Finally, intervention studies could be conducted based on the predictive models to design and test interventions aimed at reducing dropout rates.
These could include psychological resilience training, targeted physical conditioning programs, or personalized support strategies.

Taken together, our study builds on previous research that has highlighted the importance of psychological and physical factors in predicting dropout in special forces selection.
The longitudinal design of our study adds to this body of knowledge by demonstrating that dropout may be predicted during the selection program, offering more opportunities for early intervention and support.
Even more so, by picking the right threshold, individuals at risk of dropout could sometimes be identified weeks in advance.
This allows for targeted interventions and support, which could subsequently improve success rates and reduce the personal and human resource costs associated with high dropout rates.

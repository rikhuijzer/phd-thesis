#import "../style.typ": citefig
#import "../functions.typ": chapter, textcite, parencite, note, avoid_indent, pagebreak_to_right

#pagebreak_to_right()
= Discussion
#avoid_indent()
We investigated whether it is possible to predict who will drop out from special forces selection.
To do so, we gathered data to compare special forces operators with the general population, and special forces dropouts with graduates on personality traits, see Chapter 2.
We found that successful recruits and operators are typically less neurotic and more conscientious than dropouts compared to the general population.
These results were in line with previous research in high-stakes contexts @mcdonald1990training @lee2011prospective @campbell2010meta @braun1994personality.
However, although we found effects in the expected directions for the dropout versus graduate comparison, they were not significant and had small to medium effect sizes.

These small effect sizes make it difficult to predict who will drop out.
As other researchers put it:
The traditional focus on explanations has led to intricate theories that have little (or unknown) ability to predict future behaviors @yarkoni2017choosing.
It could be that the focus on this explanation metric has led the field to aim for explaining behavior and not predicting behavior.
This is like a car being judged on speed alone.
For a while this could lead to better cars, but at some point, manufacturers will ignore other important factors such as comfort.
With this in mind, we continued this thesis by being more focused on predictive performance.
Note that solely aiming on good predictions (or comfort) does not solve all problems either.
Too much focus on prediction could lead to intricate models that may lead to unsafe, unfair, or unreliable predictions @doshi2017towards @barredo2020explainable.
For example, to explain how a model can be unfair or unreliable, suppose we only focus on predictive performance and the model decides to filter out all individuals born in October.
The model does this because it has seen that individuals born in October are more likely to drop out.
This, so called overfitting, would be an unfair and most likely unreliable prediction.
To mitigate this, we can focus on both prediction and explanation @hofman2021integrating since overfitting is less likely to happen if we understand why a model makes certain predictions.

With our renewed focus on predictive performance, we found that not all prediction models were suitable for our research, because models had a lower stability, interpretability, or predictive performance.
In an attempt to improve this, we implemented our own version of the Stable and Interpretable RUle Sets (SIRUS) algorithm, and evaluated its predictive performance on multiple dataset, see Chapter 3.
In the end, SIRUS scored very similar in predictive performance to linear regression, see Table #citefig(<perf>).
This was surprising as the linear regression and SIRUS models fit the data very differently.
In theory, the SIRUS model should have a strong benefit for fragile systems such as personnel selection.
In such systems, negative effects are often nonlinear @taleb2020statistical @hill2024adaptation.
For example, falling from a height of 10 meters is more than 10 times as harmful as falling from a height of 1 meter.
Similarly, a recruit that takes 10 seconds longer than average on a 2800 meters run could be much more likely to dropout than a recruit that takes just 1 second longer.
In theory, the SIRUS model could capture these nonlinear effects better than linear regression.
This is because the SIRUS model is based on random forests, which functions by finding splitpoints in the data, which do not have to be linear.
However, we did not find evidence for this when testing the model on the fragile system-based datasets such as the Haberman, breast cancer, and diabetes datasets, see Table #citefig(<perf>).
There could be many reasons for this.
One could be that our implementation of the SIRUS model was not optimal.
Another could be that the datasets were not large enough to detect the more complex patterns.

Next, we tested different models, including the SIRUS model, on a large selection dataset in Chapter 4.
This dataset consisted of physical measures (e.g., number of push-ups and 2800 meters running time) and psychological measures (e.g., the NEO-PI-3 personality questionnaire) and was gathered in the first week of the selection period.
When aiming to predict who would drop out, we combined the predictions with model explanations.
For the predictions, we found that XGBoost performed best in terms of predictive performance.
However, it was not interpretable because the model is too complex to interpret directly.
Therefore, interpretations methods are needed which require a simplified representation of the model.
This simplification could hide biases or reliability issues.
With the other models, we found that SIRUS performed slightly better than the linear model on our dataset.
We also found that the SIRUS model was able to predict dropouts with a good accuracy, while retaining stability and interpretability.

Based on the ROC curves, Figure #citefig(<fig:auc>), we suspect that the SIRUS model can likely filter out about 10% of dropouts without losing graduates.
In general, we expect that models are better at predicting dropouts than graduates @hunt2011predicting @taleb2013antifragile.
This could be because many things have to go right for a recruit to graduate, while only one thing has to go wrong for an individual to drop out.
There is an infinite number of ways in which the recruit could be hindered from graduating,
also known as _black swan_ events @taleb2010black.
For example, if the recruit breaks a leg or suddenly decides to quit, he will not graduate.
Maybe the model can predict this by finding a clue in the data, such as a poor running time or a low motivation.
Conversely, since the data that the model sees is so limited, it is much harder to predict that everything will go right.

While the results of Chapter 4 are promising, they do not provide information on how recruits actually respond to the high levels of physical and psychological stress during the selection period.
Having this information could help to predict dropout more accurately.
Therefore, in Chapter 5 we used data of weekly questionnaires during the selection period instead of only one in the first week.
We found that a higher self-efficacy and motivation were significantly related to dropout.
This means that how participants responded at the start of the week was related to whether they would soon drop out.
With these and other variables, the model achieved an average AUC of 0.69, which means it could be useful in practice.
After estimating the predictive performance in practice, we found that the model could sometimes predict dropout multiple weeks in advance with few false positives.

In conclusion, to answer the question whether we can predict who will drop out from special forces selection:
From Chapter 4 and 5, it looks like we can predict dropout reasonably well.
The average AUC of about 0.7 generally means a reasonable predictive performance (e.g., #parencite(<hosmer2013applied>), p. 177).
When following recruits over time, we can sometimes predict dropout multiple weeks in advance and use that to conduct interventions.
These results are promising.
Next, it is important to confirm these results in practice since that is the only way to know with certainty how well the model works.

== Future Research

Future research could investigate whether improvements can be made in the predictive performance of psychological questionnaires.
In our research, traditional psychological measures performed poorer than physical measures or individual questions.
More specifically, the NEO-PI-3 personality test is widely used and regarded as a good measure with high validity and reliability, but it predicted poorer than physical tests in Chapter 4 and #textcite(<tedeholm2023predictors>).
This is in contrast to the experiences of both Dutch special forces operators and U.S. Navy SEALs, who reported that psychology played a more important role than physical fitness in their selection.
They witnessed many individuals with excellent physical fitness drop out, and many individuals with poor physical fitness make it through.
Similarly, in Chapter 5, the Short Recovery and Stress Scale (SRSS) appeared to perform poorer than the two, newly added, self-efficacy and motivation questions.
This could be because the self-efficacy and motivation questions were individual questions while the SRSS consisted of multiple questions for each item.
Individual questions could provide a stronger signal because more questions per item makes it more likely that the signal is averaged out.
Put differently, the chance that a participant answers "extremely likely" on one question is higher than the chance that a participant answers "extremely likely" on multiple questions.
This could imply that a high questionnaire validity and reliability does not imply a high predictive performance, at least in the context of special forces selection.

Future research could investigate whether it is possible to use individual questions instead of a subscale.
(By a subscale we mean a group of questions that are combined into one score.)
From an explanation perspective this suggestion might seem counter-intuitive because it would hinder validity evaluations, but from a prediction perspective it could be useful by increasing sensitivity.
In Chapter 5, the self-efficacy and motivation questions were individual questions which predicted dropout well.
This could be due to the aforementioned statistical fact that individual questions are more sensitive than a group of questions and therefore better able to detect differences between groups.
Alternatively, it could be due to some questions from a subscale being more applicable to the context than others.
Fitting models on individual questions could help to detect those questions that are most predictive in the specific context in which it is used.
Put differently, instead of relying on a set of pre-determined questions, future work could use a data-driven approach to find the most suitable questions for each study.
Note that this does require sufficient data, as the number of participants should typically be above 10 times as high as the number of questions to prevent overfitting (e.g., #parencite(<peduzzi1996simulation>)).

Relatedly, future research could investigate whether more specific questions or questionnaires could improve predictive performance for special contexts.
Instead of taking a questionnaire that is widely considered valid and reliable (e.g., the NEO-PI-3) researchers could aim to find those questions or questionnaires that predict well in their specific context,
such as special forces selection.
For example, the single self-efficacy and motivation questions that we used in Chapter 5 predicted dropout well.
Furthermore, researchers could continuously monitor the predictive performance of questions or questionnaires and drop those that do not predict well while occasionally adding new questions or questionnaires and evaluating those.
This pipeline of adding a new question or questionnaire, evaluating its performance, and adjusting would not be new.
It is already commonly applied in, for example, self-driving car companies.
These companies continuously adjust their models because the real world is continuously changing too.
They do this by continuously updating their models, then testing them internally, then testing them with a small group of testers on the road, and then finally sending them to the real world.
Psychology researchers could, for example, do the same by continuously updating their models, then testing them internally by interpreting the models and evaluating the predictive performance, and then sending them to the real world.

Furthermore, in this thesis, we have applied linear models and decision tree-based models.
These models could be a problem for fragile systems, such as personnel selection, where negative effects are nonlinear @taleb2020statistical.
For example, as pointed out earlier, falling from a height of 10 meters is more than 10 times as harmful as falling from a height of 1 meter.
As another example, it looks like scoring lower on an intelligence test was exponentially related to mortality (#parencite(<otoole1990intelligence>), Table 2).
Another example could be visible in the raincloud plots in Figure 2 of #textcite(<pattyn2024smart>).
In this figure on Belgian special forces, there are clear cutoff points visible in the data.
Future research could investigate whether the use of models which could fit these patterns better could improve predictive performance.
A perfect model for such a system could be one which combines the best of linear and tree-based models.
It would cut the data into different parts, and then use a linear model (or exponential) for each part.
Models like this exist (e.g., #parencite(<raymaekers2023fast>)), but might need additional constraints to improve performance on small datasets.

Finally, this thesis mentioned the story of the blind men and an elepant.
The blind men individually come to different (and incorrect) conclusions about what an elephant is.
When they together look at the elephant from different angles, they come to a much better conclusion.
This thesis has looked into widely varying methods to predict dropout from special forces selection.
We used frequentist statistics, Bayesian statistics, machine learning, single-question questionnaire items, and more.
Hopefully, combining these different perspectives resulted in a more complete picture, which will allow future researchers to see the full elephant.

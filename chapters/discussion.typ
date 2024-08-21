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
This is one of the main critiques of much psychological research:
The traditional focus on explanations has led to intricate theories that have little (or unknown) ability to predict future behaviors @yarkoni2017choosing.
Put differently, it could be that the focus on this explanation metric has led the field to solely aim for explaining behavior predicting behavior.
This could be like a cooking recipe being judged on the number of social media likes alone.
The food could look very good in images, but not be tasty.
With this in mind, we continued this thesis by being more focused on predictive performance.
Note that solely aiming on good predictions (or food taste) does not solve all problems either.
Too much focus on prediction could lead to intricate models that may lead to unsafe, unfair, or unreliable predictions @doshi2017towards @barredo2020explainable.
For example, suppose we only focus on predictive performance and the model decides to filter out all individuals born in October because, according to the data the model has seen, they are more likely to drop out.
This, so called overfitting, would be an unfair and most likely unreliable prediction.
To mitigate this, we can focus on both prediction and explanation @hofman2021integrating since overfitting is less likely to happen if we understand why a model makes certain predictions.

// Ik zou nog wel even beginnen met dat je in H3 daarom verschillende voorspellingsmodellen hebt geanalyseerd op verschillende data sets, die mogelijk ook relevant zijn voor de KCT data..... Dan kort welke modellen en dan dat het sirus een interessante kandidaat is. Vervolgens kun je verder met dat je in H4 verder bent gegaan met verschillende (combinaties van) psychologische en fysieke factoren die succes/dropout zouden kunnen voorspellen (naast persoonlijkheid ook..... (dus, paar voorbeelden)). En dat je daarbij gebruik hebt gemaakt van technieken uit H3. 
// (qua structuur staat de discussie al goed. Voor de leesbaarheid kunnen wat bruggetjes tussen hoofdstukken het beter maken. Daar zijn mijn suggesties op gericht.).
With our renewed focus on predictive performance, we found that not all prediction were suitable for our research, because of a lack of stability, interpretability, or predictive performance.
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

Next, we tested different models, including the SIRUS model, on a large selection dataset in Chapter 4.
This dataset consisted of physical measures (e.g., number of push-ups and 2800 meters running time) and psychological measures (e.g., the NEO-PI-3 personality questionnaire) and was gathered in the first week of the selection period.
When aiming to predict who would drop out, we combined the predictions with model explanations.
For the predictions, we found that XGBoost performed best in terms of predictive performance.
However, it was not interpretable because the model is too complex to interpret directly.
Therefore, interpretations methods are needed which require a simplified representation of the model.
This could hide biases or reliability issues.
With the other models, we found that SIRUS performed slightly better than the linear model on our dataset.
We also found that the SIRUS model was able to predict dropouts with a good accuracy, while retaining stability and interpretability.

Based on the ROC curves, Figure #citefig(<fig:auc>), we suspect that the SIRUS model can likely filter out about 10% of dropouts without losing graduates.
In general, we expect that models are better at predicting dropouts than graduates @hunt2011predicting @taleb2013antifragile.
For example, if we use a car as an analogy, it is easy to predict that a car with a broken engine, wheel, or door will not make it to the destination.
Conversely, it is much harder to predict that a car will make it to the destination if we only know that the engine, wheels, and doors work.
There is an infinite number of ways in which the car could be hindered from reaching the destination,
also known _black swan_ events @taleb2010black.
This does not mean that predicting graduates is impossible, or predicting dropouts is easy.
For example, maybe there are some facts about that car that are unknown to us.
Maybe the car with the broken engine is generally more reliable than other cars.

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
In practice, when filtering out 10% of dropouts in advance, we will likely not lose individuals who would have graduated.
When following individuals over time, we can sometimes predict dropout multiple weeks in advance and use that to conduct interventions.
These results are promising.
Next, it is important to confirm these results in practice since that is the only way to know with certainty how well the model works.

== Future Research

Future research could investigate whether improvements can be made in the predictive performance of psychological questionnaires.
In our research, traditional psychological measures performed poorer than physical measures or individual questions.
More specifically, the NEO-PI-3 personality test is widely used and regarded as a good measure with high validity and reliability, but it predicted poorer than physical tests in Chapter 4 and #textcite(<tedeholm2023predictors>).
This is in contrast to the experiences of both Dutch special forces operators and U.S. Navy SEALs, who reported that individuals with poor physical fitness were sometimes able to finish if they had the right mindset, and that individuals with excellent physical fitness would sometimes drop out due to a wrong mindset.
Similarly, in Chapter 5, the Short Recovery and Stress Scale (SRSS) appeared to perform poorer than a self-efficacy and a motivation question.
This could be because the self-efficacy and motivation questions were individual questions while the SRSS consisted of multiple questions for each item.
Individual questions could provide a stronger signal because more questions per item makes it more likely that the signal is averaged out.
Put differently, the chance that a participant answers "extremely likely" on one question is higher than the chance that a participant answers "extremely likely" on multiple questions.
This could imply that a high questionnaire validity and reliability does not imply a high predictive performance, at least in the context of special forces selection.

Furthermore, future research could investigate whether it is possible to use individual questions instead of a subscale.
(By a subscale we mean a group of questions that are combined into one score.)
From an explanation perspective this suggestion might seem counter-intuitive because it would hinder validity evaluations, but from a prediction perspective it could be useful by increasing sensitivity.
In Chapter 5, the self-efficacy and motivation questions were individual questions which predicted dropout well.
This could be due to statistical fact that individual questions are more sensitive than a group of questions and therefore better able to detect differences between groups.
Alternatively, it could be due to some questions from a subscale being more applicable to the context than others.
Fitting models on individual questions could help to detect those questions that are most predictive in the specific context in which it is used.
Put differently, instead of relying on a set of pre-determined questions, future work could use a data-driven approach to find the most suitable questions for each study.
Note that this does require a lot of data, as the number of participants should typically be above 10 times as high as the number of questions to prevent overfitting (e.g., #parencite(<peduzzi1996simulation>)).

Relatedly, future research could investigate whether more specific questions or questionnaires could improve predictive performance for special contexts.
Instead of taking a questionnaire that is widely considered valid and reliable, researchers could aim to find those questions or questionnaires that predict well in their specific context such as, for example, special forces selection.
For example, researchers could continuously monitor the predictive performance of questions or questionnaires and drop those that do not predict well while occasionally adding new questions or questionnaires and evaluating those.
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
Future research could investigate whether the use of nonlinear models could improve predictive performance.
A perfect model for such a system could be one which combines the best of linear and tree-based models.
It would cut the data into different parts, and then use a linear model for each part.
Model like this exist (e.g., #parencite(<raymaekers2023fast>)), but they might need additional constraints to improve performance on small datasets.

Finally, if there is one thing this thesis argues for, it is to consider the story of the blind men and an elephant.
The blind men individually come to different (and incorrect) conclusions about what an elephant is.
When they together look at the elephant from different angles, they come to a much better conclusion.
This aligns with how most successful investors think.
They understand that it is not about being exactly right in a simplified world, but about being roughly right in a complex world @simon1979rational @sutherland2021alchemy.
As Peter Lynch put it: "if you can add 8 and 8 and can get fairly close to 16, then that is all you need".
More specifically, future psychology research could improve by combining the information from different statistical approaches, different models, and different perspectives.
Taken together, this thesis is not saying that the old methods of doing research are wrong.
Nor is it saying that the new methods are right.
It is saying that the old methods are not enough, and that the new methods are not enough.
It is saying that science needs both.

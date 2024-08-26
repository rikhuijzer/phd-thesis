#import "../style.typ": citefig
#import "../functions.typ": chapter, textcite, parencite, note, avoid_indent, pagebreak_to_right

#pagebreak_to_right()
= Introduction
#avoid_indent()
Imagine being able to correctly predict those individuals who will graduate from pilot training, Harvard medical school, or even NASA's astronaut program.
This would have a large impact on the world as it would reduce individuals being disappointed due to being rejected, and as it would reduce the use of resources for organizations.
Furthermore, selecting the right people would positively influence the organization to which people are selected.
For example, some organizations are willing to pay millions of dollars to hire the right researcher, athlete, or CEO (e.g., #parencite(<metz2018ai>)).
However, such predictions are remarkably difficult to make.
A single highly improbable event is all that is needed to significantly alter the outcome @taleb2010black.
For example, a recruit in the selection program of the special forces can be the best in their class, but drop out due to a close relative getting sick or a wrong step in a rabbit hole.
With that in mind, is it still possible to predict who will drop out and who will graduate?
The field that investigates this question is called _personnel selection_.

== Personnel Selection

The field of personnel selection is built on a long history of research in psychology and statistics.
One of the pioneers in this field was Francis Galton in the 1880s, when he invented regression and correlation analysis, and invented the term psychometrics @gillham2001galton.
He was interested in measuring mental ability to select capable individuals, but his tests were mostly limited to tests for mental imagery, sight, hearing, and bodily strength and size @gillham2001galton.
A test that more closely resembles today's personnel selection was the Binet-Simon Intelligence scale in 1904, which was used to select French students "capable of regular schooling".
This method of testing for intelligence was soon applied in military selection during the first world war @terman1918use.
Soon after, personality tests were also developed for selection.
The Woodworth Personal Data Sheet was used to screen recruits for the US Army for shell shock @woodworth1918psychoneurotic.
Subsequent personality tests were based on factor analysis, a method designed to identify underlying factors that account for the patterns in responses to a set of questions.
For example, 4000 affect terms from the English dictionary were reduced to the 16 personality factor questionnaire @cattell1970handbook.
More recently, these 16 personality factors were reduced to the Big Five personality traits, which are now considered the most important factors in personality @costa1992revised.

It is notably a recurring theme here that the military has been a source of innovation.
Alan Turing built one of the first computers for the British military, and was one of the first to come up with the notion of Artificial Intelligence (AI) in the late 1940s @turing1950computing.
Next, the US Defense Advanced Research Projects Agency (DARPA) has funded the precursor to the internet in the 1960s @abbate2000inventing.
In the 1970s, they funded the precursor to GPS @parkinson1983navstar and computer chips @miller2022chip#footnote[
  Apart from many benefits that these and earlier mentioned inventions and inventors have provided, it should be noted that they can also be directly linked to much human suffering.
  For example, the first chips were used to improve the accuracy of bombs in the Vietnam war, and the intelligence tests were closely linked to the eugenics movement
  (see, for example, #parencite(<miller2022chip>) or #parencite(<gillham2001galton>) for more information).
].
In the 1980s they funded the precursor for modern screens @florida1991invention and more AI research @roland2002strategic.
After a lack of progress for AI in that decade, a new system called High Performance Computing (HPC) was introduced in the 1990s for DARPA @roland2002strategic.

A reason why many innovations have come from the military could be that they have large problems that need to be solved quickly @housel2023same.
For example, the launch of the Sputniks satellite in 1957 by the Soviet Union led to fear in Western nations that they were falling behind in technology.
In response, DARPA and NASA were founded in 1958.
Currently, one large problem that needs to be solved quickly is selecting the right personnel.
It is unclear how to solve this, but one step in the right direction could be to gather and analyze more data, which could lead to better predictions in personnel selection.
In order to do so, we needed to develop software to efficiently gather psychological and physical measures of recruits.

== Data Collection and Processing

Our data collection was carried out at and made possible by the Dutch Special Forces (_Korps Commandotroepen_ in Dutch).
Special forces are elite military units that are trained to perform unconventional, high-risk, and specialized missions.
However, dropout rates in special forces selection programs are close to 80%
(e.g., #parencite(<gayton2015prospective>)).
The military was interested in identifying factors that could predict dropouts and use that to improve the selection process.

To do so, we collected data from recruits during the training and selection program.
During this 16-week program, recruits are trained towards becoming a special forces operator and at the same time subjected to grueling physical and psychological challenges.
Since there is no clear distinction between training and selection in the program, we will use the the terms _training_ and _selection_ interchangeably throughout this thesis.
To facilitate the data collection, we developed a custom software system that allowed recruits to complete questionnaires online.
Each recruit was assigned a unique login, granting them access to the system and enabling them to complete the questionnaires.
The system was designed to streamline the data collection process, allowing researchers to process and analyze pseudonimized data of the recruits.
In total, this data collection resulted in about 60 000 lines of data in the period from 2019 to 2023 (this number includes missing data).

These amounts of data collection would quickly become unmanageable without the use of software.
This is not unique to our research.
A big part of most academic research is entirely dependent on software @mcelreath2020software.
The collection of more data also has an effect on the data processing.
Manually editing data is feasible for studies with a few dozen participants and a few variables, but become impractical for hundreds of participants and a few dozen variables.
For the data processing in our research, the Julia programming language @bezanson2017julia was mainly used.
This had benefits, but drawbacks as well.
Benefits were that the language is expressive, which means that it is easy to express complex ideas in a few lines of readable code.
Julia usually sticks closer to mathematical notation than other languages, which makes it easier to translate mathematical ideas to code.
Drawbacks were that that the language is still quite new#footnote[
  Julia was first released in 2012, whereas Python was first released in 1991 and R in 1995.
]
meaning that a lot of functionality that would have been available in other languages, such as R or Python, was not (yet) available.
This forced the fixing of bugs in core Julia packages or creating new Julia packages, which both resulted in a great learning experience.
For example, when adding the standard deviation to a data science package, there was a useful discussion which lead to a better implementation#footnote[
  Thanks to Anthony Blaom and Okon Samuel in \
  #link("https://github.com/JuliaAI/MLJBase.jl/pull/766").
].

== Statistics and Machine Learning

We heavily based our research on earlier studies with the similar measures in similar settings, and theoretical knowledge from psychology about personality and sport science.
However, much discussion exists on the validity of the typically used statistical analyses.
This was troubling for our studies, which were quantitative and hence relied fully on these analyses.
Put differently, the core of the argument in quantitative research is the use of statistics, so researchers who question the validity of these statistics question the core of the research.

Now some argue that it is best to stick to the well-known and well-established statistical tests regardless of the criticisms.
If we all agree on what tests to use, then we can all use the same objective criteria to evaluate the results.
This is like finding an optimial solution in a simplified world, instead of finding a good solution in a more realistic world @simon1979rational.
It is possible that the well-known approaches are not necessarily the best approaches.
There could exist better approaches that would lead to more and better scientific insights.

One problem that was pointed out with a well-known approach is that decisions for hypothesis testing should be weighed carefully.
For example, instead of sticking to the default _p_-value of 0.05, it is better to justify why the value was chosen @lakens2018justify.
Other researchers propose to switch to Bayesian analyses since it requires researchers to be more explicit about their assumptions @mcelreath2020statistical.
Even inside this Bayesian-world, there are two camps.
One argues for the Bayes factors approach, that resembles frequentists hypothesis testing
(e.g., #parencite(<stefan2019tutorial>)),
while another argues for visualizing the analysis and inspecting the plots
(e.g., #parencite(<tendeiro2019review>), #parencite(<gelman2021bayesian>)).
This latter approach is the most computationally expensive, but does allow for greater flexibility in model definitions and is arguably more intuitive since model assumptions are more explicit and model interpretations more visual.

With all the these statistical options, it was often not clear which model should be used for which study.
This is in line with the "no free lunch" theorem @wolpert1997no.
The theory states that there is no single statistical model that is the best fit for all studies.
This means that we have to choose the best model for each study, but this is not easy since we do not know which model is the best.

A solution becomes clear when considering the ancient Buddhist story of the blind men and an elephant.
In this story, several blind men each touch a different part of an elephant to learn what it is.
One feels the trunk and says it is like a thick tree branch, another feels a leg and declares it is like a pillar, another feels the tail and shouted it is like a rope, and so on.
Seen separately, each man will come to the wrong conclusions.
Hence, the solution is to combine the information from multiple blind men to get a better picture.
Or in other words, we should use multiple statistical models to get a better picture of the data.

Although multiple models and variable associations do provide insights, they were not sufficient in practice.
Such variable associations belong to the _inference_, or _explanation_, paradigm @hofman2021integrating.
This paradigm is what Galton and Fisher used a century ago.
For example, analyzing which variables are associated with the outcome via a _t_-test is about explaining the data.
However, we wanted to apply our research to the selection, but could not since associations do not indicate how accurate our predictions would be.
Even worse, associations can be misleading and suffer from _overfitting_.
Overfitting is when a model fits the data too precisely, leading to poor predictions on new data.
This is like a student who has seen the exam questions beforehand and can answer them all, but fails when seeing new questions.
There are mathematical ways to estimate overfitting, like the Bayesian Information Criterion, but these are hard to interpret and do not clearly indicate how well the model will do in practice.

To get a better understanding, we turned to the field of data science and machine learning.
In this paradigm, known as the _prediction_ or _algorithmic_ paradigm
(e.g., #parencite(<hastie2009elements>)),
the focus is not on explaining the model, but on predicting the outcome.
In this paradigm, a model can even completely lack interpretability, i.e., a _black-box_, as long as it predicts well.
For example, nobody can fully understand why neural networks, such as modern Large Language Models (LLMs), or human brains in referees, make certain predictions.
As long as the model is useful and safe, this lack of understanding is accepted in certain contexts.
There is some understanding about the effectiveness required to work with such models or referees, though.
For a referee, this is is tested in the form of a long process of graduating through the various levels of refereeing before being allowed to referee a World Cup final.
For a machine learning model, this performance is typically tested on old data that the model has not seen before.

A common approach for this is _cross-validation_.
Cross-validation works by splitting the data into a _training_ and _test_ set.
The model then sees the data in the training set and is asked to predict the data in the test set.
Next, the predictions on the test set are compared to the real answers and the model receives a score.
This procedure is very similar to how students are tested at universities.
The student can see training questions and is then tested and evaluated on a set of test questions.
However, a student may be unlucky on the choice of test set.
It may be that the chosen test questions are particularly difficult (or easy) and one could thus say that the test has a bias.
Since statistical models can easily be reset (forced to unlearn) and since we nowadays have fast computers, cross-validation can reduce this bias.
Instead of choosing one training and test set, the technique works by splitting the data in multiple _folds_.
For each fold, a subset of the data is put in the training set and a different subset is put in the test set.
Then the model is evaluated in each fold and the scores from each fold are combined into a general score.
The aim of this general score is to estimate how well the model (or student) will do in the future when seeing new data (or questions).

Cross-validation provides a single number indicating model performance.
However, this number was not informative enough for our practical purposes.
For example, this single number would not tell us whether it was easier for the model to predict dropout for the 10% lowest scoring recruits, or to predict graduation for the 10% highest scoring recruits.
Luckily, there is a way to get a clearer estimate and it was invented after the second World War.
During the war, radars sent out pulses and received echos.
Based on the echos, the British radar operators had to decide whether the echo was a plane or a flock of birds @neale1985ch.
The stakes for these decisions were high.
Mistakes could lead to a plane getting through unnoticed or to sending pilots to a flock of birds.
After the war, researchers investigated how to systematically evaluate such radar systems.
Simply put, the radar systems responded with a signal of a certain strength (a continuous signal) and this had to be converted to a binary decision on whether it is a plane (a binary signal).
Given two similar radar systems or two similar radar configurations, how could one decide which one was better?
One way is to think about it statistically via the false alarm and detection probabilities @kaplan1951statistical.
Based on these false alarm and detection probabilities, a plot can be created that shows the trade-off between the two.
This was then called the Receiver Operating Characteristic (ROC) curve @fox1953signal, see Figure #citefig(<typical-roc>) for an example.

#figure(
  [
    #image("../images/typical-roc.png", width: 50%)
    #note([
      Image from #textcite(<fox1953signal>).
      Axis labels omitted for clarity.
    ])
  ],
  caption: "An example ROC curve"
) <typical-roc>

On this plot, the probability of a detection is plotted on the y-axis and the probability of a false alarm is plotted on the x-axis.
These probabilities can be estimated by varying the threshold of the radar system.
In essence, this is like asking the question "If we respond only if the signal is above X, how many detections and false alarms do we expect?"
For example, setting the radar to be very sensitive will lead to many detections, but also many false alarms.
When plotting one line for one radar, radar designers could decide how to configure the radar for the best trade-off between detections and false alarms.
When plotting multiple lines for multiple systems, designers could decide which radar system was the best.
Nowadays, this last part is often done without plotting because the Area Under the Curve (AUC) can be calculated.
A higher AUC means that the system is more accurate overall.
Later, the ROC curve was used not only for radar systems, but for many problems where a continuous signal is converted to a binary decision, like in this thesis where continuous model outcomes are converted to binary prediction decisions.

These were some of the tools that we used in this thesis.
The aim being to investigate the data in a statistically sound way.
With these tools, we aimed to answer the question of who will make it through the commando training and who will dropout.

#block([
== Thesis Chapters

The core of this thesis is split into four parts.
In Chapter 2, we focused on identifying personality traits that could differentiate between experienced commandos, successful graduates, and dropouts in special forces training.
We used the inference paradigm to compare the personality traits of these groups, providing insights into the role of personality in special forces selection.
], breakable: false) \
#v(-2em)
Chapter 3 marks our transition from the inference to the inference and prediction paradigm.
The chapter introduces SIRUS.jl, our implementation of the Stable and Interpretable RUle Sets (SIRUS) algorithm in Julia.
SIRUS aims to combine the benefits of decision trees and random forests, offering high interpretability and stability.
This chapter details the implementation, interpretability, stability, and performance of SIRUS.jl.
We compare its predictive performance to similar models on various small real-world datasets.

In Chapter 4, we used various machine learning techniques, including SIRUS, to predict dropout in special forces selection programs using both physical and psychological data, such as 2800 meters running time and personality traits.
This data was collected at one point in time during the first week of the selection program.
We again compared the performance, explainability, and stability and showed the benefits of the SIRUS model in this high-stakes context due to it having good predictive performance while retaining model stability and explainability.

In chapter 5, we measured psychological and physical stress and recovery states of recruits during the training program.
Again, using machine learning techniques, we compared the performance, explainability, and stability of the models.
We also estimated the real-world predictive performance of the most suitable model.

Then a final note on why this thesis contains some quotes and ideas from investors such as Warren Buffett, Charlie Munger, Nassim Nicholas Taleb, and Peter Lynch.
It might sound like their occupation is unrelated to personnel selection.
However, this is not true.
All these individuals have excelled in making predictions, and often have an independently verified track record to prove it.
For example, Buffett's success is based on selecting which companies will do well in the future.
Just like personnel selection, this is a difficult task.
Both personnel selection and company selection are about predicting those that will operate successfully in a complex environment.
Just like in personnel selection, companies are also fragile: a single negative event can lead to a permanent bankruptcy.
The accuracy of his selection decisions can be inspected by looking at the value of his public company Berkshire Hathaway.
If you would have bought one share valued at \$19 in Berkshire in 1965, then this would today be worth more than half a million (Class A shares are worth \$615,591 at the time of writing).
It is not possible for him to have faked these predictions.
During all these decades, his financial statements have been verified by auditors, the tax authorities, and the Securities and Exchange Commission.
This is why Buffett is known as the "Oracle of Omaha", and why ideas from investors seem relevant to personnel selection.

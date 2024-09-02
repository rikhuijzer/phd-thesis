#import "../style.typ": citefig
#import "../functions.typ": chapter, textcite, parencite, note, header

// To go to right page.
#pagebreak()
#chapter(
  [Personality Traits of Special Forces Operators: Comparing Commandos, Candidates and Controls],
  label: [
    Huijzer, R., Jeronimus, B. F., Reehoorn, A., Blaauw, F. J., Baatenburg de Jong, M., De Jonge, P., & Den Hartigh, R. J. R.
    (2022).
    Personality Traits of Special Forces Operators: Comparing Commandos,
Candidates, and Controls.
    _Sport, Exercise, And Performance Psychology_, 11(3), 369–370.
    #link("https://doi.org/10.1037/spy0000296")
  ],
  abstract: [
    Dutch special forces operators, also known as _commandos_, perform in mentally and physically tough environments.
    An important question for recruitment and selection of commandos is whether they have particular personality traits.
    To answer this question, we first examined differences in personality traits between 110 experienced Dutch male commandos and a control sample of 275 men in the same age range.
    Second, we measured the personality traits at the start of the special forces selection program, and compared the scores of candidates who later graduated (_n_ = 53) or dropped out (_n_ = 138).
    Multilevel Bayesian models and _t_-tests revealed that commandos were less neurotic (_d_ = -0.58), more conscientious (_d_ = 0.45), and markedly less open to experiences (_d_ = -1.13) than the matched civilian group.
    Furthermore, there was a tendency for graduates to be less neurotic (_d_ = -0.27) and more conscientious (_d_ = 0.24) than dropouts.
    For selection, personality traits do not appear discriminative enough for graduation success and other factors need to be accounted for as well, such as other psychological constructs and physical performance.
    On the other hand, these results provide interesting clues for using personality traits to recruit candidates for the special forces program.
  ]
)

== Introduction

Dutch special forces operators, also known as commandos, perform in tough high stakes contexts that require specific physical, mental and emotional characteristics @brailey2005transformation.
Commandos must remain focused and calm in combat situations despite overwhelming intense smells, sounds and images, and depend with their lives on their team’s functioning.
Furthermore, they work under conditions of extreme threat, isolation and complexity, and often need to interact with other cultures in politically sensitive situations @picano2002development.
The individual characteristics needed to operate in such situations are typically operationalized in terms of personality dimensions; what we feel, think, need, want and do.
Our research aim was to identify whether there are personality traits that are characteristic for commandos @banks2006history @ones2007support.

=== Personality of Commandos

In contemporary psychology, the highest level of the personality hierarchy is summarized in terms of five broad trait dimensions (the Big Five):
neuroticism, extraversion, openness to experience, agreeableness and conscientiousness @john2010handbook[see also Table #citefig(<personality-definition>)].
Since the second world war, the United States of America (U.S.) selects commandos on their emotional and interpersonal traits (emotional stability, social relations and security), intelligence processing (effective IQ, observing and reporting) and agency/surgency (motivation for assignment, energy and initiative leadership, physical ability; see #cite(<banks2006history>, form: "prose") #cite(<picano2002development>, form: "prose").
This procedure suggests that emotional stability (low neuroticism) and extraversion (activity and sociability) are key personality competencies for success in high-risk operational personnel, next to cognitive abilities.
However, so far, few studies examined the personality traits of commandos and quantified how they actually compare to civilian samples.

#figure(
  table(
    columns: (auto, auto),
    align: (left, left),
    table.hline(start: 0),
    table.header(
      [Big Five Domain], [High scoring individuals tend to be ...]
    ),
    table.hline(start: 0),
    [Neuroticism], [emotionally unstable, anxious, self-conscious, vulnerable, and experiencing negative affect.],
    [Extraversion], [sociable, assertive, energetic, excitement seeking, risk-taking, and experiencing positive affect.],
    [Openness], [perceptive, creative, reflective, flexible, curious, and appreciative of fantasy, aesthetics, and novelty.],
    [Agreeableness], [kind, cooperative, altruistic, trustworthy, trusting, generous, and empathic.],
    [Conscientiousness], [ordered, dutiful (norms/rules), self-disciplined, reliable, persistent, and achievement oriented.],
    table.hline(start: 0),
  ),
  caption: "Definition of Personality Based on the Big Five"
) <personality-definition>

In one of the previous studies, personality trait scores among 139 U.S. Navy Sea-Air-Land (SEAL) operators were compared to scores of U.S. civilians @braun1994personality.
In line with the above mentioned key personality competencies, SEALs reported lower average neuroticism and agreeableness scores than civilians, but higher conscientiousness and extraversion.
Additionally, more experienced SEALs reported higher conscientiousness.
Although research on the personality traits of commandos is scarce, several studies examined Big Five measures of other military personnel and police officers who work in high stakes contexts.
For instance, a sample of 57 Swedish counterterrorism intervention unit police officers showed lower mean neuroticism scores (Cohen's _d_ = 0.70) and more extraversion (_d_ = 0.70) and conscientiousness (_d_ = 0.40) than the general Swedish population (Tedeholm et al., 2021).
Furthermore, a comparison of 268 French military candidates with 447 students indicated that candidates reported lower openness (_d_ = 2.04) than the students @rolland1998psychometric.
Similarly, people who entered the German military were marked by lower openness (_d_ = 0.15 with a propensity-score model) than people who did not enter the military @jackson2012military.
The large differences between the studies in terms of effect sizes could arise from differences in sampling or methodology.
For example, #cite(<jackson2012military>, form: "prose") used propensity score matching which may have increased bias and imbalance @king2019propensity.

In Figure #citefig(<personality-related-work>), we visually summarized previous studies of personality traits of workers in high stakes contexts, such as special forces units
(Fountoulakis et al., 2014; Jackson et al., 2012; Rolland et al., 1998; Sørlie et al., 2020; Tedeholm et al., 2021).
This shows that high stakes context workers score relatively high on conscientiousness and low on neuroticism compared to control groups.
Differences in the other personality traits were less consistent.
This could indicate that there is not strictly one personality trait that allows people to be proficient in high stakes contexts.
However, little is known about how commandos and civilian men with a similar age and background actually differ in their personality traits.
Therefore, our first research question was: how do the personality traits of experienced commandos differ from those of a matched sample of civilians in the general population?

#figure(
  [
    #image("../images/personality-related-work.png", width: 88%)
    #note([
    The means and standard errors (SEs) for personality scores obtained in previous research.
    The lower four studies focused on high stakes military contexts and the upper four on civilian populations (control groups). The means and SEs are similar to independent samples _t_-tests.
    Scores were transformed to the range $[1, 5]$, resulting in a total score in the range $[48, 240]$.
    For example, studies scored in the range [0,4] have lower bound $l = 0$ and upper bound $u = 196$.
    Any mean $m$ in the range $[l, u]$ was transformed to a mean $m'$ in the range $[48, 240]$ via $m' = 48 + (m - l) / (u - l) · (240-48)$.
    Similarly, any standard deviation $s$ was transformed to $s'$ via $s' = s / (u - l) · (240-48)$.
    The ranges for #textcite(<fountoulakis2014standardization>), #textcite(<jackson2012military>), #textcite(<sorlie2020person>), and #textcite(<tedeholm2021personality>)
    were respectively $[0, 192]$, $[0, 4]$, $[0, 192]$ and $[0, 192]$, and obtained by author correspondence.
    ])
  ],
  caption: "An Informal Review of Personality Traits of Workers in High Stakes Contexts Compared to Civilians"
) <personality-related-work>

=== Assessment and Measures

Next to the question of how commandos differ from civilians, we examined whether personality traits of candidates, who successfully completed the selection program, differed from those who dropped out.
Personality assessments are often part of the special forces selection procedure
(e.g., #parencite(<hartmann2003psychological>); #parencite(<saxon2020continuous>)),
but relatively little scientific research has been conducted on this topic.
Specifically focusing on the Big Five domains, a study by #textcite(<mcdonald1990training>) shows that U.S. graduates scored lower on neuroticism than the dropouts.
Another U.S. study on reconnaissance marines found that higher extraversion was associated with graduation @saxon2020continuous.
Other studies focused on the Big Five personality traits on the facet level, which are more narrow personality dimensions.
For example, #textcite(<picano2002development>) studied elite military personnel screened for a non-routine military assignment and identified two facet traits that predicted success; "activity" in the extraversion domain (E4, being lively) and "straightforwardness" in the agreeable domain (A2; having high morale).
Training completion in the Norwegian naval special forces was not associated with any of the Big Five domains or facets @hartmann2003psychological @hartmann2009rorschach, in discord with the findings by
#textcite(<mcdonald1990training>), #textcite(<picano2002development>), and #textcite(<saxon2020continuous>).

When looking at less extreme contexts, a lower neuroticism score and a higher agreeableness score were found to be related to graduation in the Canadian forces basic training @lee2011prospective.
In the Netherlands, a large study of multiple datasets showed that successful military candidates were more likely to score high on extraversion, conscientiousness, agreeableness and openness, and low on neuroticism @linden2010general.
A meta-analysis on military aviators showed that lower neuroticism and higher extraversion scores were related to training success @campbell2010meta.
Despite the frequent measurement of personality in special forces training programs, the degree to which the outcomes can be used for selection in such programs remains unclear. Overall, most research suggests that successful commando candidates were less likely to be neurotic and more likely to be extraverted and agreeable (e.g., #parencite(<jackson2012military>)),
but not all commando studies supported these differences (e.g., #parencite(<hartmann2009rorschach>)).
Therefore, the present study examines whether and which personality differences predict success during the commando selection procedure in the Netherlands.
More specifically, we examined whether graduates and dropouts of the special forces selection program could be distinguished based on their measured personality traits.

=== The Current Study

The purpose of the current study was to examine whether measured personality traits differ between (1) commandos and civilians and (2) graduates and dropouts.
We therefore examined the personality of a sample of Dutch male commandos, a matched control group from the Dutch population, and candidates in the special forces selection program.
Our first hypothesis was that commandos reported lower neuroticism, higher conscientiousness and more extraversion than civilians
(see #parencite(<braun1994personality>); #parencite(<rolland1998psychometric>); #parencite(<tedeholm2021personality>)).
No differences in agreeableness and openness were expected.
Our second hypothesis was that graduates report lower neuroticism than dropouts
@campbell2010meta @lee2011prospective @mcdonald1990training
and more extraversion and agreeableness
@campbell2010meta @hartmann2003psychological @lee2011prospective @picano2002development @saxon2020continuous.
No specific expectations were set for openness to experience and conscientiousness.

== Method

=== Participants

Data from the, exclusively male, commandos and candidates were obtained via the Commando Corps of the Royal Netherlands Army.
Commandos were approached by email, including an information letter about the study. We received active consent from 110 experienced commandos, that is, commandos who successfully finished the entire special forces training.
The matched controls were derived from a large Dutch crowd-sourced dataset @krieke2016hownutsarethedutch from which 275 males aged 18 to 35 were selected (_M_#sub[age] = 27.7, _SD_#sub[age] = 4.62).
New candidates were invited to participate in this study during their pre-selection training.
Both candidates and instructors were informed that participation was completely voluntary and that their participation and results would not be used for selection purposes.
All candidates actively consented to participate in the study and the procedure was approved by the institutional review board with code PSY-1920-S-0512.
Of the 223 candidates who started the selection period, 53 graduated (_M_#sub[age] = 25.2, _SD_#sub[age] = 2.70) and 138 dropped out for non-medical reasons (_M_#sub[age] = 25.9, _SD_#sub[age] = 2.96).
We excluded 32 participants who dropped out for medical reasons. The selection is based on a combination of objective and subjective measures.
Candidates can drop out for non-medical reasons if they do not meet the physical requirements at any point during the selection, if they are caught in an offense such as stealing, or if the instructors unanimously agree that a person is unfit to become an operator.
Furthermore, the sample sizes were limited by the number of participating operators and the number of candidates who started the selection in the period in which we collaborated with the army.
Given the sensitivity of the samples that we studied, more detailed descriptions were not provided.

=== Procedure

For both the commandos and candidates, participation occurred via our Your Special Forces platform (#link("https://yourspecialforces.nl")), which was specifically built for the purpose of the research project.
The commandos received instructions and credentials via email, and were invited to participate in the questionnaire during their work hours.
For the candidates, data collection took place at the training camp.
In the first week of the selection, participants completed the assessments using tablets in a large room which was set up like a traditional classroom.
Once participants entered the room, they were informed about the consent procedure, study goal, and that participation would not affect their graduation chances. We provided the participants with a pseudo-anonymous username.
After logging in with their usernames, the participants accessed multiple questionnaires including the personality questionnaire, and received as much time as they needed to fill it in.
Most participants finished within one hour.
The matched sample of Dutch civilians completed their questionnaires online via the HowNutsAreTheDutch platform at their own time and convenience (see #parencite(<krieke2016hownutsarethedutch>) for details).
Both the commandos and civilians could use a digital device of their own choosing.

=== Measures

The commandos and candidates completed the Dutch version of the NEO-PI-3 @hoekstra2014neo which captures the big five personality domains with 240 items, each rated on a 5-point Likert scale ranging from 1 (strongly disagree) to 5 (strongly agree).
The questionnaire contains 48 items per domain and this is further split into 8 items per facet (6 facets per domain).
The NEO-PI-3 was chosen due to its high reliability and validity and its prevalence in military personality research.
The validity of the English version has been shown in multiple settings
(e.g., #parencite(<costa2008incipient>), #parencite(<fruyt2009assessing>), #parencite(<egger2003cross>)).
Furthermore, the reliability and validity of this instrument are thoroughly assessed by the Dutch Committee on Tests and Testing (COTAN), across different norm groups (including 594 male civilians and 339 civilians between 23 and 35 years of age, see #parencite(<hoekstra2014neo>) for details).
As an additional check of the validity in our sample, we conducted an Exploratory Structural Equation Modeling (ESEM) analysis, which combines the exploratory and confirmatory factor analyses @marsh2014exploratory.
The ESEM model is accepted with a reasonable fit (_p_ < 0.05, CFI = 0.89, TLI = 0.83, RMSEA = 0.07)
(#parencite(<marsh2014exploratory>), p. 785; see Table S2 in the supplemental material of #parencite(<huijzer2022personality>) for more information).
The internal reliability of the scale was good, with a McDonald's omega coefficient of 0.87 and a 95% bootstrapped confidence interval ranging from 0.80 to 0.93 as calculated via the psych package @revelle2015package.
The Dutch civilians completed the shortened NEO-FFI (60-items) which was derived from the more comprehensive NEO-PI-3 @krieke2016hownutsarethedutch.

=== Analyses

To examine whether commandos differed in their personality traits from matched civilians (hypothesis 1) and whether graduates differed from dropouts (hypothesis 2), we fitted a multilevel Bayesian model and _t_-tests.
Latent profile analyses (LPA) were considered as well, upon request by our reviewer, but appeared less suited given the sample size.
The results, which were added to Table S3 of #textcite(<huijzer2022personality>).
For LPA, one of the best information criteria is the Bayesian information criterion (BIC) according to #textcite(<nylund2007deciding>).
In accordance with the results reported, the BIC metric indicated that the 2-profile model (graduates vs. dropouts or commandos vs. controls) is suitable for our data.

With 2 groups and 5 personality domains per research question, we performed Bayesian analyses to avoid the multiple comparison problem, which leads to overestimation of effect sizes or estimating them to be in the wrong direction @gelman2018failure.
We interpreted the posterior model probabilities directly @mcelreath2020statistical @tendeiro2019review.
Bayesian techniques also allow us to conclude that there is no effect, which is an additional benefit over classical hypothesis testing @gelman2012multiple.
We used a multilevel model with partial pooling which is a regularization technique that allows the model to combine information from different groups, and reduces the chances of detecting false-positive results @mcelreath2020statistical.
In our study, the Bayesian approach estimates the population parameters directly which, in our case, are the population means.
We defined and fitted the models using the Julia programming language @bezanson2017julia with the Bayesian inference package Turing.jl @ge2018turing.
The model is defined as

$
  alpha &#v(0pt)~ "Normal"(144, 15) \
  sigma &#v(0pt)~ "Cauchy"(0, 2) \
  alpha_"group"[i] &#v(0pt)~ "Normal"(alpha, sigma) \
  mu_i &= alpha_"group"[i] \
  S_i &#v(0pt)~ "Normal"(mu_i, sigma),
$

where $S_i$ denotes the personality score for participant $i$.
Here, we set the prior for $alpha$ to 144, which is in the middle of the lower and upper bound of the scoring range.
More specifically, the number is obtained via (240 - 48) / 2 + 48 = 144.
This model assumes that all groups should look similar.
Arguably, this common mean $alpha$ (partial pooling) will favor solutions where differences between groups are minimized.
Hence, as a validity check of our Bayesian analysis, we fitted _t_-tests.
The benefit of the _t_-tests is that they can be compared to existing literature more easily and are more familiar to many readers.
In this study, we considered the Bayesian results as leading and, therefore, used the _t_-tests as a backup.
Note that both our Bayesian model and the _t_-test compare the means of different groups.
Also note that the Bayesian model is expected to be more conservative due to the partial pooling.

For the _t_-tests, the statistical power is as follows.
For hypothesis 1, the most suitable source for estimating the expected effect size compares counterterrorism police officers to civilians.
The Cohen's _d_ scores on the neuroticism, extraversion, openness, agreeableness, and conscientiousness (NEOAC) dimensions were -0.7, 0.7, 0, 0.2 and 0.4, respectively @tedeholm2021personality.
Based on this, we expect an effect size of around 0.5 which gives a power of _d_ ≈ 0.96 @champely2017pwr.
For hypothesis 2, we can leverage a related meta-analysis for an estimate of the effect size: the true validity for neuroticism and extraversion in a meta-analysis on military aviation training success is estimated to be _r_ = -0.25 and _r_ = 0.17 respectively @campbell2010meta.
In terms of Cohen's _d_, this is _d_ ≈ -0.52 and _d_ ≈ 0.34 respectively (#parencite(<hunter2004methods>), Eq. 7.11).
Given such a medium Cohen's _d_ effect size of 0.4, the power for the comparison of graduates and dropouts (hypothesis 2) is d ≈ 0.69.

We report Bayesian distribution estimates and credible intervals that show probabilistic uncertainty in the parameter value.
This differs from the Frequentist confidence interval and the uncertainty about whether it contains the true value.
Also, we provided standardized group differences by means of Cohen's _d_ and interpreted effect sizes as very small to small (below 0.20), small to medium (0.20 to 0.50), medium to large (0.50 to 0.80), or large to very large (0.80 and higher) @sawilowsky2009new.
As a reference, the average Pearson correlation coefficient  between personality and important life outcomes is r = 0.22 (95% CI = [0.18, 0.29], Richard et al., 2003; Soto, 2019) up to r = 0.30 with other (non-test) behaviors (Caspi & Shiner, 2006; Saucier & Goldberg, 1998), thus, small to moderate effects.
The code to reproduce the results has been made available at the Open Science Framework and can be accessed at #link("https://osf.io/ysfu6").

== Results

Since Bayesian samplers start at a random point, the results can vary when doing multiple runs, that is, run multiple chains.
Following common practice @mcelreath2020statistical, three chains were run and their results were consistent.
We also checked stationarity and good mixing by visually inspecting graphs of the posterior samples.
In Figure #citefig(<personality-density-ci-first>) and #citefig(<personality-density-ci-second>), the posterior distributions show the aggregated results from the chains.
The results for the _t_-tests are described in the text below; together with the results for the first and second hypotheses.
The descriptives are shown in Table #citefig(<personality-descriptive-statistics>).

#figure(
  {
    set text(size: 9pt)
    table(
      columns: (auto, auto, auto, auto, auto),
      align: left,
      table.hline(start: 0),
      table.header(
        [], [*Commandos*], [*Civilians*], [*Graduates*], [*Dropouts*]
      ),
      [Number of participants], [110], [275], [53], [138],
      [], [Mean (SD)], [Mean (SD)], [Mean (SD)], [Mean (SD)],
      table.hline(start: 0),
      [Neuroticism], [111.9 (16.7)], [130.9 (37.2)], [110.3 (15.5)], [114.6 (15.4)],
      [Extraversion], [161.6 (12.8)], [157.4 (33.1)], [164.3 (13.2)], [161.9 (14.9)],
      [Openness], [148.2 (14.9)], [174.1 (25.2)], [148.9 (13.2)], [149.2 (13.9)],
      [Agreeableness], [164.2 (13.4)], [160.1 (24.1)], [172.5 (13.9)], [171.4 (14.4)],
      [Conscientiousness], [178.3 (15.6)], [166.4 (29.3)], [183.9 (14.5)], [180.5 (13.6)],
      table.hline(start: 0),
    )
    note([
      SD = Standard Deviation.
      Civilians refers to a male sample from the general Dutch population matched to the commandos on age and education.
    ])
  },
  caption: "Descriptive Statistics for Commandos, Graduates, Dropouts and Civilians"
) <personality-descriptive-statistics>

=== Hypothesis 1 - Commandos versus Controls

First, we examined whether commandos differed in their Big Five personality traits from civilians.
We fitted Bayesian models (Figure #citefig(<personality-density-ci-first>)) and performed t-tests (described in the text).
In line with hypothesis 1, these models demonstrate that commandos score lower than civilians on neuroticism ($t_"(383)"$ = -5.15, _p_ < 0.001, _d_ = -0.58) with a medium to large effect size and higher on conscientiousness ($t_"(383)"$ = 4.01, _p_ < 0.001, _d_ = 0.45) with a small to medium effect size.
Commandos also score lower on openness than civilians ($t_"(383)"$ = -10.1, _p_ < 0.001, _d_ = -1.13) with a large to very large effect size.
There were no clear differences between the groups for extraversion ($t_"(383)"$ = 1.30, _p_ = 0.19, _d_ = 0.15) and agreeableness ($t_"(383)"$ = 1.69, _p_ = 0.09, _d_ = 0.19) with both a very small to small effect size.

#figure(
  {
    image("../images/personality-density-ci-first.svg", width: 78%)
    note([Neuroticism (N), extraversion (E), openness (O), agreeableness (A) and conscientiousness (C). The small vertical bars in the posterior distributions show the 95% credible interval.])
  },
  caption: "Comparison of Civilians with Commandos on the Big Five Personality Domains"
) <personality-density-ci-first>

=== Hypothesis 2 - Graduates versus Dropouts

To examine whether commando graduates differed in their Big Five personality traits from dropouts, we again fitted a Bayesian model (Figure #citefig(<personality-density-ci-second>)) and performed _t_-tests (described in the text).
In contrast with hypothesis 2, none of the results were significant.
Yet, the clearest effect size differences are visible for neuroticism and conscientiousness, where graduates score lower than dropouts on neuroticism ($t_"(189)"$ = -1.71, _p_ = 0.09, _d_ = -0.27) with a small to medium effect size.
For conscientiousness, graduates score higher ($t_"(189)"$ = 1.51, _p_ = 0.13, _d_ = 0.24) with a small to medium effect size.
Smaller effect sizes were visible for the other domains, namely openness ($t_"(189)"$ = -0.14, _p_ = 0.89, _d_ = 0.02) with a very small to small effect size, extraversion ($t_"(189)"$ = 1.04, _p_ = 0.30, _d_ = 0.17) with a very small to small effect size and agreeableness ($t_"(189)"$ = 0.49, _p_ = 0.63, _d_ = 0.08) with a very small to small effect size.

#figure(
  {
    image("../images/personality-density-ci-second.svg", width: 78%)
    note([Neuroticism (N), extraversion (E), openness (O), agreeableness (A) and conscientiousness (C). The small vertical bars in the posterior distributions show the 95% credible interval.])
  },
  caption: "Comparison of Graduates with Dropouts on the Big Five Personality Domains"
) <personality-density-ci-second>

To derive a more nuanced insight into commando personalities we subsequently examined differences between commandos and matched controls in 30 more specific facet traits, generally thought to be informative when predicting consequential outcomes @stewart2022finer.
We refrain from an interpretation of the facet differences between commandos and civilians because none was significant in our models (all _d_ below 0.30 and _p_ above 0.07), see Table S1 in the supplemental material of #textcite(<huijzer2022personality>) for details.
Finally, we explored whether graduates and dropouts differed in more specific facet traits, no significant differences were detected (see Table S1 of #parencite(<huijzer2022personality>) for details).

== Discussion

This study was aimed to investigate (1) personality differences between experienced commandos and civilian controls and (2) whether and how personality traits distinguished graduates from dropouts during the selection period.
To investigate the hypotheses, a large-scale study was conducted in collaboration with the Royal Netherlands Army.
Our key observation was, first, that the group of commandos was less neurotic, more conscientious, and markedly less open to experience than civilians matched on age and education.
Second, successful candidates tend to report lower neuroticism and higher conscientiousness.
The other personality traits showed inconsistent results, and more nuanced facet traits did not differ between graduates and dropouts.

=== Hypothesis 1 - Commandos versus Controls

In line with our first hypothesis, the commandos scored lower on neuroticism and higher on conscientiousness compared to matched civilian controls.
This pattern is in accordance with studies of more experienced U.S. Navy SEALs @braun1994personality and Swedish counterterrorism intervention police officers versus Swedish civilians @tedeholm2021personality.
For extraversion, we found no evidence to support, nor to reject, the idea that operators are more extraverted than civilians.
Although the direction of the effect that we found is in accordance with previous research, #textcite(<braun1994personality>) and #textcite(<tedeholm2021personality>) found clearer evidence that U.S. Navy SEALs score higher on extraversion than less experienced SEALs, and that counterterrorism intervention police officers score higher on extraversion than civilians, respectively.
For agreeableness, we had no specific expectations, and also found no meaningful differences between commandos and controls.

Our analysis provided strong evidence for a marked difference in openness to experience between commandos and matched controls, a novel contribution to the literature on personnel selection and military psychology.
This result suggests that, compared to civilians, commandos prefer routines, consistency, traditions, and familiarity, and approach new things with great caution and are less likely to be overwhelmed by emotions @larsen2020personality.
Openness also differed between French military candidates and general students @rolland1998psychometric, and between German students who decided to join the military or not @jackson2012military.
Contrarily, a comparison of counter-terrorism intervention unit police officers and civilians showed trivial differences in openness @tedeholm2021personality.
Compared to previous research, it seems that the civilians in our sample scored higher on openness than the control groups and the commandos score lower than the military groups (to see this, compare @personality-density-ci-first and @personality-density-ci-second).
This may be due to the nature of our matched control group, which comprised relatively young men who voluntarily participated in an online questionnaire @marcus2005people.
Finally, our results are partly in line with the study of multiple military datasets by #textcite(<linden2010general>) who concluded that successful military candidates in general were more likely to score low on neuroticism, and high on extraversion, conscientiousness, agreeableness, and openness.

=== Hypothesis 2 - Graduates versus Dropouts

For the comparison between graduates and dropouts, the results were less evident.
This is likely to be caused by the homogeneity of the group in combination with the limited statistical power.
Interestingly, as with the comparison between commandos and controls, the clearest patterns were found in neuroticism and conscientiousness.
For neuroticism, our results suggest that graduates score lower on neuroticism than dropouts, which in the hypothesized direction.
This result is also in line with the study by #textcite(<mcdonald1990training>) on U.S. Navy SEAL candidates, which showed that graduates were less neurotic than those who did not graduate.
Similarly, in a study on Canadian Forces basic training, it was found that lower neuroticism was associated with training success @lee2011prospective.
Furthermore, a meta-analysis concluded that lower neuroticism predicted military aviation training success @campbell2010meta.
People with lower neuroticism scores tend to experience lower subjective threat, impulsivity, vulnerability to stress, and anxiety, which may be important characteristics to become a commando.

For conscientiousness, the result was in the hypothesized direction, but was not significant.
A stronger pattern was found in a study on Navy SEALs who found that more experienced SEALs score higher on conscientiousness @braun1994personality.
We also found that graduates scored on average half a standard deviation higher on extraversion than dropouts.
A clearer difference has previously been reported in a meta-analysis on military aviators @campbell2010meta, a study with Navy SEALs @hartmann2003psychological and a study with reconnaissance marines @saxon2020continuous.
A likely explanation for these results is that extraverted people are more prone to seek excitement, be active, and take risks, all of which are important qualities for commandos @keinan1984measurement @stewart2017commando.

Contrary to our hypothesis and previous research we did not find that graduates score higher on agreeableness @campbell2010meta @hartmann2003psychological @saxon2020continuous.
A possible explanation for the difference between previous findings and our outcomes is the lower power of our study or that the trait agreeableness contains facets that can be positive as well as negative for a commando.
For example, having high trust and straightforwardness is important for effective teamwork @jones1998experience, but being modest might not contribute to a successful mission.
This observation is in line with studies of leadership that indicate that leaders tend to be extraverted and low on neuroticism, but results for agreeableness tend to be fuzzy, which suggests that a broader range of scores can be proficient strategies @do2020higher @judge2002personality.
Finally, we did not have a hypothesis for openness to experience, and our results did not reveal a strong enough difference between the graduates and dropouts to conclude that they differ in this trait.

=== Limitations and Future Directions

In our study, we used the NEO-PI-3 with 240 items for the candidates and commandos, and the NEO-FFI for the civilians.
This difference appeared to result in different variances in scores on personality dimensions.
Indeed, upon further investigation, and comparison with other personality research, we found that the difference in variance is likely caused by the difference in length in questionnaires, and not by the group under study.
In hindsight, this difference made sense because more questions imply that it is more likely that the mean score of a participant averages out, that is, that the score is less extreme.
However, we do not expect that this has notably affected the conclusions.
For future directions, more research is needed to investigate individual facets.
Since this increases the number of comparisons one likes to make, Bayesian analyses provide an intuitive way to handle this @gelman2012multiple.
Also, more research is needed to investigate personality profiles instead of personality traits.
Mixed models such as latent profile analysis provide an interesting avenue in this regard
(#parencite(<oberski2016mixture>); #parencite(<wanders2016casting>), see also Table S3 of #parencite(<huijzer2022personality>)),
assuming that model requirements such as statistical power can be met.
Moreover, other factors than personality may also be important to become a commando (see introduction).
Therefore, an important avenue is to discover not only the psychological but also the physical predictors of successful graduation in the special forces selection period (e.g., #parencite(<saxon2020continuous>)).

== Conclusion

In this study, male commandos differ from a group of age-matched civilians by being less neurotic, less open to new experiences, and more conscientious.
People who started the commando training showed similar differences, namely, that graduates score lower on neuroticism and higher on conscientiousness than dropouts.
Our finding that the directions are the same for both comparisons adds certainty to the effects that we have found.
Given the relatively small differences between the graduates and dropouts, we would argue that a personality test would not provide a strong selection instrument by itself.
This is likely due to the fact that the group of people who decide to join the commandos is quite homogeneous. Hence, for selection purposes, examining additional psychological and physical measures is an important avenue.
For recruitment purposes though, the use of personality tests can provide important clues as our study showed relatively strong differences between commandos and civilians.

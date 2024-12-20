#import "../style.typ": citefig
#import "../functions.typ": chapter, textcite, parencite, note, header

// Ensure the page falls on the right side.
#pagebreak()
#chapter(
  [SIRUS.jl: Interpretable Machine Learning via Rule Extraction],
  label: [
    Huijzer, R., Blaauw, F. J., Den Hartigh, R. J. R. (2023).
    SIRUS.jl: Interpretable Machine Learning via Rule Extraction.
    _Journal of Open Source Software_, 8(90), 5786.
    #link("https://doi.org/10.21105/joss.05786")
  ],
  abstract: [
    SIRUS.jl#footnote[Source code available at #link("https://github.com/rikhuijzer/SIRUS.jl").] is an implementation of the original Stable and Interpretable RUle Sets (SIRUS) algorithm in the Julia programming language @bezanson2017julia.
    The SIRUS algorithm is a fully interpretable version of random forests, that is, it reduces thousands of trees in the forest to a much lower number of interpretable rules (e.g., 10 or 20).
    With our Julia implementation, we aimed to reproduce the original C++ and R implementation in a high-level language to verify the algorithm as well as making the code easier to read.
We show that the model performs well on classification tasks while retaining interpretability and stability.
    Furthermore, we made the code available under the permissive MIT license.
    In turn, this allows others to research the algorithm further or easily port it to production systems.
  ]
)

#set page(header: header("Chapter 3"))
== Statement of need

Many of the modern day machine learning models are noninterpretable models, also known as _black box_ models.
Well-known examples of noninterpretable models are random forests @breiman2001random and neural networks.
Such models are available in the Julia programming language via, for example, LightGBM.jl @ke2017lightgbm, Flux.jl @innes2018flux, and BetaML.jl @lobianco2021betaml.
Although these models can obtain high predictive performance and are commonly used, they can be problematic in high stakes domains where model decisions have real-world impact on individuals, such as suggesting treatments or selecting personnel.
The reason is that noninterpretable models may lead to unsafe, unfair, or unreliable predictions @doshi2017towards @barredo2020explainable.
Furthermore, interpretable models may allow researchers to learn more from the model, which in turn may allow researchers to make better model decisions and achieve a higher predictive performance.

However, the set of interpretable models is often limited to ordinary and generalized regression models, decision trees, RuleFit, naive Bayes classification, and k-nearest neighbors @molnar2022interpretable.
For these models, however, predictive performance can be poor for certain tasks.
Linear models, for instance, may perform poorly when features are correlated and can be sensitive to the choice of hyperparameters.
For decision trees, predictive performance is poor compared to random forests @james2013introduction.
RuleFit is not available in Julia and is _unstable_ @benard2021sirus, meaning sensitive to small changes in data.
Naive Bayes, available in Julia as NaiveBayes.jl#footnote[Source code available at #link("https://github.com/dfdx/NaiveBayes.jl.")], is often overlooked and can be a suitable solution, but only if the features are independent @ashari2013performance.

Researchers have attempted to make the random forest models more interpretable.
Model interpretation techniques, such as SHAP @lundberg2017unified or Shapley, available via
Shapley.jl#footnote[Source code available at #link("https://gitlab.com/ExpandingMan/Shapley.jl.")], have been used to visualize the fitted model.
However, the disadvantage of these techniques are that they convert the complex model to a simplified representation.
This causes the simplified representation to be different from the complex model and may therefore hide biases and issues related to safety and reliability @barredo2020explainable.

The SIRUS algorithm solves this by simplifying the complex model and by then using the simplified model for predictions.
This ensures that the same model is used for interpretation and prediction.
However, the original SIRUS algorithm was implemented in about 10k lines of C++ and 2k lines of R
code#footnote[Source code available at #link("https://gitlab.com/drti/sirus").] which makes it hard to inspect and extend due to the combination of two languages.
Our implementation is written in about 2k lines of pure Julia code.
This allows researchers to more easily verify the algorithm and investigate further improvements.
Furthermore, the original algorithm was covered by the GPL-3 copyleft license meaning that copies are required to be made freely available.
A more permissive license makes it easier to port the code to other languages or production systems.

== Interpretability <interpretability>

To show that the algorithm is fully interpretable, we fit an example on the Haberman's Survival Dataset @haberman1999survival.
The dataset contains survival data on patients who had undergone surgery for breast cancer and contains three features, namely the number of axillary _nodes_ that were detected, the _age_ of the patient at the time of the operation, and the patient's _year_ of operation.
For this example, we have set the hyperparameters for the maximum number of rules to 8 since this is a reasonable trade-off between predictive performance and interpretability.
Generally, a higher maximum number of rules will yield a higher predictive performance.
We have also set the maximum depth hyperparameter to 2.
This hyperparameter means that the random forests inside the algorithm are not allowed to have a depth higher than 2.
In turn, this means that rules contain at most 2 clauses (`if A & B`).
When the maximum depth is set to 1, then the rules contain at most 1 clause (`if A`).
Most rule-based models, including SIRUS, are restricted to depth of 1 or 2 @benard2021sirus.

#box[
The output for the fitted model looks as follows (see @code-example for the code):
```
StableRules model with 8 rules:
 if X[i, :nodes] < 7.0 then 0.238 else 0.046 +
 if X[i, :nodes] < 2.0 then 0.183 else 0.055 +
 if X[i, :age] ≥ 62.0 & X[i, :year] < 1959.0 then 0.0 else 0.001 +
 if X[i, :year] < 1959.0 & X[i, :nodes] ≥ 2.0 then 0.0 else 0.006 +
 if X[i, :nodes] ≥ 7.0 & X[i, :age] ≥ 62.0 then 0.0 else 0.008 +
 if X[i, :year] < 1959.0 & X[i, :nodes] ≥ 7.0 then 0.0 else 0.003 +
 if X[i, :year] ≥ 1966.0 & X[i, :age] < 42.0 then 0.0 else 0.008 +
 if X[i, :nodes] ≥ 7.0 & X[i, :age] ≥ 42.0 then 0.014 else 0.045
and 2 classes: [0, 1].
```
]

This shows that the model contains 8 rules where the first rule, for example, can be interpreted as:
\
_If the number of detected axillary nodes is lower than 7, then take 0.238, otherwise take 0.046._

This calculation is done for all 8 rules and the score is summed to get a prediction.
In essence, the first rule says that if there are less than 8 axillary nodes detected, then the patient is more likely to survive (`class == 1`).
Put differently, the model states that if there are many axillary nodes detected, then it is, unfortunately, less likely that the patient will survive.
This model is fully interpretable because the model contains a few dozen rules which can all be interpreted in isolation and together.

== Stability

Another problem that the SIRUS algorithm addresses is that of model stability.
A stable model is defined as a model which leads to similar conclusions for small changes to data @yu2020veridical.
Unstable models can be difficult to apply in practice as they might require processes to constantly change.
This also makes such models appear less trustworthy.
Put differently, an unstable model by definition leads to different conclusions for small changes to the data and, hence, small changes to the data could cause a sudden drop in predictive performance.
One model which suffers from a low stability is a decision tree, available via DecisionTree.jl @sadeghi2022decisiontree, because it will first create the root node of the tree, so a small change in the data can cause the root, and therefore the rest, of the tree to be completely different @molnar2022interpretable.
Similarly, linear models can be highly sensitive to correlated data and, in the case of regularized linear models, the choice of hyperparameters.
The aforementioned RuleFit algorithm also suffers from stability issues due to the unstable combination of tree fitting and rule extraction @benard2021sirus.
The SIRUS algorithm solves this problem by stabilizing the trees inside the forest, and the original authors have proven the correctness of this stabilization mathematically @benard2021sirus.
In the rest of this paper, we will compare the predictive performance of SIRUS.jl to the performance of decision trees @sadeghi2022decisiontree, linear models, XGBoost @chen2016xgboost, and the original (C++/R) SIRUS implementation @benard2021sirus.
The interpretability and stability are summarized in Table #citefig(<interpretability-stability>).
#figure(
  {
    set text(size: 10pt)
    table(
      columns: (auto, auto, auto, auto, auto),
      align: (left, center, center, center, center),
      table.hline(start: 0),
      table.header(
        [], [*Decision Tree*], [*Linear Model*], [*XGBoost*], [*SIRUS*],
      ),
      table.hline(start: 0),
      [*Interpretability*], [High], [High], [Medium], [High],
      [*Stability*], [Low], [Medium], [High], [High],
      table.hline(start: 0),
    )
  },
  caption: "Summary of Interpretability and Stability for Various Models"
) <interpretability-stability>

== Predictive Performance

The SIRUS model is based on random forests and therefore well suited for settings where the number of variables is comparatively large to the number of datapoints @biau2016random.
To make the random forests interpretable, the large number of trees are converted to a small number of rules.
The conversion works by converting each tree to a set of rules and then pruning the rules by removing simple duplicates and linearly dependent duplicates, see the SIRUS.jl documentation or the original paper @benard2021interpretable for details.
In practice, this trade-off between between model complexity and interpretability comes at a small performance cost.

To show the performance, we compared SIRUS to a decision tree, linear model, XGBoost, and the original (C++/R) SIRUS algorithm; similar to Table #citefig(<interpretability-stability>).
We have used Julia version 1.9.3 with SIRUS version 1.3.3 (at commit `5c87eda`), 10-fold cross-validation, and we will present variability as 1.96 $*$ standard error for all evaluations with respectively the following datasets, outcome variable type, and measures:
Haberman's Survival Dataset @haberman1999survival binary classification dataset with AUC,
Titanic @eaton1995titanic binary classification dataset with Area Under the Curve (AUC),
Breast Cancer Wisconsin @wolberg1995breast binary classification dataset with AUC,
Pima Indians Diabetes @smith1988using binary classification dataset with AUC,
Iris @fisher1936use multiclass classification dataset with accuracy,
and Boston Housing @harrison1978hedonic regression dataset with $"R"^2$; see Table #citefig(<perf>).
For full details, see `test/mlj.jl`#footnote[#link("https://github.com/rikhuijzer/SIRUS.jl/blob/5c87eda4d0c50e0b78d12d6bd2c4387f5a83f518/test/mlj.jl").].
The performance scores were taken from the SIRUS.jl test job that ran following commit `5c873da` using GitHub Actions.
The result for the Iris dataset for the original SIRUS algorithm is missing because the original algorithm has not implemented multiclass classification.

#figure(
  {
    set text(size: 8.2pt)
    let param(txt) = text(txt, size: 6pt, weight: "bold")
    table(
      columns: (auto, auto, auto, auto, auto, auto, auto),
      align: (left, center, center, center, center, center, center),
      table.hline(start: 0),
      table.header(
        [*Dataset*], [*Decision*], [*Linear*], [*XGBoost*], [*XGBoost*], [*Original*], [*SIRUS.jl*],
        [], [*Tree*], [*Model*], [], [], [*SIRUS*], [],
        [], [], [], param([max depth: $infinity$]), param([max depth: 2]), param([max depth: 2]), param([max depth: 2]),
        [], [], [], [], [], param([max rules: 10]), param([max rules: 10]),
      ),
      table.hline(start: 0),
      [Haberman], [$0.54 plus.minus 0.06$], [$0.69 plus.minus 0.06$], [$0.65 plus.minus 0.04$], [$0.63 plus.minus 0.04$], [$0.66 plus.minus 0.05$], [$0.67 plus.minus 0.06$],
      [Titanic], [$0.76 plus.minus 0.05$], [$0.84 plus.minus 0.02$], [$0.86 plus.minus 0.03$], [$0.87 plus.minus 0.03$], [$0.81 plus.minus 0.02$], [$0.83 plus.minus 0.02$],
      [Cancer], [$0.92 plus.minus 0.03$], [$0.98 plus.minus 0.01$], [$0.99 plus.minus 0.00$], [$0.99 plus.minus 0.00$], [$0.96 plus.minus 0.02$], [$0.98 plus.minus 0.01$],
      [Diabetes], [$0.67 plus.minus 0.05$], [$0.70 plus.minus 0.06$], [$0.80 plus.minus 0.04$], [$0.82 plus.minus 0.03$], [$0.80 plus.minus 0.02$], [$0.75 plus.minus 0.05$],
      [Iris], [$0.95 plus.minus 0.03$], [$0.97 plus.minus 0.03$], [$0.94 plus.minus 0.04$], [$0.93 plus.minus 0.04$], [], [$0.77 plus.minus 0.08$],
      [Boston], [$0.74 plus.minus 0.11$], [$0.70 plus.minus 0.05$], [$0.87 plus.minus 0.05$], [$0.86 plus.minus 0.05$], [$0.63 plus.minus 0.07$], [$0.61 plus.minus 0.09$],
      table.hline(start: 0),
    )
  },
  caption: "Predictive Performance Estimates"
) <perf>

At the time of writing, SIRUS's predictive performance is comparable to the linear model and XGBoost on the binary classification datasets, that is, Haberman, Titanic, Breast Cancer, and Diabetes.
The best performance occurs at the Diabetes dataset where both XGBoost and the SIRUS models outperform the linear model.
The reason for this could be that negative effects are often nonlinear for fragile systems @taleb2020statistical.
For example, it could be that an increase in oral glucose tolerance increases the chance of diabetes exponentially.
In such cases, the hard cutoff points chosen by tree-based models, such as XGBoost and SIRUS, may fit the data better.

For the multiclass Iris classification and the Boston Housing regression datasets, the performance was worse than the other non-SIRUS models.
It could be that this is caused by a bug in the implementation or because this is a fundamental issue in the algorithm.
Further work is needed to find the root cause or workarounds for these low scores.
One possible solution would be to add SymbolicRegression.jl @cranmer2023interpretable as a secondary back end for regression tasks.
Similar to SIRUS.jl, SymbolicRegression.jl can fit expressions of a pre-defined form to data albeit with more free parameters, which might fit better but also might cause overfitting, depending on the data.
This achieves performance that is similar to XGBoost @hanson2023discourse.

In conclusion, interpretability and stability are often required in high-stakes decision making contexts such as personnel or treatment selection.
In such contexts and when the task is classification, SIRUS.jl obtains a reasonable predictive performance, while retaining model stability and interpretability.

== Code Example <code-example>

The model can be used via the Machine Learning Julia (MLJ) @blaom2020mlj interface.
The following code, for example, was used to obtain the fitted model for the Haberman example at the start of this paper, and is also available in the SIRUS.jl
docs#footnote[#link("https://sirus.jl.huijzer.xyz/dev/basic-example/").].

#let julia_code(str) = {
  let str = str.trim(regex("\n| "))
  [
    #block(
      raw(str, lang: "julia"),
      breakable: false
    )
  ]
}

We first load the dependencies:
#julia_code("
using CategoricalArrays: categorical
using CSV: CSV
using DataDeps: DataDeps, DataDep, @datadep_str
using DataFrames
using MLJ
using StableRNGs: StableRNG
using SIRUS: StableRulesClassifier
")
And specify the Haberman dataset via DataDeps.jl, which allows data verification via the checksum and enables caching: <br>
#julia_code("
function register_haberman()
  name = \"Haberman\"
  message = \"Haberman's Survival Data Set\"
  remote_path = \"https://github.com/rikhuijzer/haberman-survival-dataset/
      releases/download/v1.0.0/haberman.csv\"
  checksum =
      \"a7e9aeb249e11ac17c2b8ea4fdafd5c9392219d27cb819ffaeb8a869eb727a0f\"
  DataDeps.register(DataDep(name, message, remote_path, checksum))
end
")
Next, we load the data into a `DataFrame`: <br>
#julia_code("
function load_haberman()::DataFrame
  register_haberman()
  path = joinpath(datadep\"Haberman\", \"haberman.csv\")
  df = CSV.read(path, DataFrame)
  df[!, :survival] = categorical(df.survival)
  return df
end
")
We split the data into features (`X`) and outcomes (`y`):
#julia_code("
data = load_haberman()
X = select(data, Not(:survival))
y = data.survival
")
We define the model that we want to use with some reasonable hyperparameters for this small dataset:
#julia_code("
model = StableRulesClassifier(; rng=StableRNG(1), q=4, max_depth=2, max_rules=8)
")
Finally, we fit the model to the data via MLJ and show the fitted model:
#julia_code("
mach = let
  mach = machine(model, X, y)
  MLJ.fit!(mach)
end

mach.fitresult
")
Resulting in the fitresult that was presented in @interpretability.

Title: On Boosting in Machine Learning (Pt. 1): An Overview and AdaBoost
Date: 2019-10-10 08:46
Modified: 2019-10-10 08:46
Category: Python
Tags: machine-learning
Slug: boosting
Authors: Carlton Shepherd
Summary: A Primer on Boosting in Machine Learning (Pt. 1): An Overview and Adaboost
Status: draft

In this two-part series, we'll tour a family of machine learning algorithms known as *boosting*: what it is, how it works, its benefits, and its drawbacks. We'll also look at some of the most widely-used algorithms, such as Adaptive Boosting (AdaBoost) and Gradient Boosting Machines (GBMs), including XGBoost. 

Boosting has been used successfully to place highly many Kaggle competitions, including the [Higgs Boson](https://dbaumgartel.wordpress.com/2014/06/15/the-kaggle-higgs-challenge-beat-the-benchmarks-with-scikit-learn/), [product classification](https://www.kaggle.com/c/otto-group-product-classification-challenge/discussion/14335), and [IEEE-CIS fraud detection](https://www.kaggle.com/c/ieee-fraud-detection/discussion/111308#latest-645199) challenges. In general, it's found great utility using structured tabular data.

In this first post, an overview of boosting is given, alongside some of its high-level benefits and drawbacks; some fundamental knowledge of machine learning is assumed, such as decision trees, hypotheses, variance, and bias.

## What is Boosting?
Boosting is a family of meta-algorithms that use an *ensemble* of *weak learners* to produce a *strong learner*. Let's break each of these terms down.

* _Meta-algorithm_. Boosting isn't an algorithm, like a support vector machine (SVM), that generates and outputs a single model, or hypothesis function, over the training data. Instead, it's a high-level process by which the outputs of a series of hypotheses from individual classifiers are used in an *ensemble* to produce a single classification output. Other widely used meta-algorithms include bootstrapping aggregation (*bagging*) methods, e.g. [Random Forests](https://en.wikipedia.org/wiki/Random_forest), and *stacking*.

* _Ensemble_. Ensemble learning builds on a long-standing observation---dating back to the late 1980s [1]---that the aggregation of *multiple* hypotheses generally outperforms that of a single hypothesis. How the outputs are aggregated differs between algorithms: boosting uses the training set to generate multiple classifiers, where the final output is produced from a *weighted sum* of these sub-classifiers. <!-- Comparatively, *bagging* uses a number of random sub-samples from the training set, with replacement, upon which individual classifiers are trained; the final decision is produced using an unweighted majority vote of these classifers' results (for categorical outputs). Lastly, *stacking* uses an additional learning algorithm, such as logistic regression,-->
* A _weak learner_ is a classifier that performs only marginally better than random, with high bias but low variance, while a _strong learner_ is one with high predictive power with low bias and variance.

Boosting 

## AdaBoost

Adaptive boosting (AdaBoost) was developed by Freund and Schapire [2], [who were subsequently awarded the G"odel Prize in 2003](https://mailman.srv.cs.cmu.edu/pipermail/connectionists/2003-October/021353.html). AdaBoost uses an iterative process in which each training sample is first assigned a weak learner; while any classifier can be used, a common practice is to use *decision stumps*. These are single-level decision trees of the form $$ f(\textbf{x}) = sign(x_k > c) $$.

### Benefits


### Drawbacks
* 



## Refs.

1. [J.R. Quinlan, "Bagging, Boosting, and C4.5", AAAI/IAAI, Vol. 1, 1996.](http://www.cs.ecu.edu/~dingq/CSCI6905/readings/BaggingBoosting.pdf)
2. [Y. Freund and R. E. Schapire, "A Decision-Theoretic Generalization of On-Line Learningand an Application to Boosting", Journal of Computer and System Sciences, Vol. 55, 1997.](https://www.sciencedirect.com/science/article/pii/S002200009791504X)

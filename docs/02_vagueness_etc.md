## Homework 2: Vagueness, BDA & scope ambiguity

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

Solutions are due on Friday, November 3rd by noon. Please send your solutions as a zipped archive, including a *.webppl file for each exercise with your code and in-code comments to [Michael Franke](mailto:michael.franke@uni-tuebingen.de). Please name the archive `lastName_HW2.zip` and the included files like `lastName_HW2_ex1_partA.wppl`. 

#### Exercise 1: Vagueness

Use the code from the last model in the first section of [Chapter V of the BDAPPL Webbook](https://mhtess.github.io/bdappl/chapters/05-vagueness.html). This model uses the empirically measured priors over prices for various items to calculate the listener's interpretation of *expensive*. We would like to explore the behavior of this model under different values of its parameters. 

##### Part A: convenience function for predictions

To do so conveniently, extend the code by wrapping the relevant part of the given code in a convenience function called `predictions`. The arguments to a function call of `predictions` should be:

1. the item (as a string)
2. the speaker optimality parameter $$\alpha$$
3. the cost of the utterance *expensive*

For example, a function call to get the predictions for the item `"watch"` with `alpha = 1` and utterance cost `2` for expensive would be `predictions("watch", 1, 2)`.

The output of the `predictions` function should be two plots, the same ones that are shown by the model code as it is in the chapter:

1. listener's posterior marginalized over prices 
2. listener's posterior marginalized over thresholds

Additionally, make sure that calls like `print("the listener's posterior over XXX prices:")` is properly changed so that the correct item name is included. Finally, also include the expected value of each marginal posterior distribution using the built-in function `expectation`.

Call your convenience function several times for $$\alpha = 2$$ with different values for $$c$$. What is the functional relationship between $$c$$ and the expected value of prices? (E.g., the higher $$c$$, the ... )

##### Part B: the interpretation of the null message

Build on your code from the previous part, to now give the predictions for the interpretation of the null utterance `""`. Look at the functional relationship for $$c$$ on the expectation of the threshold value. Try to explain your observations in at most three simple sentences.

#### Exercise 2: Model comparison

##### Part A

Answer the three last exercise questions in the [appendix chapter on BDA](https://michael-franke.github.io/probLang/chapters/app-02-BDA.html). Include the model code for question III, and answer all questions with simple in-line code in the .wppl file.

##### Part B

Compare two other models using the same code as in the last code box in the [appendix chapter on BDA](https://michael-franke.github.io/probLang/chapters/app-02-BDA.html). Specifically, compare a model which only uses the empirically measured salience priors in the literal listener but not the pragmatic listener, to one that does it the other way around (i.e., the "good" model from that code block). Interpret your result in one sentence (e.g., "The data provides gigantic/minor/no evidence for/against ...")

#### Exercise 3: Reasoning about scope ambiguity

Read [chapter IV on scope ambiguities](https://michael-franke.github.io/probLang/chapters/04-ambiguity.html). Answer all the exercise questions that occur in the chapter. Submit each new roman-numbered question as a new part/file. Whenever a question asks for changes in the code, send your changes along with inline comments to answer the questions.

Finally, give your opinion about this model in a few short but to-the-point sentences. You might focus on questions like these: do you like this model?; is there anything (obvious) missing?; how would you possibly like to extend it? do you think there is anything unintuitive in the implementation? (This is not a catch question: there is no "true answer" that you have to unearth.)


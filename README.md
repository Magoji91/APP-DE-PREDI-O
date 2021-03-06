# APP-DE-PREDI-O

THE WORD PREMONITOR     
========================================================
author: SMS
date: 08/06/2017
autosize: true

Why would you want to predict upcoming words?
========================================================

The probabilities are essential for identifying words with ambiguous meanings and spelling errors, as well as for speech recognition or recognition of written letters. For example, in the film Take the Money and Run, Woody Allen tries to steal the bank by threatening the bank teller with a badly written note, which induces the cashier to read "I have a gub" instead of "I have a gun" Such a mistake could be avoided if the bank teller had a language processing system that could recognize that the sequence "I have a gun" is much more likely than the non-word "I have a gub" or something more absurd like "I have a ghoul".

How to predict?
========================================================
There are several models of creating an n-gram prediction application, like N-grams with the modified Kneser-Ney smoothing, normalized stupid backoff, structers maximum entrophy language model whti hierarchical softmax, binary maximum entropy language model, neural network based, recurrent neural network language model, etc. In front of the models mentioned above, I prefer to use a model with a simpler algorithm than a complex one, such as Stupid Backoff because in this n-gram model, if the N-gram we need has zero counts, we go back to the program (N-1) until there is a correct probability distribution. For example: if we use the trigram and it is not enough to present a correct probability distribution, the program will use the bigram, and if that is insufficient the unigram. In other words, we only "back off" to a lower-order N-gram if we have zero evidence for a higher-order N-gram.

The Word Premonitor - Shiny App
========================================================
![alt text](shiny.png)

Observation
========================================================
The biggest challenge in creating the word prediction application was the processing time of the files, due to the size of the files, so it is necessary to choose a small sample for the development of the application in order to facilitate its homologation and later production. In addition, I report that the creation of this App was only possible by reading the article on N-grams in the work Speech and Language Processing by Daniel Jurafsky & James H. Martin and the application analysis present in the aamrite repository (https://github.com/aamrite/PredictNextWord).

For more information about this app: 

https://github.com/Magoji91/APP-DE-PREDI-O

https://smsanda2017.shinyapps.io/ModelPredict/

# Machine Learning ECE 4824 Final Project Team 12
### Authors: Zackery Frazier, Brandon Cheung, and John Zartman

### Original Paper Results

The paper which we attempted to implement was Bayesian regression and Bitcoin paper
written by Devavrat Shah and Kang Zhang(https://arxiv.org/pdf/1410.1231v1.pdf). 

We built off of an existing attempted implementation of this paper which was hosted
on a github repository located at (https://github.com/panditanvita/BTCpredictor).

The paper was about using Bayesian Regression to predict fluctuations in the Bitcoin market.

The implementation of this paper reported that it was able to correctly predict the movement
of the Bitcoin market approximately 80% of the time.



### Procedures

In order to try and reproduce the findings of the paper and implementation we used the existing 
implementation, and trained and tested the model with an updated data set.

Our data set used the same amount of data points as the original paper, 120,000. The two main differences between the data set that we used and the one used in the original paper was the cryptocurrency used to obtain the pricing, and the time interval between data points. In the original paper they pulled there data from the cryptocurrency okcoin, and we used Coinbase. Also, in the original paper their was a five second interval between each of the data points, our data set has one minute between data points. This leads to our data spanning a longer amount of time that the original data set.


To produce our data set we pulled price data for coinbase [1]. This data was for every minute from the being of the cryptos life in 2014 through the current day. We then used simple unix commands to grab the last 120,000 lines of the data file. The data set we had contained a lot of information including the pricing data at the opening of the minute and at the closing of the minute. We chose to us the opening prices as our price data point and stayed consistent with that choice through the rest of the experiment.

The next thing we did was write a short python script to graph both the entire data set of the original paper and our entire data set. This was done so that we could visually see both the data that the program would be training on as well as the data that would be tested on.    


After we obtained and properly formatted the data set we proceeded to run the data set and...

## Original

### Original Results

**Figure 1** - Full data set used in the original experiment
![Entire Original Data Set](original_data_full_graph.png)

**Figure 2** - The resulting graph from the original experiment
![Graph of the Original Experiment](original_data_graph.jpg)
The red dots were when the program bought Bitcoin, and the green dots are when the program sold Bitcoin.

**Figure 3** - The results from the original experiment
![Matlab Results from the original experiment](original_data_results.PNG)



## Reproduction

For this project we decided that would would try to recreate the results of the original paper of having a 1.1% profit and approximately an 80% "win percentage". In our original project proposal we planned to use two year worth of Bitcoin market data at ten minute intervals, and training using the  

### Reproduction Results

**Figure 4** - Full data set the we used for our experiment
![Entire New Data Set](new_data_full_graph.png)

**Figure 5** - The resulting graph from the new experiment
![Graph of the New Experiment](our_data_graph.jpg)

**Figure 6** - The results from the new experiment

![Matlab Results from the original experiment](our_data_results.PNG)

### Analysis

We were able to successfully replicate the finding of the original paper and implementation.

As you can see below in figures 3 and 6 below our new data set was able to perform better
than the original data set. We were able to get a higher success rate, and a higher total
profit than the was previously available.

We speculate that this was due to the less erratic movement of the Bitcoin market. As you
can see in figure 1 the original data was highly volatile and seemed to jump almost 
randomly as the epochs increased. While the new data also has some large jumps it tends to
be more smooth and generally tended to follow more of a pattern than the previous data, 
as seen in figure 4 below.

It is worth noting however, that the program only attempted a single transaction on the
new data set. We are currently unaware of this change though this could have to do with
the fall of Bitcoin in recent months.






### Relevent Papers

While working on this project we read and referenced several papers including Deep Bayesian 
regression models by Aliaksandr Hubin and Geir Storvik (https://arxiv.org/pdf/1806.02160.pdf) 
and A Bayesian Perspective of Statistical Machine Learning for Big Data byRajiv Sambasivan, 
Sourish Das and Sujit K. Sahu (https://arxiv.org/pdf/1811.04788.pdf)

### Reference Links
[1] https://www.kaggle.com/mczielinski/bitcoin-historical-data


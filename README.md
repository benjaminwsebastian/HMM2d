## Introduction
[![Build Status](https://travis-ci.com/benjaminwsebastian/HMM2d.svg?branch=master)](https://travis-ci.com/benjaminwsebastian/HMM2d)

This project is in an implementation of [this](https://citeseerx.ist.psu.edu/viewdoc/summary?doi=10.1.1.41.4925) article and [this](https://researchgate.net/publication/272376728_Two-Dimensional_Hidden_Markov_Models_in_Road_Signs_Recognition) article in Julia. 

## Overview of two-dimensional hidden markov model

The goal of this is to overview is to help me when I am writing the module.

### What is a 2d HMM

### Defining a 2d HMM

We need 7 parameters to define a 2d HMM:

1. N^2 :           Number of states of the model
2. k_1 x K_2 = K : Number of data streams
3. M :             Number of symbols
4. A = {a_i,j,l} : Transition probability matrix ; 1 <= i,j <= N, 1 <= l <= N^2
5. B = {b_i,j,m} : Observation probability matrix ; 1 <= i,j <= N, 1 <= m <= M
6. PI = {pi_i,j,k} : Initial probability ; 1 <= i,j <= N, 1 <= k <= K
7. O = {o_t}     : Block matrix of observation sequence ; o_t square matrix of size k_1 x k_2 and 1 <= t <= T

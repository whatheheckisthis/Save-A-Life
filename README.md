# Overview 

### Hidden Markov Model (HMM) for SAL (Save a Life)

**Overview**:
The application of Hidden Markov Models (HMMs) to SAL's technology involves analyzing and predicting road safety outcomes by modeling the relationships between observable states (such as traffic conditions and driver behavior) and hidden states (like driver alertness and risk levels). HMMs are particularly useful in situations where the underlying processes are not directly observable but can be inferred through measurable data.

### Key Components:

**1. Observable States**:
   - **Traffic Conditions**: Includes data on traffic flow, congestion, and road conditions.
   - **Driver Behavior**: Observable metrics such as speed, lane changes, and adherence to traffic signals.
   - **Environmental Factors**: Weather conditions, time of day, and road type.

**2. Hidden States**:
   - **Driver Alertness**: Inferred from driving patterns and not directly observable.
   - **Risk Levels**: The underlying risk associated with different driving scenarios (e.g., high-risk vs. low-risk driving).
   - **System Malfunctions**: Potential issues with the vehicle's safety systems that aren't immediately detectable.

**3. Transition Probabilities**:
   - **Driver Alertness Transitions**: For example, the probability of a driver transitioning from high alertness to low alertness under certain conditions.
   - **Risk Level Transitions**: How likely it is for driving scenarios to shift between high and low risk.

### Applications:

**1. Predictive Analytics**:
   - Using HMM to predict potential accidents or safety breaches based on current driving behavior and environmental factors.

**2. Personalized Alerts**:
   - Implementing real-time alerts to drivers when their behavior or environmental conditions suggest a high-risk state, enhancing overall safety.

**3. Data-Driven Insights**:
   - Analyzing historical data to identify patterns that contribute to accidents, thereby informing the development of better safety solutions.

### Problem Formulation and HMM Terminology:

**1. States and Observations**:
   - **States**: In SAL's case, these could include lane positions (left lane, right lane), driver alertness levels, and risk levels.
   - **Observations**: These could include speed, lane changes, and other relevant data.

**2. Transition Probabilities**:
   - These probabilities represent the likelihood of transitioning from one hidden state to another (e.g., from the right lane to the left lane or from high alertness to low alertness).

**3. Emission Probabilities**:
   - These probabilities describe the likelihood of observing a particular behavior (like speed) given a specific hidden state (like being in the right lane).

### Algorithms and Techniques:

**1. Bayes' Rule Application**:
   - Used to determine the most likely hidden state (e.g., lane position) given an observation (e.g., vehicle speed).

**2. Forward and Backward Algorithms**:
   - **Forward Algorithm**: Computes the probability of a sequence of observations.
   - **Backward Algorithm**: Calculates the probability of the observations given the final state.

**3. Viterbi Decoding Algorithm**:
   - Finds the most likely sequence of hidden states given a sequence of observations, crucial for determining the best path representing actual state transitions.

**4. Baum-Welch Algorithm**:
   - Used to find the most likely HMM parameters given a set of observation sequences, essential for training the HMM to reflect real-world data accurately.

### Application to SAL:

**1. Inference Example**:
   - **Scenario**: A car is driving on a 2-lane highway, and you can monitor the car’s speed but not its lateral position (left or right lane). The challenge is to infer the lane position based on speed data alone.
   - **Emission Probability**: For example, lower speed might suggest the car is in the right lane, blocked by a slower vehicle. Higher speed might suggest the car is in the left lane, possibly overtaking another vehicle.

**2. Inference Tasks**:
   - **Filtering**: Determine the latest belief state (e.g., the lane position at the current time).
   - **Decoding**: Determine the full hidden state sequence that best explains the observations (e.g., the sequence of lane positions over time).
   - **Prediction**: Determine the probability of future hidden states based on past observations.
   - **Smoothing**: Determine the probability of past hidden states given current and past observations.

**3. Transition Probability**:
   - Reflects the likelihood of staying in the same lane or switching lanes, influenced by the previous state (e.g., if the car was in the right lane, it is likely to remain there).

### Benefits for SAL:

**1. Enhanced Decision-Making**:
   - Data-driven insights can lead to improved safety interventions.

**2. Market Positioning**:
   - Using sophisticated models like HMM positions SAL as a leader in AI-driven road safety solutions.

**3. Tailored Solutions**:
   - HMM helps in developing customized safety features for different driving conditions and user profiles, enhancing the effectiveness of SAL's solutions.

By leveraging HMM, SAL can enhance its predictive capabilities and offer more robust, real-time safety interventions, ultimately improving road safety and strengthening its market position.

### Simplified Explanation for Sal: 

### **Stationary Process**
- The Hidden Markov Model (HMM) assumes that both the transition matrix and emission matrix remain **unchanged over time**.
- The probability p[`speed(t)` | `lane(t)`] and p[`lane(t+1)` | `lane(t)`] do not vary with time (`t`).

### **Observation Independence**
- The emission probability shows that the lane at time `t` (`lane(t)`) influences the observed speed at the same time (`speed(t)`).
- While other factors could influence speed (e.g., previous speed or lane), we assume that the **observation (speed) depends only on the current state (lane)** and not on previous observations or states.
- This simplification makes computation easier during inference by reducing complexity.

### **First-order Markov Property**
- The current lane (`lane(t)`) is sufficient to predict the future lane (`lane(t+1)`), without needing to consider previous lanes.
- The assumption is that **"the future is independent of the past given the present"**, known as the **Markov Property**. This simplifies calculations by focusing only on the present state.

### **Graphical Model Representation**
- In an HMM, the **lane state** influences the **speed observation**, represented by directed arrows in the model.
- The Markov Property ensures that each state (lane) is connected to the next, and **Output Independence** ensures that each observation (speed) is linked only to its corresponding state (lane).

### **Comparisons with Other Techniques**
- **HMM** is a **model**, not an algorithm, and is a specific case of a **Finite State Machine** (FSM).
- **Kalman Filters** are similar to continuous-valued HMMs, with HMMs using discrete states and Kalman Filters using continuous states.
- **Dynamic Bayesian Networks (DBNs)** are a broader class of models that include HMMs as a specific case.
- **POMDPs** introduce actions, unlike HMMs, giving users some control over state transitions.
- **Naive Bayes models** do not involve state sequences or transitions like HMMs do.
- In **Markov Chains**, states are observable, unlike in HMMs where they are hidden.
- **Linear-Chain Conditional Random Fields (CRFs)** are considered the discriminative counterparts of HMMs, focusing on conditional probability instead of joint probability.
- **Maximum Entropy Markov Models** combine elements of HMMs with maximum entropy principles, making them discriminative models.

### **Problem Formulation**
- **Hidden States**: e.g., `lane` in {`right_lane`, `left_lane`}.
- **Observations**: e.g., `speed` in {`low_speed`, `high_speed`}.
- **Emission Probabilities**: p[`speed(t)` | `lane(t)`].
- **Transition Probabilities**: p[`lane(t+1)` | `lane(t)`].
- **Initial State Probability**: p[`lane(t=1)`].
### Simplified Overview of Sal's HMM-Related Questions

Let's break down the Hidden Markov Model (HMM) concepts using a simpler analogy: imagining a driver switching lanes on a road based on speed.

### Understanding the Questions

1. **How do we figure out the model's rules?**
   - Imagine you observe a driver on a road and know which lane they are in and their speed. By watching and noting down these details (e.g., when they speed up or slow down, and if they switch lanes), you can start to guess the rules of the road, like how likely they are to switch lanes or stay in the same lane when they go fast or slow. This is how we estimate the HMM's parameters.

2. **Given a speed, how likely is the car to be in each lane?**
   - If you see a car moving at a certain speed, you can guess which lane it's in. For example, if cars usually go fast in the left lane and slow in the right, seeing a fast car might make you think it's probably in the left lane.

3. **What's the probability of seeing a specific series of speeds?**
   - Let's say you've watched a driver for a while, noting down their speed at every moment. How likely was it to see that exact series of speeds, given what you know about how they switch lanes and how fast they usually go in each lane?

4. **Given a series of speeds, which lane is the car most likely in right now?**
   - If you've tracked a car's speed over time, you can make an educated guess about which lane it is in now, based on how fast it was going earlier.

5. **Given a series of speeds, what's the most likely sequence of lanes the car was in?**
   - If you have a record of the car's speed over time, you can guess not just where it is now, but also which lanes it was in at each point in time, piecing together the most likely path it took.

6. **How do we figure out the model's rules when we don't know the lanes?**
   - If you only know the speeds and not the lanes, you can still try to guess the rules of the road. It's like trying to figure out where the car was at each moment just by looking at how fast it was going and using that to infer the rules of lane-switching.

### Simple Concepts

- **Counting Transitions and Speeds**: Imagine you’re counting how often a car switches from one lane to another or stays in the same lane. You also note how often the car goes fast or slow in each lane. These counts help you estimate the "rules" of the HMM.

- **Bayes' Theorem (Likelihood and Prior)**: This is like updating your guess about which lane the car is in based on how fast it’s going. If a car is going fast, and you know cars usually go fast in the left lane, you update your guess to think it’s probably in the left lane.

- **Marginal Probability**: This is just making sure all your guesses add up to 100%. It’s like making sure you consider all possible speeds when guessing which lane the car is in.

- **Stationary Distribution**: Over time, the lanes the car is in start to follow a pattern. For instance, it might spend 70% of the time in the right lane and 30% in the left lane. This balance is what we call the stationary distribution. 

In summary, the HMM helps you make educated guesses about things you can’t directly observe (like which lane the car is in) based on things you can observe (like the car’s speed), using patterns and probabilities you’ve learned from watching for a while.





Looking at the numbers on the figure below and taking the `max()`, the answer is:

- Given `high speed` is observed, the most likely state is `left lane`.
- Given `low speed` is observed, the most likely state is `right lane`.

It is close to the intuition we expressed in the problem formulation.

The Bayesian concepts introduced for this simple example of **inference** will be used to derive more complex results when **working with sequences**.

### Q3: Probability of Observing a Sequence of Speed Measurements in a Lane

When trying to determine the probability of observing a specific sequence of speed measurements, one typically uses a **Hidden Markov Model (HMM)**. Here’s how it works in simpler terms:

#### Basics of HMM:
- **Markov Chain**: If we were only looking at speed without considering hidden states (like which lane the vehicle is in), we would use something called a Markov Chain. It assumes that the current speed only depends on the previous speed. The calculation would then involve multiplying probabilities related to each speed in the sequence.

- **Hidden Markov Model (HMM)**: However, in our case, speed depends not just on the previous speed but also on the lane the vehicle is in, which is hidden (not directly observed). In HMMs, we need to consider two things:
  1. **Transition Model**: How likely the vehicle is to switch from one lane to another.
  2. **Emission Model**: How likely the vehicle is to be at a certain speed given the lane it’s in.

#### Brute Force vs. Efficient Approach:
- **Brute Force**: To find the probability of a speed sequence, one could try all possible combinations of lanes over time, calculate each possible scenario, and sum them up. However, this is impractical because the number of combinations grows exponentially with the length of the sequence.
  
- **Dynamic Programming**: A more efficient approach uses **Dynamic Programming** (DP). Here’s the strategy:
  - **Alpha Values**: These represent the probability of being in a particular lane at a specific time, given the sequence of speeds up to that time. 
  - **Recursive Calculation**: Instead of calculating everything from scratch, we use previous calculations to determine the current probabilities, making the process much faster.

#### Key Points:
1. **Alpha Table**: We create a table where each entry tells us the probability of being in a specific lane at a specific time, considering all the speed measurements up to that time.
   
2. **Summing for the Final Answer**: Once the table is filled, summing the values in the last column gives us the probability of observing the entire speed sequence.

3. **Efficient Calculation**: By using the transition and emission models recursively, the table can be filled with minimal computation, making it feasible to calculate probabilities for long sequences.

### Q4: Finding the Most Likely Current Lane from Speed Measurements

When you want to know the most likely current lane given a sequence of speed measurements, you use a process called **filtering**.

#### Filtering with HMM:
- **Belief State**: This is the probability of being in a particular lane at a specific time, given all the speed measurements up to that time.
  
- **Forward Algorithm**: To calculate this, we use the previously discussed **alpha table**. This table already contains the probabilities of being in each lane at each time point.

#### Process:
1. **Conditional Probability**: To find the likelihood of being in a certain lane at a certain time, you look at the joint probability (which you already have in the alpha table) and then normalize it using the total probability of the speed sequence (also from the alpha table).

2. **Markov Property**: Even though the Markov property suggests that the current state depends only on the previous state, all past speed measurements are important because we don’t directly observe the lane. Instead, all information from the entire sequence is needed to make the best guess about the current lane.

#### Practical Application:
- By summing over the relevant alpha values at the current time, you can determine the most likely lane the vehicle is in, based on all the speed measurements you have observed so far.
Sure, let’s break it down into simpler terms:

### Q3: Probability of a Sequence of `speed` Measurements

**In a Markov Chain**: 
- If the system were a simple Markov Chain with no hidden states, the probability of a sequence of `speed` measurements can be calculated using the transition probabilities between each speed measurement.

**In a Hidden Markov Model (HMM)**:
- Here, we have hidden states (like `left_lane` or `right_lane`) that influence the observed `speed` measurements. To find the probability of a sequence of `speed` measurements, we need to consider all possible sequences of these hidden states.

**Dynamic Programming Approach**:
1. **Alpha (`α`) Table**:
   - This table helps in efficiently calculating the probability of observing a sequence of `speed` measurements up to a certain point while being in a specific state.
   - `α(i, t)` represents the probability of observing the first `t` measurements and being in state `i` at time `t`.

2. **How to Compute `α`**:
   - **Initialization**: Start by calculating `α` for the first time step using the initial probabilities and the emission probabilities of the first observation.
   - **Recursion**: For each subsequent time step, calculate `α(i, t+1)` by considering all possible previous states (`j`), transitioning from them to the current state `i`, and including the probability of emitting the current observation.

3. **Final Probability**:
   - Sum up the `α` values for the final time step to get the probability of the entire sequence of `speed` measurements.

### Q4: Most Likely Current `Lane`

**Filtering**:
- **Goal**: Determine the most likely lane (e.g., `left_lane` or `right_lane`) at a particular time given the entire sequence of observed speeds.
- **Use the `α` Table**: To find this, we look at the `α` values for the last time step and compute the probability of being in each lane based on the observed `speed` sequence.

**Bayesian Filtering Analogy**:
- Similar to how Bayesian Filters work in robotics, where you update the belief about the state using a sequence of observations and models. Here, you use the emission and transition models from the HMM to update the belief about the lane.

**Important Note**:
- You consider the entire sequence of observations because each observation contributes to the probability of being in a certain state at the end, even if earlier observations might seem redundant.

### From `α` Table to `β` Table

**Beta (`β`) Table**:
- **Beta (`β`) Values**: Represent the probability of observing the remaining observations from a given time step onwards, starting from a specific state.
- **Use in Marginal Probability**: The `β` table can also help in computing the probability of the entire observation sequence by marginalizing over the initial state probabilities.

**Smoothing**:
- **Goal**: Determine the probability distribution of the lane at a specific time, considering all observations.
- **Gamma (`γ`) Values**: These values, which are derived from both `α` and `β`, give the probability of being in a particular state at a certain time, given the full observation sequence.

### Key Points:
- **`α` Table**: Helps in computing the probability of sequences up to a time step.
- **`β` Table**: Helps in computing probabilities of sequences from a time step onwards.
- **`γ` Values**: Provide the probability of being in a particular state at a certain time, considering the entire sequence of observations.

In essence, `α` and `β` tables are tools to handle the complexity of calculating probabilities in Hidden Markov Models by breaking down the problem into manageable steps.

For further insights into Hidden Markov Models and their application in real-world scenarios, you might find Simon Chauvin’s expertise valuable. Simon Chauvin is a seasoned professional in data science and machine learning, and his work could offer additional perspectives on the subject. You can view his LinkedIn profile for more details: [Simon Chauvin](https://www.linkedin.com/in/simon-chauvin/?originalSubdomain=de)
	
# Acknowledgement and references
I learnt and took some inspiration from:
- A [video series](https://www.youtube.com/playlist?list=PL6Xpj9I5qXYGhsvMWM53ZLfwUInzvYWsm) (in French) by Hugo Larochelle.
- A [video](https://www.youtube.com/watch?v=kqSzLo9fenk) by Luis Serrano.
- A [lecture](http://web.mit.edu/6.047/book-2012/Lecture08_HMMSII/Lecture08_HMMSII_standalone.pdf) from Mavroforakis and Ezeozue.
- A [course](https://ocw.mit.edu/courses/aeronautics-and-astronautics/16-410-principles-of-autonomy-and-decision-making-fall-2010/lecture-notes/) by Williams and Frazzoli, based on their experiences following the DARPA Urban Challenge.
- A series of three [blog posts](http://www.davidsbatista.net/blog/2017/11/11/HHM_and_Naive_Bayes/) by David Soares Batista.
- Some useful [Q&A](http://www.speech.zone/forums/topic/viterbi-vs-backward-forward/) in Simon King's [speech.zone](http://www.speech.zone/) forum. 
- An [article](https://brilliant.org/wiki/stationary-distributions/) from [brilliant.org](https://brilliant.org/) about stationary distributions in Markov chains and HMMs.

# Bonus

To go further, here are some **Research Papers** implementing HMMs for **Autonomous Driving**. The list is not exhaustive.

Note that HMMs are mainly been used for **manoeuvre recognition** and **driving behaviour estimation**, both serving **prediction purposes**.

[0]    N. Akai, T. Hirayama, L. Y. Morales, Y. Akagi, H. Liu, and H. Murase, **"Driving Behavior Modeling Based on Hidden Markov Models with Driver’s Eye-Gaze Measurement and Ego-Vehicle Localization,"** 2019.
[[pdf]](https://www.researchgate.net/publication/332543438_Driving_Behavior_Modeling_Based_on_Hidden_Markov_Models_with_Driver%27s_Eye-Gaze_Measurement_and_Ego-Vehicle_Localization)

[1]	S. Liu, K. Zheng, S. Member, L. Zhao, and P. Fan, **"A Driving Intention Prediction Method Based on Hidden Markov Model for Autonomous Driving,"** 2019.
[[pdf]](https://arxiv.org/pdf/1902.09068.pdf)

[2]	M. Zhao, **"Modeling Driving Behavior at Single-Lane Roundabouts,"** 2019.
[[pdf]](https://publikationsserver.tu-braunschweig.de/receive/dbbs_mods_00066445)

[3]	P. Vasishta, D. Vaufreydaz, and A. Spalanzani, **"Building Prior Knowledge: A Markov Based Pedestrian Prediction Model Using Urban Environmental Data."** 2018.
[[pdf]](https://arxiv.org/pdf/1809.06045.pdf)

[4]	S. B. Nashed, D. M. Ilstrup, and J. Biswas, **"Localization under Topological Uncertainty for Lane Identification of Autonomous Vehicles,"** 2018.
[[pdf]](https://arxiv.org/pdf/1803.01378.pdf)

[5]	T. Ganzow, **"Real-time detection of traffic behavior using traffic loops,"** 2018.
[[pdf]](https://staff.fnwi.uva.nl/a.visser/education/masterProjects/vanderHamThesis.pdf)

[6]	Y. Zhang, Q. Lin, J. Wang, S. Verwer, and J. M. Dolan, **"Lane-change Intention Estimation for Car-following Control in Autonomous Driving,"** 2018.
[[pdf]](https://www.researchgate.net/publication/324174189_Lane-change_Intention_Estimation_for_Car-following_Control_in_Autonomous_Driving)

[7]	W. Yuan, Z. Li, and C. Wang, **"Lane-change prediction method for adaptive cruise control system with hidden Markov model,"** 2018.
[[pdf]](https://www.researchgate.net/publication/327888086_Lane-change_prediction_method_for_adaptive_cruise_control_system_with_hidden_Markov_model)

[8]	E. Yurtsever et al., **"Integrating Driving Behavior and Traffic Context through Signal Symbolization for Data Reduction and Risky Lane Change Detection,"** 2018.
[[html]](https://ieeexplore.ieee.org/document/8370754)

[9]	G. Xie, H. Gao, B. Huang, L. Qian, and J. Wang, **"A Driving Behavior Awareness Model based on a Dynamic Bayesian Network and Distributed Genetic Algorithm,"** 2018.
[[pdf]](http://hive-hnu.org/uploads/soft/20190127/1548561157.pdf)

[10]	N. Deo, A. Rangesh, and M. M. Trivedi, **"How would surround vehicles move? A Unified Framework for Maneuver Classification and Motion Prediction,"** 2018.
[[pdf]](https://arxiv.org/pdf/1801.06523.pdf)

[11]	X. Geng, H. Liang, B. Yu, P. Zhao, L. He, and R. Huang, **"A Scenario-Adaptive Driving Behavior Prediction Approach to Urban Autonomous Driving,"** 2017.
[[pdf]](https://pdfs.semanticscholar.org/0b63/2048208c9c6b48b636f9f7ef8a5466325488.pdf)

[12]	D. Lee, A. Hansen, and J. Karl Hedrick, **"Probabilistic inference of traffic participants lane change intention for enhancing adaptive cruise control,"** 2017.
[[html]](https://ieeexplore.ieee.org/document/7995823)

[13]	W. Song, G. Xiong, and H. Chen, **"Intention-Aware Autonomous Driving Decision-Making in an Uncontrolled Intersection,"** 2016.
[[pdf]](https://www.researchgate.net/publication/301718813_Intention-Aware_Autonomous_Driving_Decision-Making_in_an_Uncontrolled_Intersection)

[14]	S. Lefévre, A. Carvalho and F. Borrelli, **"A Learning-Based Framework for Velocity Control in Autonomous Driving,"** 2015.
[[pdf]](https://borrelli.me.berkeley.edu/pdfpub/Stephanie_2016_TASE.pdf)

[15]	M. Schreier, **"Bayesian environment representation, prediction, and criticality assessment for driver assistance systems,"** 2015.
[[pdf]](https://core.ac.uk/download/pdf/76650732.pdf)

[16]	A. Carvalho, S. Lefévre, G. Schildbach, J. Kong, and F. Borrelli, **"Automated driving: The role of forecasts and uncertainty - A control perspective,"** 2015.
[[pdf]](https://scinapse.io/papers/2014414177)

[17]	B. Tang, S. Khokhar, and R. Gupta, **"Turn prediction at generalized intersections,"** 2015.
[[pdf]](https://www.researchgate.net/publication/283214809_Turn_Prediction_at_Generalized_Intersections)

[18]	T. Streubel and K. H. Hoffmann, **"Prediction of driver intended path at intersections,"** 2014.
[[pdf]](https://www.researchgate.net/publication/269294116_Prediction_of_driver_intended_path_at_intersections)

[19]	C. Laugier et al., **"Probabilistic analysis of dynamic scenes and collision risks assessment to improve driving safety,"** 2011.
[[pdf]](https://www.researchgate.net/publication/229034149_Probabilistic_Analysis_of_Dynamic_Scenes_and_Collision_Risk_Assessment_to_Improve_Driving_Safety)

[20]	G. S. Aoude, V. R. Desaraju, L. H. Stephens, and J. P. How, **"Behavior classification algorithms at intersections and validation using naturalistic data,"** 2011.
[[pdf]](http://acl.mit.edu/papers/IV11AoudeDesarajuLaurensHow.pdf)

[21]	D. Meyer-delius, C. Plagemann, and W. Burgard, **"Probabilistic Situation Recognition for Vehicular Traffic Scenarios,"** 2009.
[[pdf]](http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.421.2906&rep=rep1&type=pdf)

[22]	H. Berndt and K. Dietmayer, **"Driver intention inference with vehicle onboard sensors,"** 2009.
[[html]](https://ieeexplore.ieee.org/document/5400203)

[23]	D. Meyer-Delius, C. Plagemann, G. von Wichert, W. Feiten, G. Lawitzky, and W. Burgard, **"A Probabilistic Relational Model for Characterizing Situations in Dynamic Multi-Agent Systems,"** 2008.
[[pdf]](http://ais.informatik.uni-freiburg.de/publications/papers/meyerdelius07gfkl.pdf)

[24]	N. Oliver and A. P. Pentland, **"Driver behavior recognition and prediction in a SmartCar,"** 2000.
[[pdf]](http://www.nuriaoliver.com/driverbehavior/spie2000.pdf)

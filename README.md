# Sales-Funnel-Analysis-for-Hostel-Chain
This project focused on addressing SAPL's challenge of a low lead conversion rate. By analyzing the lead acquisition process, identifying bottlenecks, and implementing data-driven recommendations, SAPL was able to improve its lead conversion rate and capitalize on missed business opportunities. 

# Lead Acquisition and Conversion Optimization at Strent AH Pvt Limited (SAPL)

## Introduction

Strent AH Pvt Limited (SAPL) is a leading provider of student accommodation in major Indian cities. SAPL offers flexible room rental options to university students and exam aspirants through its web and mobile applications, allowing bookings for durations of 3, 6, 9, and 11 months. Despite witnessing a surge in web page visits and mobile app usage during the admission season, SAPL faced a challenging issue - a low conversion rate of approximately 13% for leads generated.

This project report documents our efforts to investigate and address the factors contributing to the significantly low lead conversion rate. Our primary focus was on analyzing the stages of student acquisition, with special attention to the lower percentage of calls made by the customer care team, a key area of concern.

## Problem Statement

The primary problem statement for this project was to explore and understand the reasons behind SAPL's low lead conversion rate of ~13%. Two specific areas of concern were identified:

1. **Lower Percentage of Calls**: A lower percentage of leads were being contacted by the customer care team within a specified period after their creation. This issue hindered SAPL's ability to identify and capitalize on hot leads, resulting in missed business opportunities.

## Project Approach

**1. Understanding SAPL's Business Process**
Begin by thoroughly understanding the student accommodation business process of Strent AH Pvt Limited (SAPL). This includes understanding how leads are generated, qualified, and converted into customers.

**2. Data Collection and Preparation**
Gather relevant datasets, including lead data, city data, lead status, and hostel information. Ensure the data is comprehensive and up-to-date.

**3. Data Processing and Cleaning**
Use Python (Jupyter Notebook) to merge datasets and perform data cleaning. Address missing values, inconsistencies, and errors in the data.

**4. Exploratory Data Analysis (EDA)**
Conduct exploratory data analysis to gain insights into the dataset. Calculate key statistics, visualize distributions, and identify patterns.

**5. Feature Engineering**
Create relevant features that can aid in the analysis, such as lead conversion rates, lead progression stages, and lead distribution by city.

**6. Data Visualization**
Utilize Tableau to create visualizations that help in understanding lead acquisition and conversion processes.

**7. Lead Acquisition Stage Analysis**
Analyze each stage of the lead acquisition process, from pre-verified to onboarding. Identify bottlenecks, drop-offs, and areas for improvement.

**8. Key Insights and Findings**
Summarize key findings from the analysis. Highlight factors affecting lead conversion rates and identify potential strategies for improvement.

**9. Documentation**
Document the entire project, including data sources, data cleaning steps, analysis methodology, and code used for data processing and visualization.

**10. Presentation to SAPL**
Prepare a comprehensive presentation of the analysis results to present to SAPL's leadership. Include visualizations, insights, and recommendations.

**11. Recommendations**
Provide actionable recommendations to SAPL based on the analysis. This may include suggestions for improving lead qualification, customer care interactions, property visits, and agreement processes.



## Lead Acquisition Stages

The lead acquisition process at SAPL is divided into six distinct stages:

1. **Pre-Verified Stage**
   - **Stage 1: SignUp**: Initial sign-up by potential leads expressing interest.
   - **Stage 2: Mobile Updated**: Mobile number verification.
   - **Stage 3: Email Updated**: Email address verification.
   - **Stage 4: ID Proof Updated**: Updating identification proof.
   - **Stage 5: Hostel Preference**: Selection of preferred hostel.
   - **Stage 6: Police Verification**: Verification of police records.

2. **Verified Stage**
   - **Stage 7: Email Verified**: Verification of email address.
   - **Stage 8: OTP Verified**: Verification through one-time password.
   - **Stage 9: ID Proof Verified**: Verification of identification proof.
   - **Stage 10: Verified Lead**: Lead is now verified.

3. **Connected Stage**
   - **Stage 11: Call Pending**: Call with the lead is pending.
   - **Stage 12: Connected**: Successful connection with the lead.

4. **Visited Stage**
   - **Stage 13: Visit Scheduled**: Scheduling a visit to the hostel.
   - **Stage 14: Visit Cancelled**: Cancellation of the scheduled visit.
   - **Stage 15: Visit Done**: Successful completion of the visit.
   - **Stage 16: Visit Rescheduled**: Rescheduling a visit to the hostel.
   - **Stage 17: Visit Missed**: Lead missed the scheduled visit.

5. **Agreement Stage**
   - **Stage 18: Agreement Initiated**: Initiation of the agreement process.
   - **Stage 19: Negotiation**: Negotiations regarding the agreement terms.
   - **Stage 20: Agreement Shared**: Sharing of the agreement.
   - **Stage 21: Agreement Signed**: Signing of the agreement.
   - **Stage 22: Agreement Edit Request**: Request for editing the agreement.
   - **Stage 23: Payment Received**: Receipt of payment.

6. **Onboarded Stage**
   - **Stage 24: Onboarding Initiated**: Initiation of the onboarding process.
   - **Stage 25: Hostel Preference Allotted**: Allocation of hostel preferences.
   - **Stage 26: Student Shifted**: Successful shift of the student to the hostel.

These stages represent the critical journey that leads go through before becoming residents of SAPL's student hostels. Understanding and optimizing each stage is essential for improving lead conversion rates and providing a seamless experience for prospective residents.



## Project Scope

The scope of the project encompassed:

- Analysis of the entire lead acquisition process, from lead generation to conversion.
- Focusing on the customer care team's interaction with leads.
- Identifying bottlenecks and inefficiencies in lead follow-up procedures.
- Proposing data-driven recommendations for improving the lead conversion rate.

## Project Methodology

The project followed a structured methodology:

1. **Data Collection**: Gathering data on lead generation, customer interactions, and conversion outcomes.

2. **Data Analysis**:
   - Examining lead creation patterns and sources.
   - Analyzing the percentage of leads contacted by the customer care team.
   - Identifying trends in successful lead conversions.

3. **Hypothesis Testing**:
   - Testing the hypothesis that the low conversion rate is primarily due to a lower percentage of calls made by the customer care team.

4. **Recommendations**:
   - Proposing actionable recommendations based on data and analysis to improve the lead conversion rate.

5. **Implementation**:
   - Implementing the recommended changes and improvements in lead management processes.

6. **Monitoring and Evaluation**:
   - Continuously monitoring lead conversion rates.
   - Evaluating the impact of implemented changes on conversion rates.

## Data Analysis Findings

The data analysis phase revealed several insights:

- **Lead Sources**: Leads were generated from various sources, including landing pages, social media, and organic channels. However, conversion rates varied significantly among these sources.

- **Low Contact Rate**: A significant portion of leads was not contacted by the customer care team within the specified time frame after lead creation.

- **Hot Leads**: Analysis indicated that a subset of leads exhibited behavior suggesting a higher likelihood of conversion, termed "hot leads."

## Recommendations

Based on the findings, the following recommendations were proposed:

1. **Prioritization of Hot Leads**: Implement a lead prioritization system to identify and prioritize hot leads based on their behavior and likelihood of conversion. Ensure these leads are contacted promptly.

2. **Customer Care Training**: Provide additional training and resources to the customer care team to enhance their ability to identify and nurture potential conversions.

3. **Lead Tracking**: Implement a robust lead tracking system to monitor lead follow-up activities and ensure timely contact.

4. **Lead Source Optimization**: Focus marketing efforts on sources that yield higher conversion rates, as indicated by the data.

5. **Feedback Loop**: Establish a feedback loop between the sales and marketing teams to improve lead quality and alignment.

## Implementation and Monitoring

The recommendations were gradually implemented, with close monitoring of the lead conversion rate. The implementation phase involved:

- Training and development programs for the customer care team.
- Deployment of lead tracking and prioritization tools.
- Refinement of marketing strategies based on lead source performance.

## Results

After the implementation of the recommendations, SAPL observed improvements in its lead conversion rate. The percentage of leads contacted by the customer care team increased significantly, and the overall conversion rate improved.

## Conclusion

This project focused on addressing SAPL's challenge of a low lead conversion rate. By analyzing the lead acquisition process, identifying bottlenecks, and implementing data-driven recommendations, SAPL was able to improve its lead conversion rate and capitalize on missed business opportunities. The successful implementation of these changes demonstrated the value of data-driven decision-making in optimizing business processes and achieving improved outcomes.




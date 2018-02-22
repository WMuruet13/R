


uno <- dplyr::select(one
                     ,proclinv1id
                     ,patientid
                     ,teamcode
                     ,transferfromdatetime
                     ,transferfromteamcode
                     ,transfertodatetime
                     ,transfertoteamcode
                     ,initialdiagnosis
                     ,v1_5            #S1 Age on Arrival
                     ,v1_6            #S1 Sex
                     ,v1_7a           #S1 Postcode Out
                     ,v1_8            #S1 Ethnicity
                     ,v1_9            #S1 Diagnosis
                     ,v1_10           #S1 Onset in Hospital
                     ,v1_11           #S1 Onset Date Time
                     ,v1_11a          #S1 Onset Time not entered
                     ,v1_11_1         #S1 Onset Date Type (Precise, Best Estimate, etc...)
                     ,v1_11_2         #S1 Onset Time Type (Precise, Best Estimate, etc...)
                     ,v1_12           #S1 Arrived by Ambulance
                     ,v1_12_1         #S1 Ambulance Trust
                     ,v1_13           #S1 First Arrival Date Time
                     ,v1_13a          #S1 First Arrival Time Not Entered
                     ,v1_14           #S1 First Ward
                     ,v1_15           #S1 First Stroke Unit Arrival Date Time
                     ,v1_15a          #S1 First Stroke Unit Arrival Time Not Entered
                     ,v1_15b          #S1 First Stroke Unit Arrival Not Available
                     ,v2_1_1          #S2 Comorbidities: Congestive Heart Failure
                     ,v2_1_2          #S2 Comorbidities: Hypertension
                     ,v2_1_3          #S2 Comorbidities: Atrial Fibrillation
                     ,v2_1_4          #S2 Comorbidities: Diabetes
                     ,v2_1_5          #S2 Comorbidities: Previous Stroke/TIA
                     ,v2_1_6          #S2 Antiplatelets if AF
                     ,v2_1_7          #S2 Anticoagulants (if AF?)
                     ,v2_2            #S2 Modified Rankin Score Before Stroke
                     ,v2_3            #S2 NIHSS Arrival
                     ,v2_3_1          #S2 NIHSS Arrival LOC
                     ,v2_3_1yn        #Was v2_3_1 answered yes/no
                     ,v2_3_2          #S2 NIHSS Arrival LOC Questions
                     ,v2_3_2yn        #was v2_3_2 answered yes/no
                     ,v2_3_3          #S2 NIHSS Arrival LOC Commands
                     ,v2_3_3yn        #was v2_3_3 answered yes/no
                     ,v2_3_4          #S2 NIHSS Arrival Best Gaze
                     ,v2_3_4yn        #was v2_3_4 answered yes/no
                     ,v2_3_5          #S2 NIHSS Arrival Visual
                     ,v2_3_5yn        #was v2_3_5 answered yes/no
                     ,v2_3_6          #S2 NIHSS Arrival Facial Palsy
                     ,v2_3_6yn        #was v2_3_6 answered yes/no
                     ,v2_3_7          #S2 NIHSS Arrival Motor Arm Left
                     ,v2_3_7yn        #was v2_3_7 answered yes/no
                     ,v2_3_8          #S2 NIHSS Arrival Motor Arm Right
                     ,v2_3_8yn        #was v2_3_8 answered yes/no
                     ,v2_3_9          #S2 NIHSS Arrival Motor Leg Left
                     ,v2_3_9yn        #was v2_3_9 answered yes/no
                     ,v2_3_10         #S2 NIHSS Arrival Motor Leg Right
                     ,v2_3_10yn       #was v2_3_10 answered yes/no
                     ,v2_3_11         #S2 NIHSS Arrival Limb Ataxia
                     ,v2_3_11yn       #was v2_3_11 answered yes/no
                     ,v2_3_12         #S2 NIHSS Arrival Sensory
                     ,v2_3_12yn       #was v2_3_12 answered yes/no
                     ,v2_3_13         #S2 NIHSS Arrival Best Language
                     ,v2_3_13yn       #was v2_3_13 answered yes/no
                     ,v2_3_14         #S2 NIHSS Arrival Dysarthria
                     ,v2_3_14yn       #was v2_3_14 answered yes/no
                     ,v2_3_15         #S2 NIHSS Arrival Extinction Inattention
                     ,v2_3_15yn       #was v2_3_15 answered yes/no
                     ,v2_4            #S2 Brain Imaging Date Time
                     ,v2_4a           #S2 Brain Imaging Not Entered
                     ,v2_4b           #S2 Brain Imaging Not Performed
                     ,v2_5            #S2 Stroke Type
                     ,v2_6            #S2 Thrombolysis
                     ,v2_6_1          #S2 Reason for No Thrombolysis
                     ,v2_6_2a         #S2 Not Thrombolysed Because haemorrhagic
                     ,v2_6_2b         #S2 Not Thrombolysed Because Time Window
                     ,v2_6_2c         #S2 Not Thrombolysed Because Comorbidity
                     ,v2_6_2d         #S2 Not Thrombolysed Because Contraindicated Medication
                     ,v2_6_2e         #S2 Not Thrombolysed Because Refused
                     ,v2_6_2f         #S2 Not Thrombolysed Because Age
                     ,v2_6_2g         #S2 Not Thrombolysed Because Symptoms Improvement
                     ,v2_6_2h         #S2 Not Thrombolysed Because Symptoms too Mild or Too Severe
                     ,v2_6_2i         #S2 Not Thrombolysed Because Time Unknown/Wake-up
                     ,v2_6_2j         #S2 Not Thrombolysed Because Other Medical Reason
                     ,v2_7            #S2 Thrombolysis Date Time
                     ,v2_7a           #S2 Thrombolysis Time Not Entered
                     ,v2_8            #S2 Thrombolysis Complications
                     ,number_complications #Total Number of Complications following Thrombolysis
                     ,v2_8_1a         #S2 Thrombolysis Complication ICH
                     ,v2_8_1b         #S2 Thrombolysis Complication AngioOedema
                     ,v2_8_1c         #S2 Thrombolysis Complication Extracranial Bleed
                     ,v2_8_1d         #S2 Thrombolysis Complication Other
                     ,v2_8_2          #S2 Complication Other Details
                     ,v2_9            #S2 NIHSS 24 Hours Post Thrombolysis
                     ,v2_9a           #S2 NIHSS 24 Hours Post Thrombolysis Not Known
                     ,v2_10           #S2 Swallow Screening 4Hrs Date Time
                     ,v2_10a          #S2 Swallow Screening 4 Hrs Time Not Entered
                     ,v2_10b          #S2 Swallow Screening 4 Hrs Not Performed
                     ,v2_10_1         #S2 Swallow Screening 4 Hrs Not Performed Reason
                     ,v2_101          #S2 TIA in Last Month
                     ,v2_102          #S2 Neurovascular Clinic Assessed
                     ,v2_103          #S2 Barthel Before Stroke
                     ,v2_104          #S2 Brain Imaging Modality
                     ,v3_1            #S3 Palliative Care
                     ,v3_1_1          #S3 Palliative Care Decision Date
                     ,v3_1_2          #S3 End of Life Pathway
                     ,v3_2            #S3 Stroke Nurse Assessed Date Time
                     ,v3_2a           #S3 Stroke Nurse Assessed Time Not Entered
                     ,v3_2b           #S3 Stroke Nurse Not Assessed
                     ,v3_3            #S3 Stroke Consultant Assessed Date Time
                     ,v3_3a           #S3 Stroke Consultant Assessed Time Not Entered
                     ,v3_3b           #S3 Stroke Consultant Not Assessed
                     ,v3_4            #S3 Swallow Screening 72 Hrs Date Time
                     ,v3_4a           #S3 Swallow Screening 72 Hrs Time Not Entered
                     ,v3_4b           #S3 Swallow Screening 72 Hrs Not Performed
                     ,v3_4_1          #S3 Swallow Screening 72 Hrs Reason Not Performed
                     ,v3_5            #S3 Occupational Therapist 72 Hrs Date Time
                     ,v3_5a           #S3 Occupational Therapist 72 Hrs Time Not Entered
                     ,v3_5b           #S3 Occupational Therapist 72 Hrs Not Assessed
                     ,v3_5_1          #S3 Occupational Therapist 72 Hrs Reason Not Assessed
                     ,OT_eligible_72h #S3 Eligible for Occupational Therapy
                     ,v3_6            #S3 Physiotherapy 72 Hrs Date Time
                     ,v3_6a           #S3 Physiotherapy 72 Hrs Not Entered
                     ,v3_6b           #S3 Physiotherapy 72 Hrs Not Assessed
                     ,v3_6_1          #S3 Physiotherapy 72 Hrs Not Assessed Reason
                     ,PT_eligible_72h #S3 Eligible for Physiotherapy
                     ,v3_7            #S3 SALT Communication 72 Hrs Date Time
                     ,v3_7a           #S3 SALT Communication 72 Hrs Time Not Entered
                     ,v3_7b           #S3 SALT Communication 72 Hrs Not Assessed
                     ,v3_7_1          #S3 SALT Communication 72 Hrs Not Assessed Reason
                     ,SALTcomm_eligible_72h #S3 Eligible for SALT Communication
                     ,v3_8            #S3 SALT Swallow 72 Hrs Date Time
                     ,v3_8a           #S3 SALT Swallow 72 Hrs Time Not Entered
                     ,v3_8b           #S3 SALT Swallow 72 Hrs Not Assessed
                     ,v3_8_1          #S3 SALT Swallow 72 Hrs Not Assessed Reason
                     ,SALTswallow_eligible_72h #S3 SALT Swallow Eligible
                     ,v4_1            #S4 Arrival Date Time
                     ,v4_1a           #S4 Arrival Date Time Not Entered
                     ,v4_2            #S4 First Ward
                     ,v4_3            #S4 Stroke Unit Arrival Date Time
                     ,v4_3a           #S4 Stroke Unit Arrival Time Not Entered
                     ,v4_3b           #S4 Stroke Unit Arrival Not Applicable
                     ,v4_4_pt         #S4 Physiotherapy required at any time?
                     ,v4_4_1_end_pt   #S4 When the patient no longer required physiotherapy
                     ,v4_5_pt         #S4 Number of Days Receiving Physiotherapy
                     ,v4_6_pt         #S4 Total Number of Physiotherapy received
                     ,v4_4_ot         #S4 Occupational Therapy Required at any time?
                     ,v4_4_1_end_ot   #S4 When the patient no longer required Occupational Therapy
                     ,v4_5_ot         #S4 Occupational Therapy Days
                     ,v4_6_ot         #S4 Occupational Therapy Minutes
                     ,v4_4_salt       #S4 Physiotherapy required at any time?
                     ,v4_4_1_end_salt #S4 SALT required at any time?
                     ,v4_5_salt       #S4 SALT Days
                     ,v4_6_salt       #S4 SALT Minutes 
                     ,v4_4_psy        #S4 Psychology required at any time?
                     ,v4_4_1_end_psy  #S4 When the patient no longer required Psychology
                     ,v4_5_psy        #S4 Psychology Days
                     ,v4_6_psy        #S4 Psucology Minutes
                     ,v4_7            #S4 Rehabilitation Goals Date
                     ,v4_7a           #S4 Rehabilitation Goals None
                     ,v4_7_1          #S4 Reason for No Rehabilitation Goals
                     ,v5_1            #S5 What was the patient's worst LoC in the first 7 Days
                     ,v5_2            #S5 Urinary Tract Infection 7 Days
                     ,v5_3            #S5 Antibiotics for a newly acquired pneumonia within 7 Days
                     ,v6_1            #S6 First Occupational Therapist Assessment (For those not assessed within 72 Hrs)
                     ,v6_1a           #S6 Occupational Therapist by Discharge Time not Entered
                     ,v6_1b           #S6 Not Assessed by Occupational Therapist 
                     ,v6_1_1          #S6 Reason For No Assessment by Occupational Therapist
                     ,v6_2            #S6 First Physiotherapy Assessment (For those not assessed within 72 Hrs)
                     ,v6_2a           #S6 Physiotherapy by Discharge Time Not Entered
                     ,v6_2b           #S6 Physiotherapy Not Assessed
                     ,v6_2_1          #S6 Physiotherapy Not Assessed Reason
                     ,v6_3            #S6 SALT Communication Assessment Date Time
                     ,v6_3a           #S6 SALT Communication by Discharge Time Not Entered
                     ,v6_3b           #S6 SALT Communication Not Assessed
                     ,v6_3_1          #S6 SALT Communication Not Assessed Reason
                     ,v6_4            #S6 SALT Swallow Assessment Date Time
                     ,v6_4a           #S6 SALT Swallow by Discharge Time Not Entered
                     ,v6_4b           #S6 SALT Swallow Not Assessed
                     ,v6_4_1          #S6 SALT Swallow Not Assessed Reason
                     ,v6_5            #S6 Urinary Continence Plan Drawn up Date
                     ,v6_5a           #S6 No Urinary Continence Plan
                     ,v6_5_1          #S6 Reason for No Urinary Continence Plan
                     ,v6_6            #S6 Identified as being at riks of Malnutrition
                     ,v6_6_1          #S6 Seen by Dietitian Date
                     ,v6_6_1a         #S6 Not Seen by the Dietitian
                     ,v6_7            #S6 Mood Screening Date
                     ,v6_7a           #S6 Not Screened for Mood
                     ,v6_7_1          #S6 Reason for no Mood Screening
                     ,v6_8            #S6 Cognition Screening Date
                     ,v6_8a           #S6 Not Screened for Cognition
                     ,v6_8_1          #S6 Reason for No Cognitive Screening
                     ,v6_9            #S6 Has it been decided if the patient is for palliative care
                     ,v6_9_1          #S6 Date of Palliative care Decision
                     ,v6_9_2          #S6 If yes for palliative care, does the patient have a plan for their end of life care?
                     ,v6_10          #S6 Firs Date rehabilitation goals agreed
                     ,v6_11          #S6 Was pneumatic compression applied?
                     ,v6_11_1        #S6 Date intermittent pneumatic compression started
                     ,v6_11_2        #S6 Date intermittent pneumatic compression ended
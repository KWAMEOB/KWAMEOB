{
 "cells": [
  {
   "cell_type": "markdown",
   "id": "4bdd4053",
   "metadata": {
    "papermill": {
     "duration": 0.009964,
     "end_time": "2022-07-02T19:06:34.987355",
     "exception": false,
     "start_time": "2022-07-02T19:06:34.977391",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **CYCLISTIC BIKE SHARE**\n",
    "\n",
    "## **Google Data Analytics Capstone**\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f5b5e959",
   "metadata": {
    "papermill": {
     "duration": 0.007081,
     "end_time": "2022-07-02T19:06:35.001599",
     "exception": false,
     "start_time": "2022-07-02T19:06:34.994518",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## **About the Company**\n",
    "\n",
    "In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime. \n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "0d40e62d",
   "metadata": {
    "papermill": {
     "duration": 0.007645,
     "end_time": "2022-07-02T19:06:35.016353",
     "exception": false,
     "start_time": "2022-07-02T19:06:35.008708",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## **Scenario**\n",
    "\n",
    "You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations. \n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "1f15b4d4",
   "metadata": {
    "papermill": {
     "duration": 0.007295,
     "end_time": "2022-07-02T19:06:35.030808",
     "exception": false,
     "start_time": "2022-07-02T19:06:35.023513",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **ASK**\n",
    "\n",
    "## **Business Task**\n",
    "\n",
    "* How do annual members and casual riders use Cyclistic bikes differently? \n",
    "\n",
    "* And how the Cyclistic Bike Share can develop digital marketing strategies to convert Casual riders to Annual members.\n",
    "\n",
    "## Key Stakeholders\n",
    "\n",
    "* Primary Skateholder: Director of Marketing, Lily Moreno and the Cyclistic Executive team\n",
    "\n",
    "* Secondary Stakeholder: Cyclistic Marketing Analytics Team\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "393914c0",
   "metadata": {
    "papermill": {
     "duration": 0.007436,
     "end_time": "2022-07-02T19:06:35.045904",
     "exception": false,
     "start_time": "2022-07-02T19:06:35.038468",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **PREPARE**\n",
    "\n",
    "## Description of Data Source\n",
    "\n",
    "## Data Source: \n",
    "12 Month (June 2021 to May 2022) of Cyclistic Bike Share trip data made available by Motivate International Inc. data source link https://divvy-tripdata.s3.amazonaws.com/index.htmlunder this license https://ride.divvybikes.com/data-license-agreement.\n",
    "\n",
    "The dataset has 12 CSV, 13 columns and about 5.9 million rows. The data is **ROCCC**.\n",
    "\n",
    "* **Reliability:** the data includes complete and accurate ride data from Divvy.  https://ride.divvybikes.com/system-data\n",
    "\n",
    "* **Original:** the data is from Motivate International Inc, which operates the City of Chicago’s Divvy bicycle sharing service.\n",
    "\n",
    "* **Comprehensive:** The data incudes type of bikes, ride_id, rideable_type, started_at, ended_at, start_station_name,, start_station_id, end_station_name, end_station_id, start_latitude, start_longitude, end_latitude, end_longitude, member vs casual memberships types.\n",
    "\n",
    "* **Current:** up to date to May 2022\n",
    "\n",
    "* **Cited:** the data is cited and under current license agreement.\n",
    "\n",
    "## Dataset limitations:\n",
    "There were limitations prohibiting us from using riders’ personally identifiable information. This means that we won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes. \n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "94b17d90",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:06:35.065844Z",
     "iopub.status.busy": "2022-07-02T19:06:35.062833Z",
     "iopub.status.idle": "2022-07-02T19:07:02.964324Z",
     "shell.execute_reply": "2022-07-02T19:07:02.962319Z"
    },
    "papermill": {
     "duration": 27.92961,
     "end_time": "2022-07-02T19:07:02.982711",
     "exception": false,
     "start_time": "2022-07-02T19:06:35.053101",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n",
      "── \u001b[1mAttaching packages\u001b[22m ─────────────────────────────────────── tidyverse 1.3.1 ──\n",
      "\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2\u001b[39m 3.3.6     \u001b[32m✔\u001b[39m \u001b[34mpurrr  \u001b[39m 0.3.4\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtibble \u001b[39m 3.1.7     \u001b[32m✔\u001b[39m \u001b[34mdplyr  \u001b[39m 1.0.9\n",
      "\u001b[32m✔\u001b[39m \u001b[34mtidyr  \u001b[39m 1.2.0     \u001b[32m✔\u001b[39m \u001b[34mstringr\u001b[39m 1.4.0\n",
      "\u001b[32m✔\u001b[39m \u001b[34mreadr  \u001b[39m 2.1.2     \u001b[32m✔\u001b[39m \u001b[34mforcats\u001b[39m 0.5.1\n",
      "\n",
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\n",
      "\n",
      "Attaching package: ‘lubridate’\n",
      "\n",
      "\n",
      "The following objects are masked from ‘package:base’:\n",
      "\n",
      "    date, intersect, setdiff, union\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "#Load the packages.\n",
    "\n",
    "install.packages('tidyverse')\n",
    "install.packages('skimr')\n",
    "library(tidyverse) #helps wrangle data\n",
    "library(dplyr) #helps clean data\n",
    "library(lubridate)  #helps wrangle date attributes\n",
    "library(skimr) #helps get summary data\n",
    "library(ggplot2) #helps visualize data\n",
    "library(readr)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "dd762b8c",
   "metadata": {
    "papermill": {
     "duration": 0.008363,
     "end_time": "2022-07-02T19:07:02.999760",
     "exception": false,
     "start_time": "2022-07-02T19:07:02.991397",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Step 1 : Collect Data"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "0bf3c6d1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:07:03.050930Z",
     "iopub.status.busy": "2022-07-02T19:07:03.018571Z",
     "iopub.status.idle": "2022-07-02T19:08:44.518713Z",
     "shell.execute_reply": "2022-07-02T19:08:44.516820Z"
    },
    "papermill": {
     "duration": 101.513908,
     "end_time": "2022-07-02T19:08:44.522136",
     "exception": false,
     "start_time": "2022-07-02T19:07:03.008228",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "\n",
    "# STEP 1: COLLECT DATA\n",
    "\n",
    "\n",
    "#Collect Data\n",
    "\n",
    "Trip_May_2022<-read.csv('../input/cyclistic-bike-share-datasetnm/archive/202205-divvy-tripdata.csv')\n",
    "Trip_Apr_2022<-read.csv('../input/cyclistic-bike-share-datasetnm/archive/202204-divvy-tripdata.csv')\n",
    "Trip_Mar_2022<-read.csv('../input/cyclistic-bike-share-datasetnm/archive/202203-divvy-tripdata.csv')\n",
    "Trip_Feb_2022<-read.csv('../input/cyclistic-bike-share-datasetnm/archive/202202-divvy-tripdata.csv')\n",
    "Trip_Jan_2022<-read.csv('../input/cyclistic-bike-share-datasetnm/archive/202201-divvy-tripdata.csv')\n",
    "Trip_Dec_2021<-read.csv('../input/cyclistic-bike-share-datasetnm/archive/202112-divvy-tripdata.csv')\n",
    "Trip_Nov_2021<-read.csv('../input/cyclistic-bike-share-datasetnm/archive/202111-divvy-tripdata.csv')\n",
    "Trip_Oct_2021<-read.csv('../input/cyclistic-bike-share-datasetnm/archive/202110-divvy-tripdata.csv')\n",
    "Trip_Sep_2021<-read.csv('../input/cyclistic-bike-share-datasetnm/archive/202109-divvy-tripdata.csv')\n",
    "Trip_Aug_2021<-read.csv('../input/cyclistic-bike-share-datasetnm/archive/202108-divvy-tripdata.csv')\n",
    "Trip_Jul_2021<-read.csv('../input/cyclistic-bike-share-datasetnm/archive/202107-divvy-tripdata.csv')\n",
    "Trip_Jun_2021<-read.csv('../input/cyclistic-bike-share-datasetnm/archive/202106-divvy-tripdata.csv')"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "54048b10",
   "metadata": {
    "papermill": {
     "duration": 0.007747,
     "end_time": "2022-07-02T19:08:44.540204",
     "exception": false,
     "start_time": "2022-07-02T19:08:44.532457",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Step 2. Wrangle Data and combine into a single file"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "6e3cbf54",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:08:44.568175Z",
     "iopub.status.busy": "2022-07-02T19:08:44.566625Z",
     "iopub.status.idle": "2022-07-02T19:08:44.642140Z",
     "shell.execute_reply": "2022-07-02T19:08:44.640546Z"
    },
    "papermill": {
     "duration": 0.096639,
     "end_time": "2022-07-02T19:08:44.644489",
     "exception": false,
     "start_time": "2022-07-02T19:08:44.547850",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# STEP 2: WRANGLE DATA AND COMBINE INTO A SINGLE FILE\n",
    "\n",
    "#Comparing Column names of each file and Check for Column consistency\n",
    "\n",
    "colnames(Trip_May_2022)\n",
    "colnames(Trip_Apr_2022)\n",
    "colnames(Trip_Mar_2022)\n",
    "colnames(Trip_Feb_2022)\n",
    "colnames(Trip_Jan_2022)\n",
    "colnames(Trip_Dec_2021)\n",
    "colnames(Trip_Nov_2021)\n",
    "colnames(Trip_Oct_2021)\n",
    "colnames(Trip_Sep_2021)\n",
    "colnames(Trip_Aug_2021)\n",
    "colnames(Trip_Jul_2021)\n",
    "colnames(Trip_Jun_2021)\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "bd0cbb77",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:08:44.668774Z",
     "iopub.status.busy": "2022-07-02T19:08:44.667089Z",
     "iopub.status.idle": "2022-07-02T19:08:44.940896Z",
     "shell.execute_reply": "2022-07-02T19:08:44.939021Z"
    },
    "papermill": {
     "duration": 0.288959,
     "end_time": "2022-07-02T19:08:44.943828",
     "exception": false,
     "start_time": "2022-07-02T19:08:44.654869",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t634858 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"EC2DE40644C6B0F4\" \"1C31AD03897EE385\" \"1542FBEC830415CF\" \"6FF59852924528F8\" ...\n",
      " $ rideable_type     : chr  \"classic_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-05-23 23:06:58\" \"2022-05-11 08:53:28\" \"2022-05-26 18:36:28\" \"2022-05-10 07:30:07\" ...\n",
      " $ ended_at          : chr  \"2022-05-23 23:40:19\" \"2022-05-11 09:31:22\" \"2022-05-26 18:58:18\" \"2022-05-10 07:38:49\" ...\n",
      " $ start_station_name: chr  \"Wabash Ave & Grand Ave\" \"DuSable Lake Shore Dr & Monroe St\" \"Clinton St & Madison St\" \"Clinton St & Madison St\" ...\n",
      " $ start_station_id  : chr  \"TA1307000117\" \"13300\" \"TA1305000032\" \"TA1305000032\" ...\n",
      " $ end_station_name  : chr  \"Halsted St & Roscoe St\" \"Field Blvd & South Water St\" \"Wood St & Milwaukee Ave\" \"Clark St & Randolph St\" ...\n",
      " $ end_station_id    : chr  \"TA1309000025\" \"15534\" \"13221\" \"TA1305000030\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.6 -87.7 -87.6 -87.7 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      "'data.frame':\t371249 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"3564070EEFD12711\" \"0B820C7FCF22F489\" \"89EEEE32293F07FF\" \"84D4751AEB31888D\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-04-06 17:42:48\" \"2022-04-24 19:23:07\" \"2022-04-20 19:29:08\" \"2022-04-22 21:14:06\" ...\n",
      " $ ended_at          : chr  \"2022-04-06 17:54:36\" \"2022-04-24 19:43:17\" \"2022-04-20 19:35:16\" \"2022-04-22 21:23:29\" ...\n",
      " $ start_station_name: chr  \"Paulina St & Howard St\" \"Wentworth Ave & Cermak Rd\" \"Halsted St & Polk St\" \"Wentworth Ave & Cermak Rd\" ...\n",
      " $ start_station_id  : chr  \"515\" \"13075\" \"TA1307000121\" \"13075\" ...\n",
      " $ end_station_name  : chr  \"University Library (NU)\" \"Green St & Madison St\" \"Green St & Madison St\" \"Delano Ct & Roosevelt Rd\" ...\n",
      " $ end_station_id    : chr  \"605\" \"TA1307000120\" \"TA1307000120\" \"KA1706005007\" ...\n",
      " $ start_lat         : num  42 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num  42.1 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"casual\" ...\n",
      "'data.frame':\t284042 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"47EC0A7F82E65D52\" \"8494861979B0F477\" \"EFE527AF80B66109\" \"9F446FD9DEE3F389\" ...\n",
      " $ rideable_type     : chr  \"classic_bike\" \"electric_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-03-21 13:45:01\" \"2022-03-16 09:37:16\" \"2022-03-23 19:52:02\" \"2022-03-01 19:12:26\" ...\n",
      " $ ended_at          : chr  \"2022-03-21 13:51:18\" \"2022-03-16 09:43:34\" \"2022-03-23 19:54:48\" \"2022-03-01 19:22:14\" ...\n",
      " $ start_station_name: chr  \"Wabash Ave & Wacker Pl\" \"Michigan Ave & Oak St\" \"Broadway & Berwyn Ave\" \"Wabash Ave & Wacker Pl\" ...\n",
      " $ start_station_id  : chr  \"TA1307000131\" \"13042\" \"13109\" \"TA1307000131\" ...\n",
      " $ end_station_name  : chr  \"Kingsbury St & Kinzie St\" \"Orleans St & Chestnut St (NEXT Apts)\" \"Broadway & Ridge Ave\" \"Franklin St & Jackson Blvd\" ...\n",
      " $ end_station_id    : chr  \"KA1503000043\" \"620\" \"15578\" \"TA1305000025\" ...\n",
      " $ start_lat         : num  41.9 41.9 42 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.7 -87.6 -87.6 ...\n",
      " $ end_lat           : num  41.9 41.9 42 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.6 -87.7 -87.6 -87.7 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      "'data.frame':\t115609 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"E1E065E7ED285C02\" \"1602DCDC5B30FFE3\" \"BE7DD2AF4B55C4AF\" \"A1789BDF844412BE\" ...\n",
      " $ rideable_type     : chr  \"classic_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-02-19 18:08:41\" \"2022-02-20 17:41:30\" \"2022-02-25 18:55:56\" \"2022-02-14 11:57:03\" ...\n",
      " $ ended_at          : chr  \"2022-02-19 18:23:56\" \"2022-02-20 17:45:56\" \"2022-02-25 19:09:34\" \"2022-02-14 12:04:00\" ...\n",
      " $ start_station_name: chr  \"State St & Randolph St\" \"Halsted St & Wrightwood Ave\" \"State St & Randolph St\" \"Southport Ave & Waveland Ave\" ...\n",
      " $ start_station_id  : chr  \"TA1305000029\" \"TA1309000061\" \"TA1305000029\" \"13235\" ...\n",
      " $ end_station_name  : chr  \"Clark St & Lincoln Ave\" \"Southport Ave & Wrightwood Ave\" \"Canal St & Adams St\" \"Broadway & Sheridan Rd\" ...\n",
      " $ end_station_id    : chr  \"13179\" \"TA1307000113\" \"13011\" \"13323\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.6 -87.7 -87.6 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 42 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.7 -87.6 -87.6 -87.6 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      "'data.frame':\t103770 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"C2F7DD78E82EC875\" \"A6CF8980A652D272\" \"BD0F91DFF741C66D\" \"CBB80ED419105406\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-01-13 11:59:47\" \"2022-01-10 08:41:56\" \"2022-01-25 04:53:40\" \"2022-01-04 00:18:04\" ...\n",
      " $ ended_at          : chr  \"2022-01-13 12:02:44\" \"2022-01-10 08:46:17\" \"2022-01-25 04:58:01\" \"2022-01-04 00:33:00\" ...\n",
      " $ start_station_name: chr  \"Glenwood Ave & Touhy Ave\" \"Glenwood Ave & Touhy Ave\" \"Sheffield Ave & Fullerton Ave\" \"Clark St & Bryn Mawr Ave\" ...\n",
      " $ start_station_id  : chr  \"525\" \"525\" \"TA1306000016\" \"KA1504000151\" ...\n",
      " $ end_station_name  : chr  \"Clark St & Touhy Ave\" \"Clark St & Touhy Ave\" \"Greenview Ave & Fullerton Ave\" \"Paulina St & Montrose Ave\" ...\n",
      " $ end_station_id    : chr  \"RP-007\" \"RP-007\" \"TA1307000001\" \"TA1309000021\" ...\n",
      " $ start_lat         : num  42 42 41.9 42 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.7 -87.7 -87.7 -87.6 ...\n",
      " $ end_lat           : num  42 42 41.9 42 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.7 -87.7 -87.7 -87.6 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"member\" \"casual\" ...\n",
      "'data.frame':\t247540 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"46F8167220E4431F\" \"73A77762838B32FD\" \"4CF42452054F59C5\" \"3278BA87BF698339\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2021-12-07 15:06:07\" \"2021-12-11 03:43:29\" \"2021-12-15 23:10:28\" \"2021-12-26 16:16:10\" ...\n",
      " $ ended_at          : chr  \"2021-12-07 15:13:42\" \"2021-12-11 04:10:23\" \"2021-12-15 23:23:14\" \"2021-12-26 16:30:53\" ...\n",
      " $ start_station_name: chr  \"Laflin St & Cullerton St\" \"LaSalle Dr & Huron St\" \"Halsted St & North Branch St\" \"Halsted St & North Branch St\" ...\n",
      " $ start_station_id  : chr  \"13307\" \"KP1705001026\" \"KA1504000117\" \"KA1504000117\" ...\n",
      " $ end_station_name  : chr  \"Morgan St & Polk St\" \"Clarendon Ave & Leland Ave\" \"Broadway & Barry Ave\" \"LaSalle Dr & Huron St\" ...\n",
      " $ end_station_id    : chr  \"TA1307000130\" \"TA1307000119\" \"13137\" \"KP1705001026\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.6 -87.6 -87.6 -87.7 ...\n",
      " $ end_lat           : num  41.9 42 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.7 -87.6 -87.6 -87.6 ...\n",
      " $ member_casual     : chr  \"member\" \"casual\" \"member\" \"member\" ...\n",
      "'data.frame':\t359978 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"7C00A93E10556E47\" \"90854840DFD508BA\" \"0A7D10CDD144061C\" \"2F3BE33085BCFF02\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-11-27 13:27:38\" \"2021-11-27 13:38:25\" \"2021-11-26 22:03:34\" \"2021-11-27 09:56:49\" ...\n",
      " $ ended_at          : chr  \"2021-11-27 13:46:38\" \"2021-11-27 13:56:10\" \"2021-11-26 22:05:56\" \"2021-11-27 10:01:50\" ...\n",
      " $ start_station_name: chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.9 42 42 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.7 -87.7 -87.8 -87.6 ...\n",
      " $ end_lat           : num  42 41.9 42 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.7 -87.7 -87.8 -87.6 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"casual\" \"casual\" ...\n",
      "'data.frame':\t631226 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"620BC6107255BF4C\" \"4471C70731AB2E45\" \"26CA69D43D15EE14\" \"362947F0437E1514\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-10-22 12:46:42\" \"2021-10-21 09:12:37\" \"2021-10-16 16:28:39\" \"2021-10-16 16:17:48\" ...\n",
      " $ ended_at          : chr  \"2021-10-22 12:49:50\" \"2021-10-21 09:14:14\" \"2021-10-16 16:36:26\" \"2021-10-16 16:19:03\" ...\n",
      " $ start_station_name: chr  \"Kingsbury St & Kinzie St\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"KA1503000043\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      "'data.frame':\t756147 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"9DC7B962304CBFD8\" \"F930E2C6872D6B32\" \"6EF72137900BB910\" \"78D1DE133B3DBF55\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-09-28 16:07:10\" \"2021-09-28 14:24:51\" \"2021-09-28 00:20:16\" \"2021-09-28 14:51:17\" ...\n",
      " $ ended_at          : chr  \"2021-09-28 16:09:54\" \"2021-09-28 14:40:05\" \"2021-09-28 00:23:57\" \"2021-09-28 15:00:06\" ...\n",
      " $ start_station_name: chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.8 41.8 41.9 ...\n",
      " $ start_lng         : num  -87.7 -87.6 -87.7 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 42 41.8 41.8 41.9 ...\n",
      " $ end_lng           : num  -87.7 -87.7 -87.7 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"casual\" \"casual\" ...\n",
      "'data.frame':\t804352 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"99103BB87CC6C1BB\" \"EAFCCCFB0A3FC5A1\" \"9EF4F46C57AD234D\" \"5834D3208BFAF1DA\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-08-10 17:15:49\" \"2021-08-10 17:23:14\" \"2021-08-21 02:34:23\" \"2021-08-21 06:52:55\" ...\n",
      " $ ended_at          : chr  \"2021-08-10 17:22:44\" \"2021-08-10 17:39:24\" \"2021-08-21 02:50:36\" \"2021-08-21 07:08:13\" ...\n",
      " $ start_station_name: chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.8 41.8 42 42 41.8 ...\n",
      " $ start_lng         : num  -87.7 -87.7 -87.7 -87.7 -87.6 ...\n",
      " $ end_lat           : num  41.8 41.8 42 42 41.8 ...\n",
      " $ end_lng           : num  -87.7 -87.6 -87.7 -87.7 -87.6 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      "'data.frame':\t822410 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"0A1B623926EF4E16\" \"B2D5583A5A5E76EE\" \"6F264597DDBF427A\" \"379B58EAB20E8AA5\" ...\n",
      " $ rideable_type     : chr  \"docked_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2021-07-02 14:44:36\" \"2021-07-07 16:57:42\" \"2021-07-25 11:30:55\" \"2021-07-08 22:08:30\" ...\n",
      " $ ended_at          : chr  \"2021-07-02 15:19:58\" \"2021-07-07 17:16:09\" \"2021-07-25 11:48:45\" \"2021-07-08 22:23:32\" ...\n",
      " $ start_station_name: chr  \"Michigan Ave & Washington St\" \"California Ave & Cortez St\" \"Wabash Ave & 16th St\" \"California Ave & Cortez St\" ...\n",
      " $ start_station_id  : chr  \"13001\" \"17660\" \"SL-012\" \"17660\" ...\n",
      " $ end_station_name  : chr  \"Halsted St & North Branch St\" \"Wood St & Hubbard St\" \"Rush St & Hubbard St\" \"Carpenter St & Huron St\" ...\n",
      " $ end_station_id    : chr  \"KA1504000117\" \"13432\" \"KA1503000044\" \"13196\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.7 -87.6 -87.7 -87.7 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.7 -87.6 -87.7 -87.7 ...\n",
      " $ member_casual     : chr  \"casual\" \"casual\" \"member\" \"member\" ...\n",
      "'data.frame':\t729595 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"99FEC93BA843FB20\" \"06048DCFC8520CAF\" \"9598066F68045DF2\" \"B03C0FE48C412214\" ...\n",
      " $ rideable_type     : chr  \"electric_bike\" \"electric_bike\" \"electric_bike\" \"electric_bike\" ...\n",
      " $ started_at        : chr  \"2021-06-13 14:31:28\" \"2021-06-04 11:18:02\" \"2021-06-04 09:49:35\" \"2021-06-03 19:56:05\" ...\n",
      " $ ended_at          : chr  \"2021-06-13 14:34:11\" \"2021-06-04 11:24:19\" \"2021-06-04 09:55:34\" \"2021-06-03 20:21:55\" ...\n",
      " $ start_station_name: chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_station_id  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_name  : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ end_station_id    : chr  \"\" \"\" \"\" \"\" ...\n",
      " $ start_lat         : num  41.8 41.8 41.8 41.8 41.8 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num  41.8 41.8 41.8 41.8 41.8 ...\n",
      " $ end_lng           : num  -87.6 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n"
     ]
    }
   ],
   "source": [
    "# Checking for incongruencies\n",
    "\n",
    "str(Trip_May_2022)\n",
    "str(Trip_Apr_2022)\n",
    "str(Trip_Mar_2022)\n",
    "str(Trip_Feb_2022)\n",
    "str(Trip_Jan_2022)\n",
    "str(Trip_Dec_2021)\n",
    "str(Trip_Nov_2021)\n",
    "str(Trip_Oct_2021)\n",
    "str(Trip_Sep_2021)\n",
    "str(Trip_Aug_2021)\n",
    "str(Trip_Jul_2021)\n",
    "str(Trip_Jun_2021)\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "d2b47931",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:08:44.971568Z",
     "iopub.status.busy": "2022-07-02T19:08:44.969941Z",
     "iopub.status.idle": "2022-07-02T19:09:11.375335Z",
     "shell.execute_reply": "2022-07-02T19:09:11.373555Z"
    },
    "papermill": {
     "duration": 26.422735,
     "end_time": "2022-07-02T19:09:11.378701",
     "exception": false,
     "start_time": "2022-07-02T19:08:44.955966",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "#Combine the data from June 2021 to May 2022 into one data frame.\n",
    "\n",
    "bike_trip_data<-rbind(Trip_May_2022,\n",
    "                      Trip_Apr_2022,\n",
    "                      Trip_Mar_2022,\n",
    "                      Trip_Feb_2022,\n",
    "                      Trip_Jan_2022,\n",
    "                      Trip_Dec_2021,\n",
    "                      Trip_Nov_2021,\n",
    "                      Trip_Oct_2021,\n",
    "                      Trip_Sep_2021,\n",
    "                      Trip_Aug_2021,\n",
    "                      Trip_Jul_2021,\n",
    "                      Trip_Jun_2021)\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "33cb5494",
   "metadata": {
    "papermill": {
     "duration": 0.012665,
     "end_time": "2022-07-02T19:09:11.402986",
     "exception": false,
     "start_time": "2022-07-02T19:09:11.390321",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **PROCESS**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "e4c5063b",
   "metadata": {
    "papermill": {
     "duration": 0.011695,
     "end_time": "2022-07-02T19:09:11.426115",
     "exception": false,
     "start_time": "2022-07-02T19:09:11.414420",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Step 3: Clean up and add Data to prepare for analysis"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "bc7c4148",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:09:11.452293Z",
     "iopub.status.busy": "2022-07-02T19:09:11.450763Z",
     "iopub.status.idle": "2022-07-02T19:09:17.970747Z",
     "shell.execute_reply": "2022-07-02T19:09:17.969081Z"
    },
    "papermill": {
     "duration": 6.535944,
     "end_time": "2022-07-02T19:09:17.973332",
     "exception": false,
     "start_time": "2022-07-02T19:09:11.437388",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 13</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>ride_id</th><th scope=col>rideable_type</th><th scope=col>started_at</th><th scope=col>ended_at</th><th scope=col>start_station_name</th><th scope=col>start_station_id</th><th scope=col>end_station_name</th><th scope=col>end_station_id</th><th scope=col>start_lat</th><th scope=col>start_lng</th><th scope=col>end_lat</th><th scope=col>end_lng</th><th scope=col>member_casual</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;chr&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>EC2DE40644C6B0F4</td><td>classic_bike</td><td>2022-05-23 23:06:58</td><td>2022-05-23 23:40:19</td><td><span style=white-space:pre-wrap>Wabash Ave &amp; Grand Ave           </span></td><td>TA1307000117</td><td><span style=white-space:pre-wrap>Halsted St &amp; Roscoe St       </span></td><td>TA1309000025</td><td>41.89147</td><td>-87.62676</td><td>41.94367</td><td>-87.64895</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>1C31AD03897EE385</td><td>classic_bike</td><td>2022-05-11 08:53:28</td><td>2022-05-11 09:31:22</td><td>DuSable Lake Shore Dr &amp; Monroe St</td><td><span style=white-space:pre-wrap>13300       </span></td><td><span style=white-space:pre-wrap>Field Blvd &amp; South Water St  </span></td><td><span style=white-space:pre-wrap>15534       </span></td><td>41.88096</td><td>-87.61674</td><td>41.88635</td><td>-87.61752</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>1542FBEC830415CF</td><td>classic_bike</td><td>2022-05-26 18:36:28</td><td>2022-05-26 18:58:18</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td>TA1305000032</td><td><span style=white-space:pre-wrap>Wood St &amp; Milwaukee Ave      </span></td><td><span style=white-space:pre-wrap>13221       </span></td><td>41.88224</td><td>-87.64107</td><td>41.90765</td><td>-87.67255</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>6FF59852924528F8</td><td>classic_bike</td><td>2022-05-10 07:30:07</td><td>2022-05-10 07:38:49</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td>TA1305000032</td><td><span style=white-space:pre-wrap>Clark St &amp; Randolph St       </span></td><td>TA1305000030</td><td>41.88224</td><td>-87.64107</td><td>41.88458</td><td>-87.63189</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>483C52CAAE12E3AC</td><td>classic_bike</td><td>2022-05-10 17:31:56</td><td>2022-05-10 17:36:57</td><td><span style=white-space:pre-wrap>Clinton St &amp; Madison St          </span></td><td>TA1305000032</td><td><span style=white-space:pre-wrap>Morgan St &amp; Lake St          </span></td><td>TA1306000015</td><td>41.88224</td><td>-87.64107</td><td>41.88578</td><td>-87.65102</td><td>member</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>C0A3AA5A614DCE01</td><td>classic_bike</td><td>2022-05-04 14:48:55</td><td>2022-05-04 14:56:04</td><td><span style=white-space:pre-wrap>Carpenter St &amp; Huron St          </span></td><td><span style=white-space:pre-wrap>13196       </span></td><td>Sangamon St &amp; Washington Blvd</td><td><span style=white-space:pre-wrap>13409       </span></td><td>41.89456</td><td>-87.65345</td><td>41.88316</td><td>-87.65110</td><td>member</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 13\n",
       "\\begin{tabular}{r|lllllllllllll}\n",
       "  & ride\\_id & rideable\\_type & started\\_at & ended\\_at & start\\_station\\_name & start\\_station\\_id & end\\_station\\_name & end\\_station\\_id & start\\_lat & start\\_lng & end\\_lat & end\\_lng & member\\_casual\\\\\n",
       "  & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <chr>\\\\\n",
       "\\hline\n",
       "\t1 & EC2DE40644C6B0F4 & classic\\_bike & 2022-05-23 23:06:58 & 2022-05-23 23:40:19 & Wabash Ave \\& Grand Ave            & TA1307000117 & Halsted St \\& Roscoe St        & TA1309000025 & 41.89147 & -87.62676 & 41.94367 & -87.64895 & member\\\\\n",
       "\t2 & 1C31AD03897EE385 & classic\\_bike & 2022-05-11 08:53:28 & 2022-05-11 09:31:22 & DuSable Lake Shore Dr \\& Monroe St & 13300        & Field Blvd \\& South Water St   & 15534        & 41.88096 & -87.61674 & 41.88635 & -87.61752 & member\\\\\n",
       "\t3 & 1542FBEC830415CF & classic\\_bike & 2022-05-26 18:36:28 & 2022-05-26 18:58:18 & Clinton St \\& Madison St           & TA1305000032 & Wood St \\& Milwaukee Ave       & 13221        & 41.88224 & -87.64107 & 41.90765 & -87.67255 & member\\\\\n",
       "\t4 & 6FF59852924528F8 & classic\\_bike & 2022-05-10 07:30:07 & 2022-05-10 07:38:49 & Clinton St \\& Madison St           & TA1305000032 & Clark St \\& Randolph St        & TA1305000030 & 41.88224 & -87.64107 & 41.88458 & -87.63189 & member\\\\\n",
       "\t5 & 483C52CAAE12E3AC & classic\\_bike & 2022-05-10 17:31:56 & 2022-05-10 17:36:57 & Clinton St \\& Madison St           & TA1305000032 & Morgan St \\& Lake St           & TA1306000015 & 41.88224 & -87.64107 & 41.88578 & -87.65102 & member\\\\\n",
       "\t6 & C0A3AA5A614DCE01 & classic\\_bike & 2022-05-04 14:48:55 & 2022-05-04 14:56:04 & Carpenter St \\& Huron St           & 13196        & Sangamon St \\& Washington Blvd & 13409        & 41.89456 & -87.65345 & 41.88316 & -87.65110 & member\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 13\n",
       "\n",
       "| <!--/--> | ride_id &lt;chr&gt; | rideable_type &lt;chr&gt; | started_at &lt;chr&gt; | ended_at &lt;chr&gt; | start_station_name &lt;chr&gt; | start_station_id &lt;chr&gt; | end_station_name &lt;chr&gt; | end_station_id &lt;chr&gt; | start_lat &lt;dbl&gt; | start_lng &lt;dbl&gt; | end_lat &lt;dbl&gt; | end_lng &lt;dbl&gt; | member_casual &lt;chr&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | EC2DE40644C6B0F4 | classic_bike | 2022-05-23 23:06:58 | 2022-05-23 23:40:19 | Wabash Ave &amp; Grand Ave            | TA1307000117 | Halsted St &amp; Roscoe St        | TA1309000025 | 41.89147 | -87.62676 | 41.94367 | -87.64895 | member |\n",
       "| 2 | 1C31AD03897EE385 | classic_bike | 2022-05-11 08:53:28 | 2022-05-11 09:31:22 | DuSable Lake Shore Dr &amp; Monroe St | 13300        | Field Blvd &amp; South Water St   | 15534        | 41.88096 | -87.61674 | 41.88635 | -87.61752 | member |\n",
       "| 3 | 1542FBEC830415CF | classic_bike | 2022-05-26 18:36:28 | 2022-05-26 18:58:18 | Clinton St &amp; Madison St           | TA1305000032 | Wood St &amp; Milwaukee Ave       | 13221        | 41.88224 | -87.64107 | 41.90765 | -87.67255 | member |\n",
       "| 4 | 6FF59852924528F8 | classic_bike | 2022-05-10 07:30:07 | 2022-05-10 07:38:49 | Clinton St &amp; Madison St           | TA1305000032 | Clark St &amp; Randolph St        | TA1305000030 | 41.88224 | -87.64107 | 41.88458 | -87.63189 | member |\n",
       "| 5 | 483C52CAAE12E3AC | classic_bike | 2022-05-10 17:31:56 | 2022-05-10 17:36:57 | Clinton St &amp; Madison St           | TA1305000032 | Morgan St &amp; Lake St           | TA1306000015 | 41.88224 | -87.64107 | 41.88578 | -87.65102 | member |\n",
       "| 6 | C0A3AA5A614DCE01 | classic_bike | 2022-05-04 14:48:55 | 2022-05-04 14:56:04 | Carpenter St &amp; Huron St           | 13196        | Sangamon St &amp; Washington Blvd | 13409        | 41.89456 | -87.65345 | 41.88316 | -87.65110 | member |\n",
       "\n"
      ],
      "text/plain": [
       "  ride_id          rideable_type started_at          ended_at           \n",
       "1 EC2DE40644C6B0F4 classic_bike  2022-05-23 23:06:58 2022-05-23 23:40:19\n",
       "2 1C31AD03897EE385 classic_bike  2022-05-11 08:53:28 2022-05-11 09:31:22\n",
       "3 1542FBEC830415CF classic_bike  2022-05-26 18:36:28 2022-05-26 18:58:18\n",
       "4 6FF59852924528F8 classic_bike  2022-05-10 07:30:07 2022-05-10 07:38:49\n",
       "5 483C52CAAE12E3AC classic_bike  2022-05-10 17:31:56 2022-05-10 17:36:57\n",
       "6 C0A3AA5A614DCE01 classic_bike  2022-05-04 14:48:55 2022-05-04 14:56:04\n",
       "  start_station_name                start_station_id\n",
       "1 Wabash Ave & Grand Ave            TA1307000117    \n",
       "2 DuSable Lake Shore Dr & Monroe St 13300           \n",
       "3 Clinton St & Madison St           TA1305000032    \n",
       "4 Clinton St & Madison St           TA1305000032    \n",
       "5 Clinton St & Madison St           TA1305000032    \n",
       "6 Carpenter St & Huron St           13196           \n",
       "  end_station_name              end_station_id start_lat start_lng end_lat \n",
       "1 Halsted St & Roscoe St        TA1309000025   41.89147  -87.62676 41.94367\n",
       "2 Field Blvd & South Water St   15534          41.88096  -87.61674 41.88635\n",
       "3 Wood St & Milwaukee Ave       13221          41.88224  -87.64107 41.90765\n",
       "4 Clark St & Randolph St        TA1305000030   41.88224  -87.64107 41.88458\n",
       "5 Morgan St & Lake St           TA1306000015   41.88224  -87.64107 41.88578\n",
       "6 Sangamon St & Washington Blvd 13409          41.89456  -87.65345 41.88316\n",
       "  end_lng   member_casual\n",
       "1 -87.64895 member       \n",
       "2 -87.61752 member       \n",
       "3 -87.67255 member       \n",
       "4 -87.63189 member       \n",
       "5 -87.65102 member       \n",
       "6 -87.65110 member       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'ride_id'</li><li>'rideable_type'</li><li>'started_at'</li><li>'ended_at'</li><li>'start_station_name'</li><li>'start_station_id'</li><li>'end_station_name'</li><li>'end_station_id'</li><li>'start_lat'</li><li>'start_lng'</li><li>'end_lat'</li><li>'end_lng'</li><li>'member_casual'</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 'ride\\_id'\n",
       "\\item 'rideable\\_type'\n",
       "\\item 'started\\_at'\n",
       "\\item 'ended\\_at'\n",
       "\\item 'start\\_station\\_name'\n",
       "\\item 'start\\_station\\_id'\n",
       "\\item 'end\\_station\\_name'\n",
       "\\item 'end\\_station\\_id'\n",
       "\\item 'start\\_lat'\n",
       "\\item 'start\\_lng'\n",
       "\\item 'end\\_lat'\n",
       "\\item 'end\\_lng'\n",
       "\\item 'member\\_casual'\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 'ride_id'\n",
       "2. 'rideable_type'\n",
       "3. 'started_at'\n",
       "4. 'ended_at'\n",
       "5. 'start_station_name'\n",
       "6. 'start_station_id'\n",
       "7. 'end_station_name'\n",
       "8. 'end_station_id'\n",
       "9. 'start_lat'\n",
       "10. 'start_lng'\n",
       "11. 'end_lat'\n",
       "12. 'end_lng'\n",
       "13. 'member_casual'\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       " [1] \"ride_id\"            \"rideable_type\"      \"started_at\"        \n",
       " [4] \"ended_at\"           \"start_station_name\" \"start_station_id\"  \n",
       " [7] \"end_station_name\"   \"end_station_id\"     \"start_lat\"         \n",
       "[10] \"start_lng\"          \"end_lat\"            \"end_lng\"           \n",
       "[13] \"member_casual\"     "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "   ride_id          rideable_type       started_at          ended_at        \n",
       " Length:5860776     Length:5860776     Length:5860776     Length:5860776    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       " start_station_name start_station_id   end_station_name   end_station_id    \n",
       " Length:5860776     Length:5860776     Length:5860776     Length:5860776    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "   start_lat       start_lng         end_lat         end_lng      \n",
       " Min.   :41.64   Min.   :-87.84   Min.   :41.39   Min.   :-88.97  \n",
       " 1st Qu.:41.88   1st Qu.:-87.66   1st Qu.:41.88   1st Qu.:-87.66  \n",
       " Median :41.90   Median :-87.64   Median :41.90   Median :-87.64  \n",
       " Mean   :41.90   Mean   :-87.65   Mean   :41.90   Mean   :-87.65  \n",
       " 3rd Qu.:41.93   3rd Qu.:-87.63   3rd Qu.:41.93   3rd Qu.:-87.63  \n",
       " Max.   :45.64   Max.   :-73.80   Max.   :42.17   Max.   :-87.49  \n",
       "                                  NA's   :5036    NA's   :5036    \n",
       " member_casual     \n",
       " Length:5860776    \n",
       " Class :character  \n",
       " Mode  :character  \n",
       "                   \n",
       "                   \n",
       "                   \n",
       "                   "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t5860776 obs. of  13 variables:\n",
      " $ ride_id           : chr  \"EC2DE40644C6B0F4\" \"1C31AD03897EE385\" \"1542FBEC830415CF\" \"6FF59852924528F8\" ...\n",
      " $ rideable_type     : chr  \"classic_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-05-23 23:06:58\" \"2022-05-11 08:53:28\" \"2022-05-26 18:36:28\" \"2022-05-10 07:30:07\" ...\n",
      " $ ended_at          : chr  \"2022-05-23 23:40:19\" \"2022-05-11 09:31:22\" \"2022-05-26 18:58:18\" \"2022-05-10 07:38:49\" ...\n",
      " $ start_station_name: chr  \"Wabash Ave & Grand Ave\" \"DuSable Lake Shore Dr & Monroe St\" \"Clinton St & Madison St\" \"Clinton St & Madison St\" ...\n",
      " $ start_station_id  : chr  \"TA1307000117\" \"13300\" \"TA1305000032\" \"TA1305000032\" ...\n",
      " $ end_station_name  : chr  \"Halsted St & Roscoe St\" \"Field Blvd & South Water St\" \"Wood St & Milwaukee Ave\" \"Clark St & Randolph St\" ...\n",
      " $ end_station_id    : chr  \"TA1309000025\" \"15534\" \"13221\" \"TA1305000030\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.6 -87.7 -87.6 -87.7 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>5860776</li><li>13</li></ol>\n"
      ],
      "text/latex": [
       "\\begin{enumerate*}\n",
       "\\item 5860776\n",
       "\\item 13\n",
       "\\end{enumerate*}\n"
      ],
      "text/markdown": [
       "1. 5860776\n",
       "2. 13\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "[1] 5860776      13"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "5860776"
      ],
      "text/latex": [
       "5860776"
      ],
      "text/markdown": [
       "5860776"
      ],
      "text/plain": [
       "[1] 5860776"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "\n",
    "# STEP 3: CLEAN UP AND ADD DATA TO PREPARE FOR ANALYSIS\n",
    "\n",
    "\n",
    "#Examine the dataframe\n",
    "\n",
    "head(bike_trip_data)\n",
    "colnames(bike_trip_data)\n",
    "summary(bike_trip_data)\n",
    "str(bike_trip_data)\n",
    "dim(bike_trip_data)\n",
    "nrow(bike_trip_data)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "e6607fb2",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:09:18.002732Z",
     "iopub.status.busy": "2022-07-02T19:09:18.000938Z",
     "iopub.status.idle": "2022-07-02T19:09:41.619803Z",
     "shell.execute_reply": "2022-07-02T19:09:41.617372Z"
    },
    "papermill": {
     "duration": 23.638576,
     "end_time": "2022-07-02T19:09:41.624783",
     "exception": false,
     "start_time": "2022-07-02T19:09:17.986207",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Add columns that list the date, month, day, and year of each ride\n",
    "# This will allow us to aggregate ride data for each month, day, or year ... before completing these operations we could only aggregate at the ride level\n",
    "\n",
    "bike_trip_data$date <- as.Date(bike_trip_data$started_at) \n",
    "bike_trip_data$month <- format(as.Date(bike_trip_data$date), \"%m\")\n",
    "bike_trip_data$day <- format(as.Date(bike_trip_data$date), \"%d\")\n",
    "bike_trip_data$year <- format(as.Date(bike_trip_data$date), \"%Y\")\n",
    "bike_trip_data$day_of_week <- format(as.Date(bike_trip_data$date), \"%A\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "34accec8",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:09:41.658104Z",
     "iopub.status.busy": "2022-07-02T19:09:41.656350Z",
     "iopub.status.idle": "2022-07-02T19:10:19.028186Z",
     "shell.execute_reply": "2022-07-02T19:10:19.026385Z"
    },
    "papermill": {
     "duration": 37.389883,
     "end_time": "2022-07-02T19:10:19.030518",
     "exception": false,
     "start_time": "2022-07-02T19:09:41.640635",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Add a \"ride_length\" calculation to all_trips (in seconds)\n",
    "\n",
    "bike_trip_data$ride_length <- difftime(bike_trip_data$ended_at,bike_trip_data$started_at)\n",
    "\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "0bc893aa",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:10:19.060291Z",
     "iopub.status.busy": "2022-07-02T19:10:19.058610Z",
     "iopub.status.idle": "2022-07-02T19:10:19.104746Z",
     "shell.execute_reply": "2022-07-02T19:10:19.102443Z"
    },
    "papermill": {
     "duration": 0.063865,
     "end_time": "2022-07-02T19:10:19.107282",
     "exception": false,
     "start_time": "2022-07-02T19:10:19.043417",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t5860776 obs. of  19 variables:\n",
      " $ ride_id           : chr  \"EC2DE40644C6B0F4\" \"1C31AD03897EE385\" \"1542FBEC830415CF\" \"6FF59852924528F8\" ...\n",
      " $ rideable_type     : chr  \"classic_bike\" \"classic_bike\" \"classic_bike\" \"classic_bike\" ...\n",
      " $ started_at        : chr  \"2022-05-23 23:06:58\" \"2022-05-11 08:53:28\" \"2022-05-26 18:36:28\" \"2022-05-10 07:30:07\" ...\n",
      " $ ended_at          : chr  \"2022-05-23 23:40:19\" \"2022-05-11 09:31:22\" \"2022-05-26 18:58:18\" \"2022-05-10 07:38:49\" ...\n",
      " $ start_station_name: chr  \"Wabash Ave & Grand Ave\" \"DuSable Lake Shore Dr & Monroe St\" \"Clinton St & Madison St\" \"Clinton St & Madison St\" ...\n",
      " $ start_station_id  : chr  \"TA1307000117\" \"13300\" \"TA1305000032\" \"TA1305000032\" ...\n",
      " $ end_station_name  : chr  \"Halsted St & Roscoe St\" \"Field Blvd & South Water St\" \"Wood St & Milwaukee Ave\" \"Clark St & Randolph St\" ...\n",
      " $ end_station_id    : chr  \"TA1309000025\" \"15534\" \"13221\" \"TA1305000030\" ...\n",
      " $ start_lat         : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ start_lng         : num  -87.6 -87.6 -87.6 -87.6 -87.6 ...\n",
      " $ end_lat           : num  41.9 41.9 41.9 41.9 41.9 ...\n",
      " $ end_lng           : num  -87.6 -87.6 -87.7 -87.6 -87.7 ...\n",
      " $ member_casual     : chr  \"member\" \"member\" \"member\" \"member\" ...\n",
      " $ date              : Date, format: \"2022-05-23\" \"2022-05-11\" ...\n",
      " $ month             : chr  \"05\" \"05\" \"05\" \"05\" ...\n",
      " $ day               : chr  \"23\" \"11\" \"26\" \"10\" ...\n",
      " $ year              : chr  \"2022\" \"2022\" \"2022\" \"2022\" ...\n",
      " $ day_of_week       : chr  \"Monday\" \"Wednesday\" \"Thursday\" \"Tuesday\" ...\n",
      " $ ride_length       : 'difftime' num  2001 2274 1310 522 ...\n",
      "  ..- attr(*, \"units\")= chr \"secs\"\n"
     ]
    }
   ],
   "source": [
    "# Inspect the structure of the columns\n",
    "\n",
    "str(bike_trip_data)\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "a6eeb821",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:10:19.136844Z",
     "iopub.status.busy": "2022-07-02T19:10:19.135324Z",
     "iopub.status.idle": "2022-07-02T19:10:26.866887Z",
     "shell.execute_reply": "2022-07-02T19:10:26.865252Z"
    },
    "papermill": {
     "duration": 7.748782,
     "end_time": "2022-07-02T19:10:26.869274",
     "exception": false,
     "start_time": "2022-07-02T19:10:19.120492",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "FALSE"
      ],
      "text/latex": [
       "FALSE"
      ],
      "text/markdown": [
       "FALSE"
      ],
      "text/plain": [
       "[1] FALSE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "TRUE"
      ],
      "text/latex": [
       "TRUE"
      ],
      "text/markdown": [
       "TRUE"
      ],
      "text/plain": [
       "[1] TRUE"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Convert \"ride_length\" from Factor to numeric so we can run calculations on the data\n",
    "\n",
    "is.factor(bike_trip_data$ride_length)\n",
    "bike_trip_data$ride_length <- as.numeric(as.character(bike_trip_data$ride_length))\n",
    "is.numeric(bike_trip_data$ride_length)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "30622a4e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:10:26.898832Z",
     "iopub.status.busy": "2022-07-02T19:10:26.897351Z",
     "iopub.status.idle": "2022-07-02T19:10:27.379890Z",
     "shell.execute_reply": "2022-07-02T19:10:27.378285Z"
    },
    "papermill": {
     "duration": 0.499722,
     "end_time": "2022-07-02T19:10:27.382079",
     "exception": false,
     "start_time": "2022-07-02T19:10:26.882357",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. \n",
       "  -3482     382     680    1241    1236 3356649 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Removing the bad data and do analysis on the ride length.\n",
    "# The dataframe includes a few hundred entries when bikes were taken out of docks and checked for quality by Divvy or ride_length was negative\n",
    "\n",
    "summary(bike_trip_data$ride_length)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "10d26568",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:10:27.411781Z",
     "iopub.status.busy": "2022-07-02T19:10:27.410371Z",
     "iopub.status.idle": "2022-07-02T19:10:44.794957Z",
     "shell.execute_reply": "2022-07-02T19:10:44.793344Z"
    },
    "papermill": {
     "duration": 17.401789,
     "end_time": "2022-07-02T19:10:44.797147",
     "exception": false,
     "start_time": "2022-07-02T19:10:27.395358",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   ride_id          rideable_type       started_at          ended_at        \n",
       " Length:5860637     Length:5860637     Length:5860637     Length:5860637    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       " start_station_name start_station_id   end_station_name   end_station_id    \n",
       " Length:5860637     Length:5860637     Length:5860637     Length:5860637    \n",
       " Class :character   Class :character   Class :character   Class :character  \n",
       " Mode  :character   Mode  :character   Mode  :character   Mode  :character  \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "                                                                            \n",
       "   start_lat       start_lng         end_lat         end_lng      \n",
       " Min.   :41.64   Min.   :-87.84   Min.   :41.39   Min.   :-88.97  \n",
       " 1st Qu.:41.88   1st Qu.:-87.66   1st Qu.:41.88   1st Qu.:-87.66  \n",
       " Median :41.90   Median :-87.64   Median :41.90   Median :-87.64  \n",
       " Mean   :41.90   Mean   :-87.65   Mean   :41.90   Mean   :-87.65  \n",
       " 3rd Qu.:41.93   3rd Qu.:-87.63   3rd Qu.:41.93   3rd Qu.:-87.63  \n",
       " Max.   :45.64   Max.   :-73.80   Max.   :42.17   Max.   :-87.49  \n",
       "                                  NA's   :5036    NA's   :5036    \n",
       " member_casual           date               month               day           \n",
       " Length:5860637     Min.   :2021-06-01   Length:5860637     Length:5860637    \n",
       " Class :character   1st Qu.:2021-07-29   Class :character   Class :character  \n",
       " Mode  :character   Median :2021-09-23   Mode  :character   Mode  :character  \n",
       "                    Mean   :2021-10-25                                        \n",
       "                    3rd Qu.:2022-01-14                                        \n",
       "                    Max.   :2022-05-31                                        \n",
       "                                                                              \n",
       "     year           day_of_week         ride_length     \n",
       " Length:5860637     Length:5860637     Min.   :      0  \n",
       " Class :character   Class :character   1st Qu.:    382  \n",
       " Mode  :character   Mode  :character   Median :    680  \n",
       "                                       Mean   :   1241  \n",
       "                                       3rd Qu.:   1236  \n",
       "                                       Max.   :3356649  \n",
       "                                                        "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# We will create a new version of the dataframe (v2) since data is being removed\n",
    "\n",
    "bike_trip_data_v2 <- bike_trip_data[!(bike_trip_data$ride_length<0),]\n",
    "\n",
    "summary(bike_trip_data_v2)\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "01812e10",
   "metadata": {
    "papermill": {
     "duration": 0.013699,
     "end_time": "2022-07-02T19:10:44.824392",
     "exception": false,
     "start_time": "2022-07-02T19:10:44.810693",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **ANALYSE**\n",
    "\n",
    "## Identify trends and relationships\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "86779716",
   "metadata": {
    "papermill": {
     "duration": 0.01367,
     "end_time": "2022-07-02T19:10:44.852642",
     "exception": false,
     "start_time": "2022-07-02T19:10:44.838972",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Step 4: Conduct Descriptive Analysis"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "47336d22",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:10:44.883185Z",
     "iopub.status.busy": "2022-07-02T19:10:44.881595Z",
     "iopub.status.idle": "2022-07-02T19:10:45.141489Z",
     "shell.execute_reply": "2022-07-02T19:10:45.139328Z"
    },
    "papermill": {
     "duration": 0.278197,
     "end_time": "2022-07-02T19:10:45.144279",
     "exception": false,
     "start_time": "2022-07-02T19:10:44.866082",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "1241.40910740591"
      ],
      "text/latex": [
       "1241.40910740591"
      ],
      "text/markdown": [
       "1241.40910740591"
      ],
      "text/plain": [
       "[1] 1241.409"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "680"
      ],
      "text/latex": [
       "680"
      ],
      "text/markdown": [
       "680"
      ],
      "text/plain": [
       "[1] 680"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "3356649"
      ],
      "text/latex": [
       "3356649"
      ],
      "text/markdown": [
       "3356649"
      ],
      "text/plain": [
       "[1] 3356649"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "0"
      ],
      "text/latex": [
       "0"
      ],
      "text/markdown": [
       "0"
      ],
      "text/plain": [
       "[1] 0"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Descriptive analysis on ride_length (all figures in seconds)\n",
    "\n",
    "mean(bike_trip_data_v2$ride_length)#straight average (total ride length / rides)\n",
    "median(bike_trip_data_v2$ride_length) #midpoint number in the ascending array of ride lengths\n",
    "max(bike_trip_data_v2$ride_length) #longest ride\n",
    "min(bike_trip_data_v2$ride_length) #shortest ride\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "5e1a87d6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:10:45.176955Z",
     "iopub.status.busy": "2022-07-02T19:10:45.174738Z",
     "iopub.status.idle": "2022-07-02T19:10:45.732887Z",
     "shell.execute_reply": "2022-07-02T19:10:45.731248Z"
    },
    "papermill": {
     "duration": 0.576657,
     "end_time": "2022-07-02T19:10:45.735153",
     "exception": false,
     "start_time": "2022-07-02T19:10:45.158496",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   Min. 1st Qu.  Median    Mean 3rd Qu.    Max. \n",
       "      0     382     680    1241    1236 3356649 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# You can condense the four lines above to one line using summary() on the specific attribute\n",
    "\n",
    "summary(bike_trip_data_v2$ride_length)\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "7086134a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:10:45.767617Z",
     "iopub.status.busy": "2022-07-02T19:10:45.766057Z",
     "iopub.status.idle": "2022-07-02T19:11:08.586885Z",
     "shell.execute_reply": "2022-07-02T19:11:08.585175Z"
    },
    "papermill": {
     "duration": 22.839306,
     "end_time": "2022-07-02T19:11:08.589153",
     "exception": false,
     "start_time": "2022-07-02T19:10:45.749847",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>bike_trip_data_v2$member_casual</th><th scope=col>bike_trip_data_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>1832.9602</td></tr>\n",
       "\t<tr><td>member</td><td> 782.6623</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " bike\\_trip\\_data\\_v2\\$member\\_casual & bike\\_trip\\_data\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 1832.9602\\\\\n",
       "\t member &  782.6623\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| bike_trip_data_v2$member_casual &lt;chr&gt; | bike_trip_data_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 1832.9602 |\n",
       "| member |  782.6623 |\n",
       "\n"
      ],
      "text/plain": [
       "  bike_trip_data_v2$member_casual bike_trip_data_v2$ride_length\n",
       "1 casual                          1832.9602                    \n",
       "2 member                           782.6623                    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>bike_trip_data_v2$member_casual</th><th scope=col>bike_trip_data_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>916</td></tr>\n",
       "\t<tr><td>member</td><td>547</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " bike\\_trip\\_data\\_v2\\$member\\_casual & bike\\_trip\\_data\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 916\\\\\n",
       "\t member & 547\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| bike_trip_data_v2$member_casual &lt;chr&gt; | bike_trip_data_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 916 |\n",
       "| member | 547 |\n",
       "\n"
      ],
      "text/plain": [
       "  bike_trip_data_v2$member_casual bike_trip_data_v2$ride_length\n",
       "1 casual                          916                          \n",
       "2 member                          547                          "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>bike_trip_data_v2$member_casual</th><th scope=col>bike_trip_data_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>3356649</td></tr>\n",
       "\t<tr><td>member</td><td>  93594</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " bike\\_trip\\_data\\_v2\\$member\\_casual & bike\\_trip\\_data\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 3356649\\\\\n",
       "\t member &   93594\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| bike_trip_data_v2$member_casual &lt;chr&gt; | bike_trip_data_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 3356649 |\n",
       "| member |   93594 |\n",
       "\n"
      ],
      "text/plain": [
       "  bike_trip_data_v2$member_casual bike_trip_data_v2$ride_length\n",
       "1 casual                          3356649                      \n",
       "2 member                            93594                      "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 2 × 2</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>bike_trip_data_v2$member_casual</th><th scope=col>bike_trip_data_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>0</td></tr>\n",
       "\t<tr><td>member</td><td>0</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 2 × 2\n",
       "\\begin{tabular}{ll}\n",
       " bike\\_trip\\_data\\_v2\\$member\\_casual & bike\\_trip\\_data\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & 0\\\\\n",
       "\t member & 0\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 2 × 2\n",
       "\n",
       "| bike_trip_data_v2$member_casual &lt;chr&gt; | bike_trip_data_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|\n",
       "| casual | 0 |\n",
       "| member | 0 |\n",
       "\n"
      ],
      "text/plain": [
       "  bike_trip_data_v2$member_casual bike_trip_data_v2$ride_length\n",
       "1 casual                          0                            \n",
       "2 member                          0                            "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Compare members and casual users. Aggregate to analyze the data based on user type: member vs casualusers\n",
    "\n",
    "\n",
    "aggregate(bike_trip_data_v2$ride_length ~ bike_trip_data_v2$member_casual, FUN = mean)\n",
    "aggregate(bike_trip_data_v2$ride_length ~ bike_trip_data_v2$member_casual, FUN = median)\n",
    "aggregate(bike_trip_data_v2$ride_length ~ bike_trip_data_v2$member_casual, FUN = max)\n",
    "aggregate(bike_trip_data_v2$ride_length ~ bike_trip_data_v2$member_casual, FUN = min)\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "35f1daa3",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:11:08.622936Z",
     "iopub.status.busy": "2022-07-02T19:11:08.621326Z",
     "iopub.status.idle": "2022-07-02T19:11:15.048918Z",
     "shell.execute_reply": "2022-07-02T19:11:15.046614Z"
    },
    "papermill": {
     "duration": 6.448037,
     "end_time": "2022-07-02T19:11:15.052403",
     "exception": false,
     "start_time": "2022-07-02T19:11:08.604366",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>bike_trip_data_v2$member_casual</th><th scope=col>bike_trip_data_v2$day_of_week</th><th scope=col>bike_trip_data_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Friday   </td><td>1726.7647</td></tr>\n",
       "\t<tr><td>member</td><td>Friday   </td><td> 766.9394</td></tr>\n",
       "\t<tr><td>casual</td><td>Monday   </td><td>1831.6798</td></tr>\n",
       "\t<tr><td>member</td><td>Monday   </td><td> 758.7213</td></tr>\n",
       "\t<tr><td>casual</td><td>Saturday </td><td>2010.3801</td></tr>\n",
       "\t<tr><td>member</td><td>Saturday </td><td> 877.4190</td></tr>\n",
       "\t<tr><td>casual</td><td>Sunday   </td><td>2120.6685</td></tr>\n",
       "\t<tr><td>member</td><td>Sunday   </td><td> 887.6333</td></tr>\n",
       "\t<tr><td>casual</td><td>Thursday </td><td>1662.4429</td></tr>\n",
       "\t<tr><td>member</td><td>Thursday </td><td> 746.5689</td></tr>\n",
       "\t<tr><td>casual</td><td>Tuesday  </td><td>1574.5248</td></tr>\n",
       "\t<tr><td>member</td><td>Tuesday  </td><td> 736.7175</td></tr>\n",
       "\t<tr><td>casual</td><td>Wednesday</td><td>1599.3807</td></tr>\n",
       "\t<tr><td>member</td><td>Wednesday</td><td> 738.5552</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " bike\\_trip\\_data\\_v2\\$member\\_casual & bike\\_trip\\_data\\_v2\\$day\\_of\\_week & bike\\_trip\\_data\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <chr> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Friday    & 1726.7647\\\\\n",
       "\t member & Friday    &  766.9394\\\\\n",
       "\t casual & Monday    & 1831.6798\\\\\n",
       "\t member & Monday    &  758.7213\\\\\n",
       "\t casual & Saturday  & 2010.3801\\\\\n",
       "\t member & Saturday  &  877.4190\\\\\n",
       "\t casual & Sunday    & 2120.6685\\\\\n",
       "\t member & Sunday    &  887.6333\\\\\n",
       "\t casual & Thursday  & 1662.4429\\\\\n",
       "\t member & Thursday  &  746.5689\\\\\n",
       "\t casual & Tuesday   & 1574.5248\\\\\n",
       "\t member & Tuesday   &  736.7175\\\\\n",
       "\t casual & Wednesday & 1599.3807\\\\\n",
       "\t member & Wednesday &  738.5552\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 14 × 3\n",
       "\n",
       "| bike_trip_data_v2$member_casual &lt;chr&gt; | bike_trip_data_v2$day_of_week &lt;chr&gt; | bike_trip_data_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | Friday    | 1726.7647 |\n",
       "| member | Friday    |  766.9394 |\n",
       "| casual | Monday    | 1831.6798 |\n",
       "| member | Monday    |  758.7213 |\n",
       "| casual | Saturday  | 2010.3801 |\n",
       "| member | Saturday  |  877.4190 |\n",
       "| casual | Sunday    | 2120.6685 |\n",
       "| member | Sunday    |  887.6333 |\n",
       "| casual | Thursday  | 1662.4429 |\n",
       "| member | Thursday  |  746.5689 |\n",
       "| casual | Tuesday   | 1574.5248 |\n",
       "| member | Tuesday   |  736.7175 |\n",
       "| casual | Wednesday | 1599.3807 |\n",
       "| member | Wednesday |  738.5552 |\n",
       "\n"
      ],
      "text/plain": [
       "   bike_trip_data_v2$member_casual bike_trip_data_v2$day_of_week\n",
       "1  casual                          Friday                       \n",
       "2  member                          Friday                       \n",
       "3  casual                          Monday                       \n",
       "4  member                          Monday                       \n",
       "5  casual                          Saturday                     \n",
       "6  member                          Saturday                     \n",
       "7  casual                          Sunday                       \n",
       "8  member                          Sunday                       \n",
       "9  casual                          Thursday                     \n",
       "10 member                          Thursday                     \n",
       "11 casual                          Tuesday                      \n",
       "12 member                          Tuesday                      \n",
       "13 casual                          Wednesday                    \n",
       "14 member                          Wednesday                    \n",
       "   bike_trip_data_v2$ride_length\n",
       "1  1726.7647                    \n",
       "2   766.9394                    \n",
       "3  1831.6798                    \n",
       "4   758.7213                    \n",
       "5  2010.3801                    \n",
       "6   877.4190                    \n",
       "7  2120.6685                    \n",
       "8   887.6333                    \n",
       "9  1662.4429                    \n",
       "10  746.5689                    \n",
       "11 1574.5248                    \n",
       "12  736.7175                    \n",
       "13 1599.3807                    \n",
       "14  738.5552                    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "#average ride time by each day for members vs casual users\n",
    "\n",
    "aggregate(bike_trip_data_v2$ride_length ~ bike_trip_data_v2$member_casual + bike_trip_data_v2$day_of_week, FUN = mean)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "452d4899",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:11:15.087696Z",
     "iopub.status.busy": "2022-07-02T19:11:15.085928Z",
     "iopub.status.idle": "2022-07-02T19:11:15.243410Z",
     "shell.execute_reply": "2022-07-02T19:11:15.241505Z"
    },
    "papermill": {
     "duration": 0.178269,
     "end_time": "2022-07-02T19:11:15.246455",
     "exception": false,
     "start_time": "2022-07-02T19:11:15.068186",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "# Notice that the days of the week are out of order. Let's fix that.\n",
    "\n",
    "bike_trip_data_v2$day_of_week <- ordered(bike_trip_data_v2$day_of_week, levels=c(\"Sunday\", \"Monday\", \"Tuesday\", \"Wednesday\", \"Thursday\", \"Friday\", \"Saturday\"))\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "f8b0253d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:11:15.283459Z",
     "iopub.status.busy": "2022-07-02T19:11:15.281841Z",
     "iopub.status.idle": "2022-07-02T19:11:20.020512Z",
     "shell.execute_reply": "2022-07-02T19:11:20.018801Z"
    },
    "papermill": {
     "duration": 4.758216,
     "end_time": "2022-07-02T19:11:20.022829",
     "exception": false,
     "start_time": "2022-07-02T19:11:15.264613",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 14 × 3</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>bike_trip_data_v2$member_casual</th><th scope=col>bike_trip_data_v2$day_of_week</th><th scope=col>bike_trip_data_v2$ride_length</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Sunday   </td><td>2120.6685</td></tr>\n",
       "\t<tr><td>member</td><td>Sunday   </td><td> 887.6333</td></tr>\n",
       "\t<tr><td>casual</td><td>Monday   </td><td>1831.6798</td></tr>\n",
       "\t<tr><td>member</td><td>Monday   </td><td> 758.7213</td></tr>\n",
       "\t<tr><td>casual</td><td>Tuesday  </td><td>1574.5248</td></tr>\n",
       "\t<tr><td>member</td><td>Tuesday  </td><td> 736.7175</td></tr>\n",
       "\t<tr><td>casual</td><td>Wednesday</td><td>1599.3807</td></tr>\n",
       "\t<tr><td>member</td><td>Wednesday</td><td> 738.5552</td></tr>\n",
       "\t<tr><td>casual</td><td>Thursday </td><td>1662.4429</td></tr>\n",
       "\t<tr><td>member</td><td>Thursday </td><td> 746.5689</td></tr>\n",
       "\t<tr><td>casual</td><td>Friday   </td><td>1726.7647</td></tr>\n",
       "\t<tr><td>member</td><td>Friday   </td><td> 766.9394</td></tr>\n",
       "\t<tr><td>casual</td><td>Saturday </td><td>2010.3801</td></tr>\n",
       "\t<tr><td>member</td><td>Saturday </td><td> 877.4190</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 14 × 3\n",
       "\\begin{tabular}{lll}\n",
       " bike\\_trip\\_data\\_v2\\$member\\_casual & bike\\_trip\\_data\\_v2\\$day\\_of\\_week & bike\\_trip\\_data\\_v2\\$ride\\_length\\\\\n",
       " <chr> & <ord> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Sunday    & 2120.6685\\\\\n",
       "\t member & Sunday    &  887.6333\\\\\n",
       "\t casual & Monday    & 1831.6798\\\\\n",
       "\t member & Monday    &  758.7213\\\\\n",
       "\t casual & Tuesday   & 1574.5248\\\\\n",
       "\t member & Tuesday   &  736.7175\\\\\n",
       "\t casual & Wednesday & 1599.3807\\\\\n",
       "\t member & Wednesday &  738.5552\\\\\n",
       "\t casual & Thursday  & 1662.4429\\\\\n",
       "\t member & Thursday  &  746.5689\\\\\n",
       "\t casual & Friday    & 1726.7647\\\\\n",
       "\t member & Friday    &  766.9394\\\\\n",
       "\t casual & Saturday  & 2010.3801\\\\\n",
       "\t member & Saturday  &  877.4190\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 14 × 3\n",
       "\n",
       "| bike_trip_data_v2$member_casual &lt;chr&gt; | bike_trip_data_v2$day_of_week &lt;ord&gt; | bike_trip_data_v2$ride_length &lt;dbl&gt; |\n",
       "|---|---|---|\n",
       "| casual | Sunday    | 2120.6685 |\n",
       "| member | Sunday    |  887.6333 |\n",
       "| casual | Monday    | 1831.6798 |\n",
       "| member | Monday    |  758.7213 |\n",
       "| casual | Tuesday   | 1574.5248 |\n",
       "| member | Tuesday   |  736.7175 |\n",
       "| casual | Wednesday | 1599.3807 |\n",
       "| member | Wednesday |  738.5552 |\n",
       "| casual | Thursday  | 1662.4429 |\n",
       "| member | Thursday  |  746.5689 |\n",
       "| casual | Friday    | 1726.7647 |\n",
       "| member | Friday    |  766.9394 |\n",
       "| casual | Saturday  | 2010.3801 |\n",
       "| member | Saturday  |  877.4190 |\n",
       "\n"
      ],
      "text/plain": [
       "   bike_trip_data_v2$member_casual bike_trip_data_v2$day_of_week\n",
       "1  casual                          Sunday                       \n",
       "2  member                          Sunday                       \n",
       "3  casual                          Monday                       \n",
       "4  member                          Monday                       \n",
       "5  casual                          Tuesday                      \n",
       "6  member                          Tuesday                      \n",
       "7  casual                          Wednesday                    \n",
       "8  member                          Wednesday                    \n",
       "9  casual                          Thursday                     \n",
       "10 member                          Thursday                     \n",
       "11 casual                          Friday                       \n",
       "12 member                          Friday                       \n",
       "13 casual                          Saturday                     \n",
       "14 member                          Saturday                     \n",
       "   bike_trip_data_v2$ride_length\n",
       "1  2120.6685                    \n",
       "2   887.6333                    \n",
       "3  1831.6798                    \n",
       "4   758.7213                    \n",
       "5  1574.5248                    \n",
       "6   736.7175                    \n",
       "7  1599.3807                    \n",
       "8   738.5552                    \n",
       "9  1662.4429                    \n",
       "10  746.5689                    \n",
       "11 1726.7647                    \n",
       "12  766.9394                    \n",
       "13 2010.3801                    \n",
       "14  877.4190                    "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Now, let's run the average ride time by each day for members vs casual users\n",
    "\n",
    "aggregate(bike_trip_data_v2$ride_length ~ bike_trip_data_v2$member_casual + bike_trip_data_v2$day_of_week, FUN = mean)\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "3a043766",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:11:20.058613Z",
     "iopub.status.busy": "2022-07-02T19:11:20.057009Z",
     "iopub.status.idle": "2022-07-02T19:11:36.950946Z",
     "shell.execute_reply": "2022-07-02T19:11:36.949264Z"
    },
    "papermill": {
     "duration": 16.914627,
     "end_time": "2022-07-02T19:11:36.953635",
     "exception": false,
     "start_time": "2022-07-02T19:11:20.039008",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A grouped_df: 14 × 4</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>member_casual</th><th scope=col>weekday</th><th scope=col>number_of_rides</th><th scope=col>average_duration</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;ord&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>casual</td><td>Sun</td><td>470157</td><td>2120.6685</td></tr>\n",
       "\t<tr><td>casual</td><td>Mon</td><td>302073</td><td>1831.6798</td></tr>\n",
       "\t<tr><td>casual</td><td>Tue</td><td>287018</td><td>1574.5248</td></tr>\n",
       "\t<tr><td>casual</td><td>Wed</td><td>285769</td><td>1599.3807</td></tr>\n",
       "\t<tr><td>casual</td><td>Thu</td><td>308614</td><td>1662.4429</td></tr>\n",
       "\t<tr><td>casual</td><td>Fri</td><td>360007</td><td>1726.7647</td></tr>\n",
       "\t<tr><td>casual</td><td>Sat</td><td>546158</td><td>2010.3801</td></tr>\n",
       "\t<tr><td>member</td><td>Sun</td><td>394686</td><td> 887.6333</td></tr>\n",
       "\t<tr><td>member</td><td>Mon</td><td>466109</td><td> 758.7213</td></tr>\n",
       "\t<tr><td>member</td><td>Tue</td><td>524804</td><td> 736.7175</td></tr>\n",
       "\t<tr><td>member</td><td>Wed</td><td>512600</td><td> 738.5552</td></tr>\n",
       "\t<tr><td>member</td><td>Thu</td><td>501807</td><td> 746.5689</td></tr>\n",
       "\t<tr><td>member</td><td>Fri</td><td>459798</td><td> 766.9394</td></tr>\n",
       "\t<tr><td>member</td><td>Sat</td><td>441037</td><td> 877.4190</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A grouped\\_df: 14 × 4\n",
       "\\begin{tabular}{llll}\n",
       " member\\_casual & weekday & number\\_of\\_rides & average\\_duration\\\\\n",
       " <chr> & <ord> & <int> & <dbl>\\\\\n",
       "\\hline\n",
       "\t casual & Sun & 470157 & 2120.6685\\\\\n",
       "\t casual & Mon & 302073 & 1831.6798\\\\\n",
       "\t casual & Tue & 287018 & 1574.5248\\\\\n",
       "\t casual & Wed & 285769 & 1599.3807\\\\\n",
       "\t casual & Thu & 308614 & 1662.4429\\\\\n",
       "\t casual & Fri & 360007 & 1726.7647\\\\\n",
       "\t casual & Sat & 546158 & 2010.3801\\\\\n",
       "\t member & Sun & 394686 &  887.6333\\\\\n",
       "\t member & Mon & 466109 &  758.7213\\\\\n",
       "\t member & Tue & 524804 &  736.7175\\\\\n",
       "\t member & Wed & 512600 &  738.5552\\\\\n",
       "\t member & Thu & 501807 &  746.5689\\\\\n",
       "\t member & Fri & 459798 &  766.9394\\\\\n",
       "\t member & Sat & 441037 &  877.4190\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A grouped_df: 14 × 4\n",
       "\n",
       "| member_casual &lt;chr&gt; | weekday &lt;ord&gt; | number_of_rides &lt;int&gt; | average_duration &lt;dbl&gt; |\n",
       "|---|---|---|---|\n",
       "| casual | Sun | 470157 | 2120.6685 |\n",
       "| casual | Mon | 302073 | 1831.6798 |\n",
       "| casual | Tue | 287018 | 1574.5248 |\n",
       "| casual | Wed | 285769 | 1599.3807 |\n",
       "| casual | Thu | 308614 | 1662.4429 |\n",
       "| casual | Fri | 360007 | 1726.7647 |\n",
       "| casual | Sat | 546158 | 2010.3801 |\n",
       "| member | Sun | 394686 |  887.6333 |\n",
       "| member | Mon | 466109 |  758.7213 |\n",
       "| member | Tue | 524804 |  736.7175 |\n",
       "| member | Wed | 512600 |  738.5552 |\n",
       "| member | Thu | 501807 |  746.5689 |\n",
       "| member | Fri | 459798 |  766.9394 |\n",
       "| member | Sat | 441037 |  877.4190 |\n",
       "\n"
      ],
      "text/plain": [
       "   member_casual weekday number_of_rides average_duration\n",
       "1  casual        Sun     470157          2120.6685       \n",
       "2  casual        Mon     302073          1831.6798       \n",
       "3  casual        Tue     287018          1574.5248       \n",
       "4  casual        Wed     285769          1599.3807       \n",
       "5  casual        Thu     308614          1662.4429       \n",
       "6  casual        Fri     360007          1726.7647       \n",
       "7  casual        Sat     546158          2010.3801       \n",
       "8  member        Sun     394686           887.6333       \n",
       "9  member        Mon     466109           758.7213       \n",
       "10 member        Tue     524804           736.7175       \n",
       "11 member        Wed     512600           738.5552       \n",
       "12 member        Thu     501807           746.5689       \n",
       "13 member        Fri     459798           766.9394       \n",
       "14 member        Sat     441037           877.4190       "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Analyze ridership data by type and weekday\n",
    "\n",
    "bike_trip_data_v2 %>% \n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>%            \n",
    "  group_by(member_casual, weekday) %>%                            \n",
    "  summarise(number_of_rides = n(),average_duration = mean(ride_length)) %>%           \n",
    "  arrange(member_casual, weekday)                                \n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "237c5daa",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:11:36.991446Z",
     "iopub.status.busy": "2022-07-02T19:11:36.989214Z",
     "iopub.status.idle": "2022-07-02T19:11:53.319777Z",
     "shell.execute_reply": "2022-07-02T19:11:53.317175Z"
    },
    "papermill": {
     "duration": 16.352351,
     "end_time": "2022-07-02T19:11:53.322854",
     "exception": false,
     "start_time": "2022-07-02T19:11:36.970503",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "image/png": "iVBORw0KGgoAAAANSUhEUgAAA0gAAANICAIAAAByhViMAAAABmJLR0QA/wD/AP+gvaeTAAAg\nAElEQVR4nOzdd2DU5f3A8eeyCQESQEEFB0NREUXrT60D96RuAUWtOHDgqltxUGfVKoiiWOuq\nWkXFgYsWB07qQK0TpSKCoDICyMq+3x9RpBXDAckdPnm9/rr73uX5fp6E8c7l7pJIJpMBAIBf\nv6xMDwAAQP0QdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkcjJ9AAZkEwm586d\nm+kpftKkSZO8vLyqqqqFCxdmepY0yc/PLygoqKmpmT9/fqZnSZPc3NzCwsIQwrx58zI9S5pk\nZ2cXFRWFEObPn19TU5PpcdIhkUg0b948hLBw4cKqqqpMj5MmzZs3TyQSixcvrqioyPQsadKs\nWbOsrKzy8vKysrJMz/JfSkpKMj0CmddIw666ujrTU/yXrKysRCKxuk3VcJLJZFZWVgih8Ww5\nJyensW05kUjUbrmmpqaR7DorK6uxbTmEkJ2dHVbLf1cbTu2f7Ua1ZX5F/CgWACASwg4AIBLC\nDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACAS\nwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAg\nEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEjmZHgAAVlWz\n6y9P27mqQqgKIVz2p7SdEVLnETsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASORkegBoLBJjX0/zGWd2\n3SjNZwQgszxiBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEImcTA8ARCsx9vU0n3Fm143SfEaA1YpH7AAA\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\n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\nFZvse+kZF7/3yW3b1Y689Im+e6e09kLF/H/VsewqSvU5dqn4+qvJ9bgaAPBrkVPQadAmLSfe\n9/sXvv3piWIPDjjg8MMPn7KyrbFg+q0XPTPpx2vVfz/ngAXVNQdct339nqv5ehduXpT35unn\nfFn2Q4dVzBt39E13PP3WmlWLJlQnky232GrJnRd988YN0+aHkAwhLPzutm233bbXn376HQ3r\n/2brEELVwqoQQmF2VlnpM7N+fMpg2ex/nfLitNrLdS+7ivymVwCgHpz57K13bNh3n45dD+qz\n/1adW3704oj7xny+2TH3HbXmSj5il79GwZ/23+Sjvsdu3bHZey89/PjLk9vvdcWw7drU77kS\n2S2evP+UzgfdtFmnHv2O3Ktt7tzH7xj+TXXTYY8eU7hGwe6tTnnp+p6n5p6zVbvCSR//66/D\nR3VsW1Ax9d2hDzxybK9Bu6/xlxeu2GnfSf223bRDzdzJT/z1ruzcVoOu7h5C2P+oDf945dub\n73r0eUfuWvnthHtuvOm71nnh66oQQuEafepY9rjDD13eyHWpz0fsAIBGq2jdXh988PSxe677\nymN3XnLFTW/PbHnZHc+9e9eRK73gNkPeuOOSo6e+9vjVVw557ctmx158x0fPDEw0wLnWO2Dw\np8/etluHeX+7+YorBt+d3PR3977y2UkbFoesgifee+rIXdd74ubLzrz4z699XnPHO5OeeOSS\ndZtVnHvSgHnJZqM+fP7Uw3b4+LkHrrjoghvveLJ4hyMefeuzI9oVhRC6/3HsLWcd3mzqC+ee\nfPy5g66fu1mffz7c44fz1bns3KqaumZdnkQyWQ+P+9Xq2CT3i8WV9bVaw6mpqSktLV3u3dL5\ni1ML0v6LU2d23ejnBxvhltMmPz+/+fgP0nzSzG45Jyen5P2P03zSjP/BDmn/s23LtRrhln+u\ndevWDT0JK6Gm/PuvZ1at265lek7nR7EAAA0lK7/5uu3SdzphBwBEa/LjPbsf+3odd8hv0ePb\nyU+kbZ6GJuwAgGitf9DTcw7K9BBp5MUTAACREHYAAJEQdgAAkajrOXa7bt51g1vG3LnjWiGE\njTfe+PB/vHXpus3quP+gIUPreTpoYGl9i4S0v8MLAI1NXWE3/T+fT7z6jtcu3Ss3K0yYMOGD\nt99885tlh90222wTQjjqxJMbZEYAAFJQV9jdduoOu1532Y6jL6u9OvLQPUb+wj3r8V2OgQbl\n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\nIrto5+KCSfe809DTAACw0lL8jRGJh56+ouK5I4+54t7vFlY17EQAAKyUVJ9jd+gFT7ZZK/fe\nS4/522XHtWzbtkn2f72AYurUqQ0wGwAAKyDVsGvdunXr1ruvt0WDDgMAwMpLNewef/zxBp0D\nAIBVlOJz7AAAWN0JOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBI5KTnNMmqOY/fcftzb/x7dlnWWu0773/USXt1b7uyi9WMfejWp155d+r87C5d/++Y0/p1\nKMwJIXw3buAJ13y49P2OvfvhA1sVrPLsAAC/DmkKu39efc4DnzQ/pv/pXdZu+sELD946aMDi\nW+49sH3RSiw1aeTFg0d8deSAU48tqXrm9mED/1DxwO0DskKY+/7cJq1+d8YJmy6553rNcutv\nBwAAq7t0hF11+dTh42f1uPrPv9u0JITQuctm37zV+4lbPzrwmm1XeK1kxY0jPu14+J8P271j\nCKHTdYnDjr7ugWnHHLVO0xmffF+8yW9/+9tNl7sGAECU0vEcu+qyyettsMG+HZr/eCDRvUV+\n5dwFIYRkVemjw/90+on9DunV97QLr31hwpylPzCZLJ88eerSR8rnvTKlrHqPPdapvZpfvEP3\norzxY78NIbz/fXlJ9+Lqxd9/O2NusuE3BQCwuknHI3Z5LXYcMmTHJVcrF0y4a/qC9fptFEK4\n78IzRy/etP8JZ7Vvnpgw7pmhF5xYfes9e65dWHvP6rIvzzzrmiceu3fJx1Ys/CCEsEnhTz9j\n3bgwZ/QH80Lf8N6CyuRrQ3vdPKEymcxpusZeR5xx4u+6LbnbjTfe+PLLL9debtGixd13373c\nsatWadOru5KSkp8ftOXI2HItW46MLS/TnDlzlnsfGoM0Pcduia/eeXboTXdVdthn4N7tymY/\nOfLzeVf9/ayuTXNDCB037Fr9Zt+Hbvt4zyu2/qUPrylfGEJolfPTA42tc7OrFpRVV0xbkJ27\nfuvfXvvA5cXJ+W8+e9f1d1yc3/lvx3Qprr1baWnptGnTai8vWrQoOzt7uaPG/c/EMj8DthwZ\nW65ly5GxZahD+sKuYs5nd9089Ln3SnscevJVR+xakEjM+vrdZDJ50eGHLH23plXTQnLLsvLK\n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\nQgjRxP8ATqXQQxb3bZ8AAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Let's visualize the number of rides by rider type\n",
    "\n",
    "par(mfrow=c(2,2))\n",
    "\n",
    "bike_trip_data_v2 %>% \n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>% \n",
    "  group_by(member_casual, weekday) %>% \n",
    "  summarise(number_of_rides = n(),average_duration = mean(ride_length)) %>% \n",
    "  arrange(member_casual, weekday)  %>% \n",
    "  ggplot(aes(x = weekday, y = number_of_rides, fill = member_casual)) +\n",
    "  geom_col(position = \"dodge\")\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "f661f71e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:11:53.360944Z",
     "iopub.status.busy": "2022-07-02T19:11:53.359298Z",
     "iopub.status.idle": "2022-07-02T19:12:10.273052Z",
     "shell.execute_reply": "2022-07-02T19:12:10.271111Z"
    },
    "papermill": {
     "duration": 16.93513,
     "end_time": "2022-07-02T19:12:10.275459",
     "exception": false,
     "start_time": "2022-07-02T19:11:53.340329",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\u001b[1m\u001b[22m`summarise()` has grouped output by 'member_casual'. You can override using the\n",
      "`.groups` argument.\n"
     ]
    },
    {
     "data": {
      "image/png": "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\nIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewA\nACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACKRm+0FkAXNLxmV\nyekqQsj789hMzggATZMzdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACR\nEHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACRyM32AhpQmzZtVnibygysY2nF\nxcVFRUUZn3Ypmd91Tk5OOndHfFq0aJHtJWRUIpEIIRQUFOTn52d7LVnQNB/kzZo1a9asWXbX\nkPnfaXl5eY3t7p41a1a2l0CjEHPYzZ07d4W3yXxhlZeXl5eXZ3zapWR+16lUat68eRmfNmty\ncnLqkm7hwoXV1dXZXk7mlJSU5ObmVlZWlpWVZXstmZOfn19cXBzS+50Tk9LS0hDCokWLKisz\nX1ZLyfzvtOrq6gULFmR8WlixmMOucf4HNZVKNc6FNbQmteucnO+e5FBTU9OkNp5KpUIItbW1\nTWrXyWSy7kKT2vViTfN3WlN7kPML4jl2AACREHYAAJEQdgAAkRB2AACREHYAAJGI+VWxAE1N\n80tGZWyuirr/+eMFGZsRWCFn7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHs\nAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh7AAAIiHsAAAiIewAACIh\n7AAAIiHsAAAikZvtBQCses0vGZXJ6SpCKLjoykzOCLBMztgBAERC2AEARELYAQBEQtgBAERC\n2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBEQtgBAERC2AEARELYAQBE\nQtgBAERC2AEARELYAQBEQtgBAERC2AEARCI32wsAGlbzS0ZlbK7aECpCCKMuydiMACzJGTsA\n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\ndaeC7wLug0XVLbcr/anxxd+++eabb7755nWXU6nU7NmzVzhj9L8OysvLfzzYNHcdmurG7TpK\nHuRLapq7hmXK5osn5rx/9RFHDvuqMvX9QOqp6WWlPdYrLN2pfX7y0Wdn1I1WLXz9pfmVm+66\n5k+NZ2PtAACNTjbDrkXnAW3Kvh4+8vqX35rywduvjx97+tMLmx915HohkX/q/t0/vGXk469O\n+fLjt24657LidrsM6ljyk+MAAGT3T7E5uW3Pu/pPN193+5Wjzy5PNu/crefpY0b2LskLIXQd\nMPq4irHjx5wzqzzRZeM+o0cNrSvQnxoHACDLz7EraLXhMWdecMyPv5BI9j3slL6HpT0OANDk\nOeEFABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEH\nABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlh\nBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJ\nYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQ\nCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcA\nEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQCWEHABAJYQcAEAlhBwAQidxs\nL6AB5ebGvLs0Nc0fQtPcdWiqG7frJqVpbjydXVdXV2dgJTR+Mf8Ladmy5QpvU5mBdWTVMn8I\nTXPXoalu3K6j5EG+pKa56x+YNWtWBlZC4xdz2KXzKG+egXVk1TJ/CE1z16Gpbtyuo+RBvqSm\nuWtYJs+xAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLAD\nAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISw\nAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiE\nsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCI\nhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMAiISwAwCIhLADAIiEsAMA\niISwAwCIRG62F1BfqUnjr3nw6demzU9277nF4BOGdC7+xW0BAKBB/MLO2H084ewxd76w1X5D\nzz1pUMlHE0ecfH0q20sCAGgkflFhV1t5+Z3vdjlo1AG7br3hZtufePHxC7989PYvFmZ7WcD/\nt3ffAU2c/x/AP5fLZiWEPbRIURRUVOr4qnWvtipaVBQFV+1P1DqrIm4ctc4KWicObMVR/dpa\nR7W21bq+tVbrwFU3KCBLdtb9/ghFtIK2hRw53q+/7p7ncnyeu3B5J5e7AABAlWBJwa4o+/j9\nQkOnTu6mWZmqVSNr6a8/Pua3KgAAAIAqwpK+oKbN+52I6iklJS11leJDv2dTaPFsQkLChQsX\nTNNKpXLKlClmr7HKsbGx4bsEHlTPUVN1HThGXa1Uz4G/zqhzcnLMUAlUfZYU7IxFeUSkET/7\nlNFBwupzC0tmL1++fPToUdO0Wq2eOXPmK9dZVNFFVjUymeyvjdVz1FRdB45RCxKe5KVVz1G/\nAMEOTCwp2ImkCiLK1ButWdbUkq4zsCppyQL+/v56vd40rVQqi4pe45997uKKL7QMUqmUYxiD\nwVBSpBm8fCOYcdQsy3JiMcdxWq3WbH+0zF1vroEzDCOVSjkinU5nNJrvCh/ed7dEIuFEIqPR\nqNPpzPZHeR+1SCTiJJIyK6kcvD/JiUgmk3FEer3eYDCY7Y/yvrvFYjHHslXiSQ7wMpYU7CRW\n9YmOXy/Qe8qKg93NAr1dK1XJAiEhISEhIaZpo9GYkZHBQ5VlU6vVLMsWFRXl5+fzXYv5KBQK\nsVjMcVy1ejcpEons7e2JKD8/35xHf97Z2tpKpVKdTletdrdMJpNIE3sjWQAAE9JJREFUJFT9\nPjIxfYxUWFhYWFj4yoUFw9rammVZg8FQ3XY3WApLunhCrmrnJmUP/5xqmtXlXfhfjrZxRxd+\n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\nAAAASUVORK5CYII="
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Let's create a visualization for average duration\n",
    "\n",
    "bike_trip_data_v2 %>% \n",
    "  mutate(weekday = wday(started_at, label = TRUE)) %>% \n",
    "  group_by(member_casual, weekday) %>% \n",
    "  summarise(number_of_rides = n(),average_duration = mean(ride_length)) %>% \n",
    "  arrange(member_casual, weekday)  %>% \n",
    "  ggplot(aes(x = weekday, y = average_duration, fill = member_casual)) +\n",
    "  geom_col(position = \"dodge\")\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "9cac1c5f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2022-07-02T19:12:10.315473Z",
     "iopub.status.busy": "2022-07-02T19:12:10.313750Z",
     "iopub.status.idle": "2022-07-02T19:12:34.457241Z",
     "shell.execute_reply": "2022-07-02T19:12:34.454737Z"
    },
    "papermill": {
     "duration": 24.167683,
     "end_time": "2022-07-02T19:12:34.461296",
     "exception": false,
     "start_time": "2022-07-02T19:12:10.293613",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nCYB2KOygdIl86Yo5zyZ9IAAAAGUPDsUCAAAAGAQKOwAAAACDwKHYwtLS0mLcy7IsEQmCEHux\nQhiGYRhGb4iW8UTkcDj0hhCRzWZTFCXavYE4eiw+oijGMXssy8YRpT3E4/FEu6vIVauJZDab\nTSaT9hGqUZIk6Q3heT5pGRtH+qWmpuoNISKr1WqxWOiykzPGZqqzF0f66Zo9p9MZ7S5RFM1m\nc4wVqX+kpKTEePJGDLTb7bpCOI4jIpPJFEf6iaKoN4TjOL1zHt/znS6k3+W/xMVYu7oui8US\n49EMx7Isx3HaXyKysrK0dw4GhsKuMJfLFeNek8kkCEIwGHS73dr7FARBEITYPYeHqM9nXVEM\nw9hsNrfbrf0lWw0hIq/XGwhEfXHT8cKcAHonXBRFSZIURdE1exzHWSwW7SGBQMBqtUa8q8hV\n22w2hmH8fr/P59M+QrPZLMuy1+vVHqJmrCzLetNPFEVdITzPq29acaSfrhAistvtROTz+fx+\nP112csbYTLPZzPN8HOnHcZz2kGAw6u/zBQKBGA83y7JqBno8nhidhLPZbHpDrFYry7J6M9Zk\nMimKoitjJUkSRVFvxvI8L0nS5WTs5b/ExVh7oYzVyGKxBAIBXRMOQCjswsV+DVI/eup9c2UY\nhuM4XSFEpBZ2uqLUD7terzeOwi72S3aJF3Z650Et7HRF8TxvsVj0PkwRFblqq9XKMEzst+1w\noijqnQr1Q4XejCUinud1hSiKor5NxpF+Pp9PlmXt61LfJv1+vzrCy0zOGJup7p2KI/0YhimW\nRIr9wHEcpxZ2Pp8vxqeycDabze/36y0ySP9UqCWa3qchaXgGRVyXrhBZltWMVdPv8l/iYqxd\n/SCn9/luMpn0hgAQCjsIh59UBwAAKKPw5QkAAAAAg0BhBwAAAGAQKOwAAAAADAKFHQAAAIBB\noLADAAAAMAgUdgAAAAAGgcudAAAAXK6IF4rKmzgz+SOBcg577AAAAAAMAoUdAAAAgEGgsAMA\nAAAwCJxjBwAGZOpyT3ij5+O3kj8SAIBkQmEHZcHMifawNpyVDAAAUAgOxQIAAAAYBAo7AAAA\nAINAYQcAAABgECjsAAAAAAyiVHx54tQP04Y/9b+CLcPWbbo7w0Qkf71x5ebtPx/L4xo1bTlk\n9NC6FnXAxdUOAAAAYBylor7J3p1tzuj+6PAmoZZadoGIjrw7fclbfw0YOWpYWuCj1SumjfVt\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "#Check for peak time for bike usage between member vs casual\n",
    "\n",
    "hour_data <- bike_trip_data_v2\n",
    "hour_data$start_hour <- as.numeric(format(strptime(bike_trip_data_v2$started_at,\"%Y-%m-%d %H:%M:%OS\"),'%H'))\n",
    "ggplot(data = hour_data) + \n",
    "  geom_bar(mapping = aes(x = start_hour, fill = member_casual), stat = 'count') + \n",
    "  facet_wrap(~factor(day_of_week)) +\n",
    "  labs(title = \"bike usage by starting hour\", x = \"starting hour\") + \n",
    "  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust=1)) \n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "d9161d77",
   "metadata": {
    "papermill": {
     "duration": 0.017982,
     "end_time": "2022-07-02T19:12:34.498026",
     "exception": false,
     "start_time": "2022-07-02T19:12:34.480044",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **SHARE**\n",
    "\n",
    "## Supporting visualizations and key findings\n",
    "\n",
    "## Tableau Cylistic Bike Share Dashboard\n",
    "\n",
    "https://public.tableau.com/app/profile/kwame.owusu.baah/viz/CyclisticBikeShareDashBoard/CyclisticBikeShareDashboard\n",
    "\n",
    "\n",
    "## Tableau Cyclistic Bike Share Story\n",
    "\n",
    "https://public.tableau.com/app/profile/kwame.owusu.baah/viz/CyclisticBikeShare_16566198183380/CyclisticBikeShare\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7d2d1628",
   "metadata": {
    "papermill": {
     "duration": 0.017878,
     "end_time": "2022-07-02T19:12:34.533871",
     "exception": false,
     "start_time": "2022-07-02T19:12:34.515993",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## **A summary of your analysis**\n",
    "\n",
    "* Casual riders ride more so in the warmer months of Chicago, summer season. That is June, July and August. The used the Cyclistic’s bike services more than the Registered annual members.\n",
    "\n",
    "* Casual riders ride more during the weekends, that is on Saturdays and Sundays whilst the Registered annual members ride more during the weekdays from Monday to Friday which are typical days of work.\n",
    "\n",
    "* Casual riders ride for longer trips or distances that the Registered annual members.\n",
    "\n",
    "* Most popular station for casual riders are Streeter Dr & Grand Ave, Millennium Park, Michigan Ave & Oak St, Wells St & Concord Ln and Clark St & Elm St.\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ee8816c9",
   "metadata": {
    "papermill": {
     "duration": 0.018001,
     "end_time": "2022-07-02T19:12:34.569487",
     "exception": false,
     "start_time": "2022-07-02T19:12:34.551486",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# **ACT**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b48a69e5",
   "metadata": {
    "papermill": {
     "duration": 0.018028,
     "end_time": "2022-07-02T19:12:34.605421",
     "exception": false,
     "start_time": "2022-07-02T19:12:34.587393",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "## Recommendations based on the analysis\n",
    "\n",
    "* Marketing campaigns and promotions should be concentrated mostly at the Top 5 popular stations where the Casual riders mostly use, namely Streeter Dr & Grand Ave, Millennium Park, Michigan Ave & Oak St, Wells St & Concord Ln and Clark St & Elm St.\n",
    "\n",
    "* Marketing campaigns and promotions should be from March to August. Increasing marketing campaigns during springs through to the end of the summer which will be an incentive for casual who plan to ride more often during the summer. And also the Marketing campaigns and promotions should target casual members based on their prime usage periods which is mostly weekends and summer.\n",
    "\n",
    "* Design new Point-award incentive system and incentives for riders who ride for long trips or distance in a form membership discounts when they are renewing their annual membership\n",
    "\n",
    "\n"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.0.5"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 363.849233,
   "end_time": "2022-07-02T19:12:35.047117",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2022-07-02T19:06:31.197884",
   "version": "2.3.4"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}

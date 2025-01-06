# YouTube Data Analysis with SQL  

## Project Description  
This project involves analyzing data from an online video-sharing platform like YouTube, which hosts tens of thousands of channels and millions of users. The goal is to derive meaningful insights into the type of content that drives user engagement, user growth, and other key metrics.  

## Database Overview  
The sample database consists of the following tables:  
- **channel_user**: Contains data about subscribers to each channel.  
- **user_likes**: Tracks likes and dislikes on videos by users.  
- **video_genre**: Maps videos to their corresponding genres.  

### Sample Data  
#### channel_user  
| channel_id | user_id | subscribed_datetime     |  
|------------|---------|-------------------------|  
| 100        | 1       | 2020-12-10 10:30:45    |  
| 100        | 7       | 2020-10-10 11:30:45    |  

#### user_likes  
| user_id | video_id | reaction_type | reacted_at          |  
|---------|----------|---------------|---------------------|  
| 1       | 10       | LIKE          | 2020-12-10 10:30:45|  
| 7       | 10       | DISLIKE       | 2020-10-10 11:30:45|  

#### video_genre  
| video_id | genre_id |  
|----------|----------|  
| 10       | 201      |  
| 10       | 202      |  

## Questions and SQL Queries  

### 1. Get all the videos with more than 1 lakh views.  
- **Sorting**: Alphabetical order of video name.  
- **Output Format**:  
  | video_id | name | duration_in_secs | published_datetime | no_of_views | channel_id |  
  |----------|------|------------------|--------------------|-------------|------------|  

### 2. Get videos from TEDx channel (id=353) with more than 50 thousand views.  
- **Sorting**: Descending by `no_of_views`, ascending by `videoname`.  
- **Output Format**:  
  | video_id | name | duration_in_secs | no_of_views |  

### 3. Get the top 10 most viewed videos till date.  
- **Sorting**: Descending by `no_of_views`, then by the most recent `published_datetime`.  
- **Output Format**:  
  | name | channel_id | no_of_views |  

### 4. Get all the recent movie trailers that have more than 1 lakh views.  
- **Criteria**: Video name contains "trailer".  
- **Sorting**: Descending by `no_of_views`, then by `published_datetime`.  
- **Output Format**:  
  | name | channel_id | no_of_views | published_datetime |  

### 5. Get all the videos that are released in the year 2018.  
- **Sorting**: Descending by `published_datetime`, then alphabetical order of `name`.  
- **Output Format**:  
  | video_id | name | duration_in_secs | no_of_views |  

### 6. Get the distinct ids of videos that belong to specific genres.  
- **Genres**: Comedy (201), Action (202), Thriller (203), Scifi (211).  
- **Sorting**: Descending by `video_id`.  
- **Output Format**:  
  | video_id |  

### 7. Get all esport videos that crossed 1 lakh views and were released between 2018 and 2020.  
- **Criteria**: Video name contains "esport".  
- **Sorting**: Descending by `no_of_views`, then by `published_datetime`.  
- **Output Format**:  
  | name | published_datetime | no_of_views |  

### 8. Get the total number of channels in the database.  
- **Output Format**:  
  | channels_count |  

### 9. Get the highest and least number of views for videos.  
- **Output Format**:  
  | highest_number_of_views | least_number_of_views |  

### 10. Get the average number of views for videos by "Single Shot" Channel (id=373).  
- **Output Format**:  
  | avg_views |  

### 11. Get the total count of premium users on the platform.  
- **Criteria**: `premium_membership = 1`.  
- **Output Format**:  
  | premium_users_count |  

### 12. Get the number of male and female premium users on the platform.  
- **Output Format**:  
  | gender | total_users |  
  |--------|-------------|  

## How to Run the Queries  
1. Clone the repository.  
   ```bash  
   git clone <repository_url>  

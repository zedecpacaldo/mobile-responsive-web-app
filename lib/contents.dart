import 'package:animated_text_kit/animated_text_kit.dart';

import 'models/ResearchComponents.dart';
import 'models/Researcher.dart';
import 'models/WebComponents.dart';
import 'models/progress.dart';

const String githubLink = 'https://github.com/gkz-upd';
const String contactUsLink = 'https://forms.gle/XSfjMtudqFnKykhw7';

const String groupDescription = "Welcome to our data science project website! We are a team of computer science students who are passionate about using data science to extract insights. Our project focuses on analyzing tweets regarding Leni Robredo's allegiance with CPP-NDA-NDF. This was very prominent during the 2022 Philippine Presidential Elections. We are interested in understanding the underlying patterns and relationships within the data from tweets, and using this knowledge to make informed decisions. Together, we make a dynamic team that brings different perspectives and skills to the project. We are excited to share our findings and insights with you and hope that our project will inspire others to explore the fascinating world of data science.";

final List<TyperAnimatedText> tweets = [
  TyperAnimatedText("'Leni Terorista'"),
  TyperAnimatedText("'tangina ni leni NPA'"),
  TyperAnimatedText("'NO TO LENI NPA TERRORIST'"),
  TyperAnimatedText("'Leni npa  at palagi lutang'"),
  TyperAnimatedText("'Si leni npa walang alam sa batas'"),
  TyperAnimatedText("'Leni. kakampink ng mga terorista.'"),
  TyperAnimatedText("'Pano si Leni NPA enabler hahahaaha.'"),
  TyperAnimatedText("'Basta si leni lapitin ng terorista 😂'"),
  TyperAnimatedText("'2023 na paps Leni ka pa din? NPA ka ata e'"),
  TyperAnimatedText("'Bobo ka kagaya ni Leni. NPA COMMUNIST ACTIVIST'"),
  TyperAnimatedText("'Fake news yan... No to leni Terorista suporters'")
];

final List<ResearchComponent> researchComponents = [
  ResearchComponent(
      title: "Project Formulation",
      description: "Research Question: Is there a significant change in the amount of fake news regarding Leni Robredo's allegiance with the CPP-NPA-NDF before and after her announcement of running for the presidency?\n\nHypothesis: There is a significant change in the amount of fake news regarding Leni’s alleged allegiance with the CPP-NPA-NDF before and after her announcement of running for the presidency.\n\nNull Hypothesis: There is NO significant change in the amount of fake news regarding Leni’s alleged allegiance with the CPP-NPA-NDF before and after her announcement of running for the presidency.\n\nAction Plan: Analyze surges in fake tweets and compare dates with publication of disinformed news",
      html: '''
      <!DOCTYPE html>
      <html>
      <head>
        <title>Research Analysis</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
            color: white;
          }
      
          h2 {
            font-weight: bold;
            font-size: 18px;
            margin-bottom: 15px;
          }
      
          p {
            font-size: 16px;
            line-height: 1.5;
            margin-bottom: 30px;
          }
        </style>
      </head>
      <body>
        <h2>Research Question:</h2>
        <p>Is there a significant change in the amount of fake news regarding Leni Robredo's allegiance with the CPP-NPA-NDF before and after her announcement of running for the presidency?</p>
        
        <h2>Hypothesis:</h2>
        <p>There is a significant change in the amount of fake news regarding Leni’s alleged allegiance with the CPP-NPA-NDF before and after her announcement of running for the presidency.</p>
      
        <h2>Null Hypothesis:</h2>
        <p>There is NO significant change in the amount of fake news regarding Leni’s alleged allegiance with the CPP-NPA-NDF before and after her announcement of running for the presidency.</p>
      
        <h2>Action Plan:</h2>
        <p>Analyze and compare surges of data before and after Leni Robredo's announcement of running for the presidency election.</p>
        
        <h2>Note:</h2>
        <p>Interval of the data set for between and after Leni Robredo's announcement of running for the presidency election is [2016, 10-07-2021] U [10-07-2021, 05-07-2022]</p>
      </body>
      </html>
      '''
  ),
  ResearchComponent(
      title: "Data Collection",
      description: "Tweets about the alleged connections of former Vice President Leni Robredo to the CPP-NPA were collected. Tweets collected were from 2016 to 2023 via manual collection and tweet scrapping. In total, 154 tweets were collected, categorized, and analyzed.",
      html: '''
      <!DOCTYPE html>
      <html>
      <head>
        <title>Research Analysis</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
            color: white;
          }
          p {
            font-size: 16px;
            line-height: 1.5;
            margin-bottom: 10px;
          }
          
          .bold {
            font-weight: bold;
          }
                
          figure {
            margin: 0;
            padding: 0;
          }
      
          img {
            max-width: 100%;
          }
      
          figcaption {
            text-align: center;
            font-style: italic;
            margin-top: 5px;
          }
          
         a {
            color: #FFC107;
            font-weight: bold;
            text-decoration: none;
          }
        </style>
      </head>
      <body>
        <p>Tweets about the <span class="bold">alleged</span> connections of former Vice President Leni Robredo to the CPP-NPA were collected. Tweets collected were from 2016 to 2023 via manual collection and tweet scraping. In total, 154 tweets were collected, categorized, and analyzed.</p>
        <figure>
          <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/dataset_sample.png?alt=media&token=aa415d51-b4a8-44b3-bae0-7c20830855dd? alt="Our Dataset">
          <figcaption>A Snapshot of our Dataset</figcaption>
        </figure>
        <a href="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/dataset.csv?alt=media&token=aa9d1317-ea40-4427-b6df-c0e53b074bb5">Get our Dataset >></a>
      </body>
      </html>
      '''
  ),
  ResearchComponent(
      title: "Data Exploration",
      description: 'Preprocessing\nHandling missing values/ensuring no missing values\nThe columns ‘Tweet Translated’, ‘Screenshot’, ‘Views’, ‘Rating’, ‘Reasoning’, and  ‘Remarks’ have a lot of null values so we decided to drop these columns. Then, for the null values in the ‘Account bio’ column, we filled it with empty strings. While, the null values in the ‘Location’ column were changed to “Unspecified”.',
      html: '''
      <!DOCTYPE html>
      <html>
      <head>
        <style>
          .right-aligned-text {
            text-align: right;
          }
          
          .title {
            margin-bottom: 20px;
          }
          
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
            color: white;
          }
          p {
            font-size: 16px;
            line-height: 1.5;
            margin-bottom: 10px;
          }
          
          .bold {
            font-weight: bold;
          }
                
          figure {
            text-align: center;
            margin: 0;
            padding: 0;
          }
      
          img {
            margin-right: 20px;
            margin-left: 20px;
            margin-top: 10px;
            margin-bottom: 10px;
            max-width: 100%
          }
      
          figcaption {
            text-align: center;
            font-style: italic;
            margin-top: 5px;
          }
          
         a {
            color: #FFC107;
            font-weight: bold;
            text-decoration: none;
          }
        </style>
      </head>
      <body>
        <div class="right-aligned-text">
          <a href="https://colab.research.google.com/drive/1z8ha-W1Wd5t0hk33vIhT-ttt0hWWtwlS?usp=sharing">Our Google Colab >></a>
        </div>
        <ul>
          <li>
            <div class="title">
              <strong>Preprocessing</strong>
            </div>
            <ul>
              <li>
                <strong>Handling missing values/ensuring no missing values</strong>
                <p>The columns ‘Tweet Translated’, ‘Screenshot’, ‘Views’, ‘Rating’, ‘Reasoning’, and  ‘Remarks’ have a lot of null values so we decided to drop these columns. Then, for the null values in the ‘Account bio’ column, we filled it with empty strings. While, the null values in the ‘Location’ column were changed to “Unspecified”.</p>
              </li>
              <li>
                <strong>Handling outliers</strong>
                <p>For our project, we kept the outliers in our data specifically for the post by a media account. This is due to the fact that the media sample demonstrates a 'bias' of engagement. Despite the fact that the account has significant followers, it received a lot less engagement compared to tweets from anonymous and new accounts.</p>
              </li>
              <li>
                <strong>Ensuring formatting consistency (date, labels, etc.)</strong>
                <p>To ensure format consistency, dates were converted into datetime data types, specifically the columns ‘Joined’ and ‘Date posted’. Also, for categorical data, we first check the unique values to see if there are misspelling and/or inconsistencies with the labels. Then, we use regex to correct these inconsistencies.</p>
              </li>
              <li>
                <strong>Normalization/standardization/scaling</strong>
                <p>This is not applicable to our study.</p>
              </li>
              <li>
                <strong>Categorical data encoding</strong>
                <p>Categorical data such as the Tweet Type, Account Type and Content type were encoded into numerical values. For tweet type, we added 7 more columns, one for each possible tweet type : Text, Reply (Quote Tweet), Reply (Comment), Image, Video, URL, and Link. The values in these columns are either 1 if it is under the corresponding tweet type and 0 if not. Similarly, for content type, we added 3 more columns: Emotional, Rational, and Transactional. The values are also either 1 or 0 depending if the tweet is categorized under the corresponding content type. Lastly, for the Account type, we set 1 for ‘Anonymous’, 2 for ‘Identified’, and 3 for ‘Media’.</p>
              </li>
            </ul>
          </li>
            <li><div class="title">
              <strong>Natural Language Processing</strong>
            </div>
            <ul>
              <li>
                <strong>Tokenization and lower casing</strong>
                <p>To effectively track what terms are most prevalent in the tweets collected about Former Vice President Leni Robredo's alleged ties with the CPP-NPA, we tokenized the 'Tweet' column of the dataset. In preparation for filtering stop words, stemming and lemmatization, before tokenization, each 'Tweet' column entry is converted to its lowercase form. This is also to avoid unnecessary repetitions for the succeeding processes.</p>
              </li>
              <li>
                <strong>Stop words removal</strong>
                <p>The tweets collected featured both English and Tagalog words. We used the nltk.corpus English stop words for filtering out for the English parts. However, for the Tagalog parts, we came out with an incomplete list of Tagalog stop words. This is incomplete as Tagalog or Filipino stop words are very numerous and a stop word can take on different forms. For example, the word "iyon" can be "iyun", "yun", "yon", "yorn", etc. </p>
              </li>
              <li>
                <strong>Stemming and lemmatization</strong>
                <p>For stemming, we used PorterStemmer from nltk.stem and applied it on each token in token list entry in the Tweet column. For Lemmatization, we used the WordNetLemmatizer for the Tweet column and applied it similarly as Stemming.</p>
              </li>
            </ul>
          </li>
          
            <li><div class="title">
              <strong>Time Series Analysis</strong>
            </div>
            <ul>
              <li>
                <strong>Interpolation</strong>
                <p>Interpolation is not applicable to our study.</p>
              </li>
              <li>
                <strong>Binning</strong>
                <p>Since we are working with the 'Date posted' field, we decided to group them by months.</p>
              </li>
            </ul>
          </li>
            <li><div class="title">
              <strong>Visualization</strong>
            </div>
            <ul>
              <li>
                <strong>Scatterplot: features distribution</strong>
                <figure>
                  <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/5.png?alt=media&token=0daaabaa-86ae-498d-b00f-b34b8ab8f9bd alt="Our Dataset">
                </figure>
              </li>
              <li>
                <strong>Heat map: features correlation</strong>
                <figure>
                  <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/4.png?alt=media&token=8f4efae3-ffca-4607-b943-499997fa710f alt="Our Dataset">
                </figure>
              </li>
              <li>
                <strong>Bar plots: features comparison</strong>
                <figure>
                  <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/2.png?alt=media&token=0e77a928-8720-4bb8-880c-85e0a7848bad alt="Our Dataset">
                </figure>
                <figure>
                  <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/3.png?alt=media&token=31e981c6-6e10-4570-8f18-3684f4fde005 alt="Our Dataset">
                </figure>
              </li>
              <li>
                <strong>Line graph: time series</strong>
                <figure>
                  <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/1.png?alt=media&token=f8eb5ca1-92f0-4773-8721-e8adc0b2cde4 alt="Our Dataset">
                </figure>
              </li>
              <li>
                <strong>Multivariate plot</strong>
                <figure>
                  <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/6.png?alt=media&token=06280b58-ca2e-4152-ba23-976db213fcec alt="Our Dataset">
                </figure>
              </li>
              <li>
                <strong>Interactive plots</strong>
                <figure>
                  <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/7.png?alt=media&token=c1dbf63c-c618-4ae1-9dce-6d02e6947d58 alt="Our Dataset">
                </figure>
                <figure>
                  <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/8.png?alt=media&token=41b77e3c-d853-4742-a621-535f35230242 alt="Our Dataset">
                </figure>
                <figure>
                  <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/9.png?alt=media&token=f841a264-6183-4cf4-baa9-62c5a33f700c alt="Our Dataset">
                </figure>
              </li>
            </ul>
          </li>
        </ul>
      </body>
      </html>
      '''
  ),
  ResearchComponent(
      title: "Data Modeling & Analysis",
      description: 'For data modeling, we are interested in relating the most engaged tweets with the behavior of the number of engagements per month. That being said, We extracted the top 5 liked, retweeted, and replied tweets and made projected them on different line plots to visually inspect their impacts to the behavior of the line. Does these high engaging posts directly influence the direction of the line? This is one of the few questions we will try to answer.',
      html:
      '''
      <!DOCTYPE html>
      <html>
      <head>
        <title>Research Analysis</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
            color: white;
          }
          p {
            font-size: 16px;
            line-height: 1.5;
            margin-bottom: 10px;
          }
          
          h2 {
            font-weight: bold;
            font-size: 18px;
            margin-bottom: 15px;
          }
          
          .bold {
            font-weight: bold;
          }
                
          figure {
            margin: 0;
            padding: 0;
          }
      
          img {
            max-width: 100%;
          }
      
          figcaption {
            text-align: center;
            font-style: italic;
            margin-top: 5px;
          }
          
         a {
            color: #FFC107;
            font-weight: bold;
            text-decoration: none;
          }
        </style>
      </head>
      <body>
        <p>For data modeling, we are interested in relating the most engaged tweets with the behavior of the number of engagements per month. That being said, We extracted the top 5 liked, retweeted, and replied tweets and made projected them on different line plots to visually inspect their impacts to the behavior of the line. Does these high engaging posts directly influence the direction of the line? This is one of the few questions we will try to answer.</p>
        <figure>
          <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/likes.png?alt=media&token=9ce2cef0-c8e6-4b64-bfa2-1b1116154d8b alt="Trends in the Sum of Likes for Tweets per Month">
        </figure>
        <p>Analyzing the time series for the tweet likes per month, we can see that 9 out of the 10 most liked tweets directly create a further increase in the total number of likes of other posts. These engaging posts could be contributing to the further increase of engagement of other posts.</p>
        <figure>
          <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/retweets.png?alt=media&token=76e68055-b95a-4755-9dde-96cff730d63f alt="Trends in the Sum of Retweets for Tweets per Month">
        </figure>
        <p>Analyzing the time series for the tweet retweets per month, we can see that all of the most retweeted tweets directly create a further increase in the total number of likes of other posts. These engaging posts could be contributing to the further increase of engagement of other posts.</p>
        <figure>
          <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/replies.png?alt=media&token=387efa5e-be29-405b-afdb-36ca470c5074 alt="Trends in the Sum of Replies for Tweets per Month">
        </figure>
        <p>Analyzing the time series for the tweet retweets per month, we can see that 9 out of 10 of the most replied tweets directly create a further increase in the total number of likes of other posts. These engaging posts could be contributing to the further increase of engagement of other posts.</p>
        <p>Overall, most of the top 10 engaging tweets positively reinforces the direction of engagement.</p><figure>
          <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/ttest.png?alt=media&token=2f98122a-e85d-42fe-971b-5e6d01a3ae53 alt="T Test and P Value">
        </figure>
        <p>The t-test shows that the t-test value is -2.355, indicating that the mean of the first group (before announcement & after elections) is smaller than the mean of the second group (After announcement until last day of the campaign period). Furthermore, the t-test shows a p-value of 0.021 (< 0.05), indicating a statistically significant difference between the two groups.</p>
        <h2>Conclusion</h2>
        
        <p>Reject Null Hypothesis. There is a significant difference in the amount of fake news tweets before Leni Robredo’s announcement of presidential candidacy and after the elections and after her announcement until the last day of the Official Campaign period. There is also an increase in engagement (likes, retweets, and replies) for tweets posted after Robredo’s announcement until the last day of the Official Campaign period, suggesting an increased public interest on Leni-related tweets and/or a massive disinformation campaign against Leni Robredo’s political pact.</p>
        
        <h2>Recommendation</h2>
        <p>Recommendations include increased number of entries, integration of sentiment analysis for determining language patterns, and identify more specific events during the election period that cause local and global spikes in the amount of disinformation tweets and their engagement.</p>
      </body>
      </html>
      '''
  ),
  ResearchComponent(
      title: "Data Communication",
      description: 'The spikes shown under the Data Analysis portion indicates increase interests from voters about Leni\'s alleged alliance with the CPP-NPA-NDF. It can also report instances of massive social media disinformation campaigns against Leni. The study however, does not identify the motive of the engagements. As such, we put this in our recommendations, as this is not within the scope of the study.',
      html: '''
       <!DOCTYPE html>
      <html>
      <head>
        <title>Research Analysis</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            margin: 20px;
            color: white;
          }
          p {
            font-size: 16px;
            line-height: 1.5;
            margin-bottom: 10px;
          }
          
          h2 {
            font-weight: bold;
            font-size: 18px;
            margin-bottom: 15px;
          }
          
          .bold {
            font-weight: bold;
          }
                
          figure {
            margin: 0;
            padding: 0;
          }
      
          img {
            max-width: 100%;
          }
      
          figcaption {
            text-align: center;
            font-style: italic;
            margin-top: 5px;
          }
          
         a {
            color: #FFC107;
            font-weight: bold;
            text-decoration: none;
          }
        </style>
      </head>
      <body>
        <p>The spikes shown under the Data Analysis portion indicates increase interests from voters about Leni\'s alleged alliance with the CPP-NPA-NDF. It can also report instances of massive social media disinformation campaigns against Leni. The study however, does not identify the motive of the engagements. As such, we put this in our recommendations, as this is not within the scope of the study.</p>
        <h2>Watch the Facts Exhibit</h2>
        <figure>
          <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/commu1.jpg?alt=media&token=f9ca46d1-9e0a-4972-b85a-2b9d1c06aa67">
        </figure>
        <figure>
          <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/commu2.png?alt=media&token=b87ca487-f566-4b4c-be15-0b774ead2119">
        </figure>
        <figure>
          <img src="https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/commu3.jpg?alt=media&token=2152428d-74c8-4727-aa36-ec521fdcec20">
        </figure>
        <figure>
          <img src=https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/commu4.jpg?alt=media&token=e70774cb-5a53-4931-b024-70a87f16dfae">
        </figure>
        <figure>
          <img src=https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/commu5.jpg?alt=media&token=63096aa4-1281-4a54-8f13-76bc4b745b7e">
        </figure>
        <figure>
          <img src=https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/commu6.jpg?alt=media&token=a97bcf07-55fb-4919-afbd-f4399d6eb1dc">
        </figure>
        <figure>
          <img src=https://firebasestorage.googleapis.com/v0/b/data-science-portfolio-4fb80.appspot.com/o/commu8.png?alt=media&token=5884ee65-4b01-4fe3-8960-806b49e4c58a">
        </figure>
      </body>
      </html>
      '''
  ),
];

final List<WebComponents> webComponents = [
  WebComponents(
      section: "Our GitHub Page",
      text: "Check our repository here\n"
  ),
  WebComponents(
      section: "Our Location",
      text: "University of the Philippines Diliman, Quezon City."
  ),
  WebComponents(
      section: "Contact Us",
      text: "Send us a message!\n"
  ),
];

final List<Researcher> researchers = [
  Researcher(
      name: "Gabriel Enriquez",
      image: 'assets/images/1.jpg',
      description: 'Gabriel Enriquez is a junior computer science student who is very interested in database management and mobile application development. He has some experience when it comes to Python programming and is currently taking on IT Project Management involving route-finding and mapping.'
  ),
  Researcher(
      name: "Mikhaela Tapia",
      image: 'assets/images/2.jpg',
      description: 'Mikhaela Tapia is a junior computer science student who is an aspiring web and mobile developer. Her experience in developing web and mobile applications uses frameworks including but not limited to ExpressJS, React and React Native. Currently, she is also trying to dive into Web3 development.'
  ),
  Researcher(
      name: "Zedec Pacaldo",
      image: 'assets/images/3.png',
      description: 'Zedec Pacaldo is a junior computer science student who is passionate in mobile and web development. He has experience in Python programming and has worked on various school projects revolving around Artificial Intelligence and Software Engineering. He built this mobile responsive website using Flutter.'
  ),
];

List<Progress> progress = [
  Progress(name: 'Project Formulation', value: 1),
  Progress(name: 'Data Collection', value: 1),
  Progress(name: 'Data Exploration', value: 1),
  Progress(name: 'Data Modeling & Analysis', value: 1),
  Progress(name: 'Data Communication', value: 1),
];
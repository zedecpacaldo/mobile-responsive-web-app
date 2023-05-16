import 'package:animated_text_kit/animated_text_kit.dart';

import 'models/ResearchComponents.dart';
import 'models/Researcher.dart';
import 'models/WebComponents.dart';
import 'models/progress.dart';

const String githubLink = 'https://github.com/gkz-upd';

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
      description: "Research Question: Which publications triggered the sudden surge in mis-/disinformation regarding Leni's alleged association with the CPP-NPA-NDF?\n\nHypothesis: The publication of Disinformed news correlates with the sudden spike in Mis/Disinformed tweets regarding Leni's alleged allegiance the CPP-NDA-NDF.\n\nNull Hypothesis: The publication of Disinformed news has NO correlation with the sudden spike in Mis/Disinformed tweets regarding Leni's alleged allegiance the CPP-NDA-NDF.\n\nAction Plan: Analyze surges in fake tweets and compare dates with publication of disinformed news"
  ),
  ResearchComponent(
      title: "Data Collection",
      description: "Tweets about the alleged connections of former Vice President Leni Robredo to the CPP-NPA were collected. Tweets collected were from 2016 to 2023 via manual collection and tweet scrapping. In total, 154 tweets were collected, categorized, and analyzed."
  ),
  ResearchComponent(
      title: "Data Exploration",
      description: ""
  ),
  ResearchComponent(
      title: "Data Modeling & Analysis",
      description: ""
  ),
  ResearchComponent(
      title: "Data Communication",
      description: ""
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
  Progress(name: 'Data Exploration', value: 0.75),
  Progress(name: 'Data Modeling & Analysis', value: 0),
  Progress(name: 'Data Communication', value: 0),
];
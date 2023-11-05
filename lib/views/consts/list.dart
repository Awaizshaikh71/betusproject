import 'package:betusproject/views/consts/team_img.dart';
import 'package:betusproject/views/scoreScreen.dart';
import 'package:flutter/material.dart';

List<String> menuList = ["Baseball", "American Football", "BasketBall"];

List<Map<dynamic, String>> imageList = [
  {'name': ' Basketball', 'path': 'assets/BasketBall.png'},
  {'name': 'Americanfootball', 'path': 'assets/AmericanFootball.png'},
  {'name': 'Baseball', 'path': 'assets/baseball.jpg'},
];

List<Map<dynamic, dynamic>> ncf = [
  {
    "team_one_logo": TeamAssets.pittsburghSteelers,
    "team_two_logo": TeamAssets.arizonaCardinals,
    "team_one": "Pittsburgh Steelers",
    "team_two": "Arizona Cardinals",
    "team_one_score": "27",
    "team_two_score": "23",
    "team_short_nm1": 'PIT',
    "team_short_nm2": 'ARI',
    "team_one_total_scores": [3, 14, 3, 7],
    "team_two_total_scores": [0, 7, 0, 16],
    "time": "4:28 AM",
    "data": "February 2, 2009"
  },
  {
    "team_one_logo": TeamAssets.newOrleansSaints,
    "team_two_logo": TeamAssets.colts,
    "team_one": "New Orleans Saints",
    "team_two": "indianapolis Colts",
    "team_one_score": "31",
    "team_two_score": "17",
    "team_short_nm1": 'NO',
    "team_short_nm2": 'IND',
    "team_one_total_scores": [0, 6, 10, 15],
    "team_two_total_scores": [10, 0, 7, 0],
    "time": "4:25 AM",
    "data": "February 8, 2010"
  },
  {
    "team_one_logo": TeamAssets.pittsburghSteelers,
    "team_two_logo": TeamAssets.greenBayPackers,
    "team_one": "New Orleans Saints",
    "team_two": "indianapolis Colts",
    "team_one_score": "25",
    "team_two_score": "31",
    "team_short_nm1": 'PIT',
    "team_short_nm2": 'GB',
    "team_one_total_scores": [0, 10, 7, 8],
    "team_two_total_scores": [14, 7, 0, 10],
    "time": "4:29 AM",
    "data": "February 7, 2011"
  },
  {
    "team_one_logo": TeamAssets.newYorkGiants,
    "team_two_logo": TeamAssets.newEnglandPatriots,
    "team_one": "New York Giants",
    "team_two": "New England Patriots",
    "team_one_score": "21",
    "team_two_score": "17",
    "team_short_nm1": 'NYG',
    "team_short_nm2": 'NE',
    "team_one_total_scores": [9, 0, 6, 6],
    "team_two_total_scores": [0, 10, 7, 0],
    "time": "4:29 AM",
    "data": "February 6, 2012"
  },
  {
    "team_one_logo": TeamAssets.baltimoreRavens,
    "team_two_logo": TeamAssets.san,
    "team_one": "Baltimore Ravens",
    "team_two": "San Francisco 49ers",
    "team_one_score": "34",
    "team_two_score": "31",
    "team_short_nm1": 'BAL',
    "team_short_nm2": 'SF',
    "team_one_total_scores": [7, 14, 7, 6],
    "team_two_total_scores": [3, 3, 17, 8],
    "time": "4:30 AM",
    "data": "February 4, 2013"
  },
  {
    "team_one_logo": TeamAssets.seattleSeahawks,
    "team_two_logo": TeamAssets.denverBroncos,
    "team_one": "Seattle Seahawks",
    "team_two": "Denver Broncos",
    "team_one_score": "43",
    "team_two_score": "8",
    "team_short_nm1": 'SEA',
    "team_short_nm2": 'DEN',
    "team_one_total_scores": [8, 14, 14, 7],
    "team_two_total_scores": [0, 0, 8, 0],
    "time": "4:25 AM",
    "data": "February 3, 2014"
  },
  {
    "team_one_logo": TeamAssets.newEnglandPatriots,
    "team_two_logo": TeamAssets.seattleSeahawks,
    "team_one": "New England Patriots",
    "team_two": "Seattle Seahawks",
    "team_one_score": "28",
    "team_two_score": "24",
    "team_short_nm1": 'NE',
    "team_short_nm2": 'SEA',
    "team_one_total_scores": [0, 14, 0, 14],
    "team_two_total_scores": [0, 14, 10, 0],
    "time": "4:30 AM",
    "data": "February 2, 2015"
  },
  {
    "team_one_logo": TeamAssets.carolinaPanthers,
    "team_two_logo": TeamAssets.denverBroncos,
    "team_one": "Carolina Panthers",
    "team_two": "Denver Broncos",
    "team_one_score": "10",
    "team_two_score": "24",
    "team_short_nm1": 'CAR',
    "team_short_nm2": 'DEN',
    "team_one_total_scores": [0, 7, 0, 3],
    "team_two_total_scores": [10, 3, 3, 8],
    "time": "4:30 AM",
    "data": "February 8, 2016"
  },
  {
    "team_one_logo": TeamAssets.newEnglandPatriots,
    "team_two_logo": TeamAssets.atlantaFalcons,
    "team_one": "New England Patriots",
    "team_two": "Atlanta Falcons",
    "team_one_score": "34",
    "team_two_score": "28",
    "team_short_nm1": 'NE',
    "team_short_nm2": 'ATL',
    "team_one_total_scores": [0, 3, 6, 19],
    "team_two_total_scores": [0, 21, 7, 0],
    "time": "4:30 AM",
    "data": "February 6, 2017"
  },
  {
    "team_one_logo": TeamAssets.philadelphiaEagles,
    "team_two_logo": TeamAssets.newEnglandPatriots,
    "team_one": "Philadelphia Eagles",
    "team_two": "New England Patriots",
    "team_one_score": "41",
    "team_two_score": "33",
    "team_short_nm1": 'PHI',
    "team_short_nm2": 'NE',
    "team_one_total_scores": [9, 13, 7, 12],
    "team_two_total_scores": [3, 9, 14, 7],
    "time": "4:30 AM",
    "data": "February 5, 2018"
  },
  {
    "team_one_logo": TeamAssets.newEnglandPatriots,
    "team_two_logo": TeamAssets.losAngelesRams,
    "team_one": "New England Patriots",
    "team_two": "Los Angeles Rams",
    "team_one_score": "13",
    "team_two_score": "3",
    "team_short_nm1": 'NE',
    "team_short_nm2": 'LAR',
    "team_one_total_scores": [0, 3, 0, 10],
    "team_two_total_scores": [0, 0, 3, 0],
    "time": "4:30 AM",
    "data": "February 4, 2019"
  },
  {
    "team_one_logo": TeamAssets.san,
    "team_two_logo": TeamAssets.kansasCityChiefs,
    "team_one": "San Francisco 49ers",
    "team_two": "Kansas City Chiefs",
    "team_one_score": "20",
    "team_two_score": "31",
    "team_short_nm1": 'SF',
    "team_short_nm2": 'KC',
    "team_one_total_scores": [3, 7, 10, 0],
    "team_two_total_scores": [7, 3, 0, 21],
    "time": "4:30 AM",
    "data": "February 3, 2020"
  },
  {
    "team_one_logo": TeamAssets.kansasCityChiefs,
    "team_two_logo": TeamAssets.tampaBayBuccaneers,
    "team_one": "Kansas City Chiefs",
    "team_two": "Tampa Bay Buccaneers",
    "team_one_score": "9",
    "team_two_score": "31",
    "team_short_nm1": 'KC',
    "team_short_nm2": 'TB',
    "team_one_total_scores": [3, 3, 3, 0],
    "team_two_total_scores": [7, 14, 10, 0],
    "time": "4:30 AM",
    "data": "February 8, 2021"
  },
  {
    "team_one_logo": TeamAssets.losAngelesRams,
    "team_two_logo": TeamAssets.cincinnatiBengals,
    "team_one": "Los Angeles Rams",
    "team_two": "Cincinnati Bengals",
    "team_one_score": "23",
    "team_two_score": "20",
    "team_short_nm1": 'LAR',
    "team_short_nm2": 'CIN',
    "team_one_total_scores": [7, 6, 3, 7],
    "team_two_total_scores": [3, 7, 10, 0],
    "time": "4:30 AM",
    "data": "February 14, 2022"
  },
  {
    "team_one_logo": TeamAssets.kansasCityChiefs,
    "team_two_logo": TeamAssets.philadelphiaEagles,
    "team_one": "Kansas City Chiefs",
    "team_two": "Philadelphia Eagles",
    "team_one_score": "38",
    "team_two_score": "35",
    "team_short_nm1": 'KC',
    "team_short_nm2": 'PHI',
    "team_one_total_scores": [7, 7, 7, 17],
    "team_two_total_scores": [7, 17, 3, 8],
    "time": "4:30 AM",
    "data": "February 13, 2023"
  },
];

final List<Widget> _pages = [
  Container(
    color: Colors.red,
  ),
  Container(
    color: Colors.blue,
  ),
  ScoreScreen()
];

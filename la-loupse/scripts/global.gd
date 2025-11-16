extends Node

var day: int = 1
var task = []
var finished = []
var chapterNum: int = 1
var chapterName = "Notre-Dame"
var destination = ""
var player_can_move = true  # so the he cant move while talking
var reading = ""


## Secrets und so
var secretsFound = 0
var outcomeCompass_firstDay = 0 
## 0 the beginning. Depending on what Jean posts at the end of the day it will 
## go up or down (results < 0 will lead to the negative ending.
## results >= 0 will lead to a positive ending 


## Chatted tracker
var chatted_to_priest = 0
var chatted_to_techBaron = 0
var chatted_to_cat = 0

## Tracking what parts of the mission are done
var notreDame_done = false
var louvre_done = false
var catacombes_done = false


## Office tasks
var read_news = false
var read_email = false

## Secrets
var secrets = [
	"skyscraper", # secret negative
	"culture",
	"priest", # secret positive
	"candle",  #secret positive
]

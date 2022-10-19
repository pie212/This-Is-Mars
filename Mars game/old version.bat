Color 04
start Menu.vbs
Echo Off
got DAY1
CLS
Echo Welcome
timeout /t 1 >nul
Echo This is Mars
timeout /t 1 >nul
Echo Game Developed by Thomas Moerkerke
timeout /t 5 >nul
CLS
Echo Menu:
ECHO What is your name?
SET /p USERNAME=Enter Your Name:
timeout /t 1 >nul
goto Difficulty

:difficulty
CLS
Echo Difficulty? (Easy, Normal, Hard)
Echo Easy == 5000kg of weight
Echo Normal == 2000kg of weight to take to mars
Echo Hard == 500kg of weight to take to mars
SET /p Difficulty=
If %Difficulty% == Easy goto Briefing
If %Difficulty% == Normal goto Briefing
If %Difficulty% == Hard goto Briefing
Echo You have typed the difficulty wrong, try again.
Timeout /t 2 >nul
CLS
goto Difficulty

:Briefing
CLS
Echo BRIEFING:
timeout /t 1 >nul
Echo MISSION 1 (FIRST CONTACT)
timeout /t 1 >nul
Echo HELLO ASTRONAUT. THIS WILL BE YOUR FIRST TRIP TO MARS!
timeout /t 2 >nul 
Echo YOU WILL BE TASKED WITH BUILING AND MAINTAING A HABITAT AND COLLECTING DATA SAMPLES FOR OUR REASERCH TEAM. 
timeout /t 2 >nul
Echo YOU WILL STAY UP FOR 1 MONTH, THEN A RETURN SHIP WILL BE ABLE TO GET YOU.
timeout /t 2 >nul
Echo YOU WILL HAVE TO PLAN ACCORDINGLY. BRING ENOUGH FOOD, WATER, AND SUPPLIES. YOU MAY ALSO CHOOSE 2 OTHER ASTRONAUTS TO COME WITH YOU THAT HAVE SPECIAL SKILLS. GOOD LUCK!
timeout /t 5 >nul
CLS
:planning
Echo Planning:
Echo Astronaut list:
Echo Bob-Technician
Echo Tom-Doctor
Echo Jeffery-Farmer
Echo Choose your astronaut:
goto selection

:selection
SET /p astro1=Astronaut 1:
if %astro1% == Bob goto selection2
if %astro1% == Tom goto selection2
if %astro1% == Jeffery goto selection2
Echo you have typed incorrect astronaut names try again
goto selection

:selection2
SET /p astro2=Astronaut 2:
if %astro2% == Bob goto planning2
if %astro2% == Tom goto planning2
if %astro2% == Jeffery goto planning2
Echo you have typed incorrect astronaut names try again
goto selection2


:planning2
if %astro2% == %astro1% goto selection2
if %astro1% == Bob Echo You have chosen Bob as your first astronaut 
if %astro1% == Tom Echo You have chosen Tom as your first astronaut 
if %astro1% == Jeffery Echo You have chosen Jeffery as your first astronaut 
if %astro2% == Bob Echo You have chosen Bob as your second astronaut 
if %astro2% == Tom Echo You have chosen Tom as your second astronaut 
if %astro2% == Jeffery Echo You have chosen Jeffery as your second astronaut
Echo Now choose what supplies you will bring:
timeout /t 1 >nul
Echo ##########################################################################################################
Echo 1 astronaut uses 2kg of food and 1L of water per day (day and night)
Echo ##########################################################################################################
goto supplies

:supplies
CLS
Echo ##Important: Values are in kg. Do not type the kg. Type 200 not 200kg##
If %Difficulty% == Easy set /a weight=5000 
If %Difficulty% == Normal set /a weight=2000
If %Difficulty% == Hard set /a weight=500
Echo Your ship can carry %weight%kg
SET /p food=Food (KG):
Set /a weight -= %food%
Echo Weight left: %weight%KG
If %weight% LSS 0  Echo Too much weight! 
If %weight% LSS 0 timeout /t 1 >nul && goto supplies
Set /p water=water (L):
set /a weight -= %water%
Echo Weight left: %weight%KG
If %weight% LSS 0  Echo Too much weight! 
If %weight% LSS 0 timeout /t 1 >nul && goto supplies
Set /p supplies=supplies (KG):
set /a weight -= %supplies%
Echo Weight left: %weight%KG
If %weight% LSS 0  Echo Too much weight! 
If %weight% LSS 0 timeout /t 1 >nul && goto supplies
set /P q=do you want change values? Y/N
if /I "%q%" EQU "Y" goto supplies
if /I "%q%" EQU "N" goto launch

:launch
Taskkill /IM "wscript.exe" /F>nul 2>&1
CLS
Color 90
Start Liftoff.vbs
type ROCKET.TXT
Echo Preparing for launch
timeout /t 3 >nul
Echo T-Minus 10 seconds
timeout /t 1 >nul
type ROCKET.TXT
CLS
type ROCKET.TXT
Echo 10
timeout /t 1 >nul
type ROCKET.TXT
CLS
type ROCKET.TXT
Echo 9
timeout /t 1 >nul
type ROCKET.TXT
CLS
type ROCKET.TXT
Echo 8
timeout /t 1 >nul
type ROCKET.TXT
CLS
type ROCKET.TXT
Echo 7
timeout /t 1 >nul
type ROCKET.TXT
CLS
type ROCKET.TXT
Echo 6
timeout /t 1 >nul
type ROCKET.TXT
CLS
type ROCKET.TXT
Echo 5
timeout /t 1 >nul
type ROCKET.TXT
CLS
type ROCKET.TXT
Echo 4
timeout /t 1 >nul
type ROCKET.TXT
CLS
type ROCKET.TXT
Echo 3
timeout /t 1 >nul
type ROCKET.TXT
CLS
type ROCKET.TXT
Echo 2
timeout /t 1 >nul
type ROCKET.TXT
Echo 1
timeout /t 2 >nul
Echo Launch
CLS
type Ignition.TXT
timeout /t 3 >nul
CLS
type ROCKET1.TXT
timeout /t 1 >nul
CLS
type ROCKET2.TXT
timeout /t 1 >nul
CLS
type ROCKET3.TXT
timeout /t 1 >nul
CLS
type ROCKET4.TXT
timeout /t 1 >nul
CLS
type ROCKET5.TXT
timeout /t 1 >nul
CLS
type ROCKET6.TXT
timeout /t 1 >nul
Taskkill /IM "wscript.exe" /F>nul 2>&1
CLS
Color 0F
type Exit1.TXT
timeout /t 1 >nul
CLS
type Exit2.TXT
timeout /t 1 >nul
CLS
type Exit3.TXT
timeout /t 1 >nul
CLS
type Exit4.TXT
CLS
Color C0
Type Landing1.TXT
timeout /t 1 >nul
CLS
type Landing2.TXT
timeout /t 1 >nul
CLS
type Landing3.TXT
timeout /t 1 >nul 
CLS
type Landing4.TXT 
Echo Welcome to mars!
set /P q=do you want to plant the U.S flag? Y/N
if /I "%q%" EQU "Y" goto flagt
goto start

:flagt
CLS
type Landing5.txt 
timeout /t 2 goto start

:start
Color 04
Set /a farm=0
set /a ironore=0
CLS
Echo ####Contact from Ground control####
set /P q=Read? Y/N
if /I "%q%" EQU "Y" Echo Welcome to Mars Astronaut! We hope your journey went well and smooth.
if /I "%q%" EQU "Y" Echo Here are some basics to get started here!
if /I "%q%" EQU "Y" Echo Every morning when a new day starts you will get a briefing on how much food/water/supplies you have left.
if /I "%q%" EQU "Y" Echo You will also be informed if anything has broken overnight and if you can fix them.
if /I "%q%" EQU "Y" Echo Good luck!
pause
CLS
goto DAY1

:DAY1
Echo DAY 1
Echo Briefing:
Echo Food: %food%KG
Echo Water: %water%L
Echo Supplies: %supplies%KG
Echo ####Disaster report####
Echo None
pause
CLS
goto Activities1

:Activities1
CLS
Echo Activities
If %farm% == 0 Echo Build Farm (1)
Echo Explore (2)
Echo Sleep (skip day) (3)
Echo Stats (4)
set /P q=
if /I "%q%" EQU "1" goto farm
if /I "%q%" EQU "2" goto explore
if /I "%q%" EQU "3" goto sleep
if /I "%q%" EQU "4" goto stats

:stats
Echo food: %food%KG
Echo water: %water%L
Echo supplies: %supplies%KG
Echo ironore: %ironore%KG
pause
goto Activities1


:farm
If %farm% == 1 goto :Activities1
Echo It will cost you 350kg of supplies to build this
set /P q=Continue? Y/N
If %supplies% LSS 350 (Echo You do not have enough supplies!) 
If %supplies% LSS 350 timeout /t 1 >nul && goto :Activities1
IF %q%==Y (Echo Working....) ELSE (goto Activities1)
Set /a supplies-=350
Echo %supplies%KG
Echo The farm will now produce 1kg food per day! If you have a farmer astronaut it will produce 5 per day!
Set /a farm=1
pause
Goto Activities1

:explore
Echo You have chosen to go exploring today!
Echo ##TIP##
Echo By exploring you can find Iron ore to make supplies. You can also build Water extracters if you find water. (1L per sol)
Echo You begin exploring...
Goto explore(loop)

:explore(loop)
set /a waterfind=%random% %%20 
set /a ironorefind=%random% %%5
If %waterfind%==10 (goto foundwater)
If %ironorefind%==3 (goto foundironore)
Echo You continue to search the vast mountainous terrain of mars!
pause
goto activities1


:foundwater
Echo you have found water!
set /P q=Build water extractor? Y/N
IF %q%==Y (Echo It will cost 50Kg supplies)
IF %q%==N goto :explore(loop)
If %supplies% LSS 50 (Echo You do not have enough supplies!) 
If %supplies% LSS 50 timeout /t 2 >nul && goto :explore(loop)
Set /a supplies -=50
Echo %supplies%
Echo You have built a water extractor! (plus 1L every day!)
pause
goto explore(loop)

:foundironore
Echo TEST
set /a ore=%random% %%30
Echo you have found %ore%KG's of iron ore!
set /a ironore+=%ore%
Echo %ironore%
pause
goto :explore(loop)

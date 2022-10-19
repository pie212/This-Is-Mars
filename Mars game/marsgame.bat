@Echo Off
Color 04
CLS
Echo Welcome
timeout /t 1 >nul
Echo This is Mars
timeout /t 1 >nul
Echo Game Developed by Thomas Moerkerke
Echo Controls:
Echo q is to go back to previous menu (only on mars for right now)
Echo Things are case sensitive, if Y/N type N or Y if y or n is typed it will not work
timeout /t 5 >nul
CLS
goto Menu

:Menu
start Menu.vbs
got Menu2

:Menu2
CLS
Echo Menu:
Echo Play game (1)
Echo Load save (2)
Echo Exit game (3)
set /P q=
if /I "%q%" EQU "1" goto Difficulty
if /I "%q%" EQU "2" goto loadsave  
if /I "%q%" EQU "3" goto gameend
pause
goto Difficulty


:loadsave
Echo Load Game
Echo Choose save slot
Echo [1]
Echo [2]
Echo [3]
set /p s=
if "%s%" EQU "1" goto load1
if "%s%" EQU "2" goto load2
if "%s%" EQU "3" goto load3

:load1
< SaveSlot1.txt ( 
  set /p dayP=
  set /p healthP=
  set /p astro1=	
  set /p astro2=
  set /p oxygenlevelP=
  set /p foodP=
  set /p waterP=	
  set /p suppliesP=
  set /p ironoreP=
  set /p waterextractorP=
  set /p disastertypeP=	
  set /p farmP=
  set /p drillP=
  set /p dprintP=
  set /p medstationP=
  set /p energyP=
  set /p radiotowerP=
  set /p dropP=
  set /p radioRP=
  set /p oxyminP=
  set /p foodminP=
  set /p waterminP=
  set /p oxymP=
  set /p foodmP=
  set /p watermP=
  set /p diffP=
)
set /a day=%dayP%
set /a health=%healthP%
set /a oxygenlevel=%oxygenlevelP%
set /a food=%foodP%
set /a water=%waterP%
set /a supplies=%suppliesP%
set /a ironore=%ironoreP%
set /a waterextractor=%waterextractorP%
set /a disastertype=%disastertypeP%
set /a farm=%farmP%
set /a drill=%drillP%
set /a dprint=%dprintP%
set /a medstation=%medstationP%
set /a energy=%energyP%
set /a radiotower=%radiotowerP%
set /a drop=%dropP%
set /a radioR=%radioRP%
set /a oxymin=%oxyminP%
set /a foodmin=%foodminP%
set /a watermin=%waterminP%
set /a oxym=%oxymP%
set /a foodm=%foodmP%
set /a waterm=%watermP%
set /a diff=diffP
Taskkill /IM "wscript.exe" /F>nul 2>&1
goto Activities

:load2
< SaveSlot2.txt ( 
  set /p dayP=
  set /p healthP=
  set /p astro1=	
  set /p astro2=
  set /p oxygenlevelP=
  set /p foodP=
  set /p waterP=	
  set /p suppliesP=
  set /p ironoreP=
  set /p waterextractorP=
  set /p disastertypeP=	
  set /p farmP=
  set /p drillP=
  set /p dprintP=
  set /p medstationP=
  set /p energyP=
  set /p radiotowerP=
  set /p dropP=
  set /p radioRP=
  set /p oxyminP=
  set /p foodminP=
  set /p waterminP=
  set /p oxymP=
  set /p foodmP=
  set /p watermP=
  set /p diffP=
)
set /a day=%dayP%
set /a health=%healthP%
set /a oxygenlevel=%oxygenlevelP%
set /a food=%foodP%
set /a water=%waterP%
set /a supplies=%suppliesP%
set /a ironore=%ironoreP%
set /a waterextractor=%waterextractorP%
set /a disastertype=%disastertypeP%
set /a farm=%farmP%
set /a drill=%drillP%
set /a dprint=%dprintP%
set /a medstation=%medstationP%
set /a energy=%energyP%
set /a radiotower=%radiotowerP%
set /a drop=%dropP%
set /a radioR=%radioRP%
set /a oxymin=%oxyminP%
set /a foodmin=%foodminP%
set /a watermin=%waterminP%
set /a oxym=%oxymP%
set /a foodm=%foodmP%
set /a waterm=%watermP%
set /a diff=diffP
Taskkill /IM "wscript.exe" /F>nul 2>&1
goto Activities

:load3
< SaveSlot3.txt ( 
  set /p dayP=
  set /p healthP=
  set /p astro1=	
  set /p astro2=
  set /p oxygenlevelP=
  set /p foodP=
  set /p waterP=	
  set /p suppliesP=
  set /p ironoreP=
  set /p waterextractorP=
  set /p disastertypeP=	
  set /p farmP=
  set /p drillP=
  set /p dprintP=
  set /p medstationP=
  set /p energyP=
  set /p radiotowerP=
  set /p dropP=
  set /p radioRP=
  set /p oxyminP=
  set /p foodminP=
  set /p waterminP=
  set /p oxymP=
  set /p foodmP=
  set /p watermP=
  set /p diffP=
)
set /a day=%dayP%
set /a health=%healthP%
set /a oxygenlevel=%oxygenlevelP%
set /a food=%foodP%
set /a water=%waterP%
set /a supplies=%suppliesP%
set /a ironore=%ironoreP%
set /a waterextractor=%waterextractorP%
set /a disastertype=%disastertypeP%
set /a farm=%farmP%
set /a drill=%drillP%
set /a dprint=%dprintP%
set /a medstation=%medstationP%
set /a energy=%energyP%
set /a radiotower=%radiotowerP%
set /a drop=%dropP%
set /a radioR=%radioRP%
set /a oxymin=%oxyminP%
set /a foodmin=%foodminP%
set /a watermin=%waterminP%
set /a oxym=%oxymP%
set /a foodm=%foodmP%
set /a waterm=%watermP%
set /a diff=diffP
Taskkill /IM "wscript.exe" /F>nul 2>&1
goto Activities

:difficulty
< GAME.txt (
	set /p gameP=
)
set /a game=%gameP%
set /a game+=1
echo %game%
 (
Echo %game%
) > Game.txt


type Achievements.txt > AR.txt

(
Type AR.txt
Echo ##############################################################################################################################
Echo Game %game%
Echo Achievements:

) > Achievements.txt
CLS
Echo Difficulty? (Easy, Normal, Hard)
Echo Easy == 5000kg of weight
Echo Normal == 2000kg of weight to take to mars
Echo Hard == 500kg of weight to take to mars
SET /p Difficulty=
If %Difficulty% == Easy set /a diff=1 && goto Briefing
If %Difficulty% == Normal set /a diff=2 && goto Briefing
If %Difficulty% == Hard set /a diff=3 && goto Briefing
If %Difficulty% == q goto Menu2
Echo You have typed the difficulty wrong, try again. 
Timeout /t 2 >nul
goto difficulty
CLS

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
Echo YOU WILL HAVE TO PLAN ACCORDINGLY. BRING ENOUGH FOOD, WATER, AND SUPPLIES. YOU MAY ALSO CHOOSE 2 OTHER ASTRONAUTS TO COME WITH YOU THAT HAVE SPECIAL SKILLS.
timeout /t 2 >nul
Echo An Astronaut consumes 4KG of food and 2L of water per day. You will be taking 2 extra astronauts with you! 
timeout /t 2 >nul
Echo So you and your crew will consume 12KG of food and 6L of water per day. GOOD LUCK! 
Echo (Press enter to continue or q to go back)
set "q=0"
set /P q= 
IF %q%== q goto Difficulty
CLS
goto planning

:planning
CLS
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
if %astro1% == q goto Briefing
if %astro2% == q goto Briefing
Echo you have typed incorrect astronaut names try again
goto selection

:selection2
SET /p astro2=Astronaut 2:
if %astro2% == Bob goto planning2
if %astro2% == Tom goto planning2
if %astro2% == Jeffery goto planning2
if %astro2% == q goto planning
if %astro2% == Q goto planning
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
msg * "Achievement: Patriot!"
type Achievements.txt > AR.txt
(
Type AR.txt
Echo Patriot!
) > Achievements.txt
pause
goto start

:start
Color 04
Set /a radiotower=0
Set /a dprint=0
Set /a drill=0
Set /a event=0
Set /a farm=0
set /a ironore=0
set /a waterextractor=0
set /a oxygenlevel=100
CLS
Echo ####Contact from Ground control####
set /P q=Read? Y/N
if /I "%q%" EQU "Y" Echo Welcome to Mars Astronaut! We hope your journey went well and smooth.
if /I "%q%" EQU "Y" Echo Here are some basics to get started here!
if /I "%q%" EQU "Y" Echo Every morning when a new day starts you will get a briefing on how much food/water/supplies you have left.
if /I "%q%" EQU "Y" Echo You will also be informed if anything has broken overnight and if you can fix them.
if /I "%q%" EQU "Y" Echo The 3D printer can be used to turn iron ore into supplies.
if /I "%q%" EQU "Y" Echo Water extractors can be built by exploring. They are not in the build tab
if /I "%q%" EQU "Y" Echo When exploring, press q to go back after seeing "you continue exploring the vast terrain of Mars"
if /I "%q%" EQU "Y" Echo Good luck!
pause
CLS
goto INFO1

:INFO1
set /a oxym=0
set /a foodm=0
set /a waterm=0
set /a oxymin+=20
set /a foodmin+=10
set /a watermin+=10
Set /a radioR=0
set /a radiotower=0
Set /a drop=0
Set /a energy=100
set /a medstation=0
set /a health=100
set /a waterextractor=0
set /a disastertype=0
set /a day=1
Echo DAY 1
Echo Briefing:
Echo health %health%
Echo oxygen level: %oxygenlevel%
Echo food: %food%KG
Echo water: %water%L
Echo supplies: %supplies%KG
Echo iron ore: %ironore%KG
Echo water extractors: %waterextractor% 
Echo ####Disaster report####
Echo None
pause
CLS
goto Activities

:Activities
if "%oxygenlevel%" EQU "0" (timeout /t 2 >nul && goto :dead)
if "%oxygenlevel%" LSS "0" (timeout /t 2 >nul && goto :dead)
CLS
Echo Activities
Echo Build (1)
Echo Fix (2)
Echo Explore (3)
Echo Sleep (skip day) (4)
Echo Stats (5)
If "%dprint%" EQU "1" ECHO 3D Printer (6)
If "%dprint%" EQU "2" ECHO 3D Printer (6)
If "%drill%" EQU "1" ECHO Drill (7)
If "%drill%" EQU "2" ECHO Drill (7)
If "%medstation%" EQU "1" ECHO Medical Station (8)
If "%medstation%" EQU "2" ECHO Medical Station (8)
If "%radiotower%" EQU "1" ECHO Radio Communications (9)
Echo Save (10)
Echo Quit (11)
set /P q=
if /I "%q%" EQU "1" goto build
if /I "%q%" EQU "2" goto fix
if /I "%q%" EQU "3" goto explore
if /I "%q%" EQU "4" goto sleep1
if /I "%q%" EQU "5" goto stats
if /I "%q%" EQU "6" goto 3dprinter
if /I "%q%" EQU "7" goto drill
if /I "%q%" EQU "8" goto medical
if /I "%q%" EQU "9" goto radio
if /I "%q%" EQU "10" goto Squit
if /I "%q%" EQU "11" goto quit
goto Activities

:medical
If %medstation% == 0 goto Activities
CLS
Echo This is the medical station
Echo You have %health% Health
Echo you need to use supplies to turn into medical supplies! [5kg supplies]
set /p q=Do you want to heal? Y/N
if "%q%" EQU "Y" (goto medicalB)
if "%q%" EQU "y" (goto medicalB)
Echo You have chosen to not heal yourself
pause
goto Activities

:medicalB
CLS
if "%health%" EQU "100" (Echo You are already at full health!) && pause && goto Activities
Echo You examine your wounds.....
timeout /t 2 >nul
Echo you have applied some bandages and taken some medicine!
if "%medstation%" EQU "1" set /a health+=10
if "%medstation%" EQU "1" set /a health+=20
if "%health%" GTR "100" set /a health=100
Echo You have healed yourself
Echo Health %health%
pause
goto Activities

:Squit
Echo Save Game
Echo Choose slot
Echo [1]
Echo [2]
Echo [3]
set /p s=
if "%s%" EQU "1" goto save1
if "%s%" EQU "2" goto save2
if "%s%" EQU "3" goto save3
if "%s%" EQU "q" goto Activities
goto Activities


:save1
break > SaveSlot1.txt
(
Echo %day%
Echo %health%
Echo %astro1%
Echo %astro2%
Echo %oxygenlevel%
Echo %food%
Echo %water%
Echo %supplies%
Echo %ironore%
Echo %waterextractor%
Echo %disastertype%
Echo %farm%
Echo %drill%
Echo %dprint%
Echo %medstation%
Echo %energy%
Echo %radiotower%
Echo %drop%
Echo %radioR%
Echo %oxymin%
Echo %foodmin%
Echo %watermin%
Echo %oxym%
Echo %foodm%
Echo %waterm%
Echo %diff%
) > SaveSlot1.txt 
Echo Game saved!
pause
goto Activities

:save2
break > SaveSlot2.txt
(
Echo %day%
Echo %health%
Echo %astro1%
Echo %astro2%
Echo %oxygenlevel%
Echo %food%
Echo %water%
Echo %supplies%
Echo %ironore%
Echo %waterextractor%
Echo %disastertype%
Echo %farm%
Echo %drill%
Echo %dprint%
Echo %medstation%
Echo %energy%
Echo %radiotower%
Echo %drop%
Echo %radioR%
Echo %oxymin%
Echo %foodmin%
Echo %watermin%
Echo %oxym%
Echo %foodm%
Echo %waterm%
Echo %diff%
) > SaveSlot2.txt 
Echo Game saved!
pause
goto Activities

:save3
break > SaveSlot3.txt
(
Echo %day%
Echo %health%
Echo %astro1%
Echo %astro2%
Echo %oxygenlevel%
Echo %food%
Echo %water%
Echo %supplies%
Echo %ironore%
Echo %waterextractor%
Echo %disastertype%
Echo %farm%
Echo %drill%
Echo %dprint%
Echo %medstation%
Echo %energy%
Echo %radiotower%
Echo %drop%
Echo %radioR%
Echo %oxymin%
Echo %foodmin%
Echo %watermin%
Echo %oxym%
Echo %foodm%
Echo %waterm%
Echo %diff%
) > SaveSlot3.txt 
Echo Game saved!
pause
goto Activities


:3dprinter
If %dprint% == 0 goto Activities
Echo 3D printer [100ORE=25KG SUPPLIES]
Echo Ironore: %ironore%KG
Echo Supplies: %supplies%KG
set /p q=convert ore into supplies? Y/N
if %ironore% LSS 100 (Echo you do not have enough supplies && pause && goto Activities)
if "%q%" EQU "Y" (set /a supplies+=25 && set /a ironore-=100)
if "%q%" EQU "y" (set /a supplies+=25 && set /a ironore-=100)
Echo Iron ore: %ironore%KG
Echo Supplies: %supplies%KG
pause
goto Activities

:build
If "%farm%" EQU "0" Echo Build Farm (1) [400KG supplies]
If "%drill%" EQU "0" Echo Build Drill (2) [400KG supplies]
If "%dprint%" EQU "0" Echo Build 3D Printer (3) [350KG supplies]
If "%medstation%" EQU "0" Echo Build Medical Station (4) [200KG supplies]
If "%radiotower%" EQU "0" Echo Build radio tower (5) [150KG supplies]
set /P q=
if /I "%q%" EQU "1" goto farm
if /I "%q%" EQU "2" goto DrillB
if /I "%q%" EQU "3" goto 3dprinter
if /I "%q%" EQU "4" goto medB
if /I "%q%" EQU "5" goto towerB
goto Activities


:towerB
If %radiotower% == 1 goto Activities
Echo It will cost you 150kg of supplies to build a radio tower
set /P q=Continue? Y/N
If %supplies% LSS 150 (Echo You do not have enough supplies!) 
If %supplies% LSS 150 timeout /t 1 >nul && goto Activities
IF %q%==Y (Echo Working....) 
IF %q%==N (goto Activities)
IF %q%==y (Echo Working....) 
IF %q%==n (goto Activities)
Set /a supplies-=150
Echo %supplies%KG
Echo The radio tower can be used to communicate to earth and arrange supply drops
Set /a radiotower=1
pause
Goto Activities


:radio
if "%drop%" GTR "0" Echo There is already a shipment enroute! It is expected day %drop%. && pause && goto Activities
Echo What is required?
Echo Supplies (200kg) (1)
Echo Food (200kg) (2)
Echo Water (200kg) (3)
set /P q=
if /I "%q%" EQU "1" set /a radioR=1
if /I "%q%" EQU "2" set /a radioR=2
if /I "%q%" EQU "3" set /a radioR=3
CLS
Echo Radio frequency: 146.640 MHz
Echo [STATUS] Connecting.....
timeout /t 2 >nul
Echo [STATUS] Connecting.....
timeout /t 2 >nul
Echo [STATUS] Connecting.....
timeout /t 2 >nul
Echo [STATUS] Connecting.....
timeout /t 2 >nul
Echo [STATUS] Connected!
Echo NASA: We have established connection to you Mariner 10, Over
timeout /t 2 >nul
Echo NASA: What is required? Over
timeout /t 2 >nul
if "%radioR%" EQU "1" Echo Mariner 10: We require supplies, over
if "%radioR%" EQU "2" Echo Mariner 10: We require food, over
if "%radioR%" EQU "3" Echo Mariner 10: We require water, over
timeout /t 2 >nul
Echo NASA: Acknowledged, over
set /a drop=%day%
set /a drop+=5
timeout /t 2 >nul
Echo Nasa: A lander containing the supplies will arrive on day %drop%
pause
goto Activities



:medB
If "%medstation%" EQU "1" goto Activities
If "%medstation%" EQU "2" goto Activities
Echo It will cost you 200kg of supplies to build a farm
set /P q=Continue? Y/N
If %supplies% LSS 200 (Echo You do not have enough supplies!) 
If %supplies% LSS 200 timeout /t 1 >nul && goto Activities
IF %q%==Y (Echo Working....) 
IF %q%==N (goto Activities)
IF %q%==y (Echo Working....) 
IF %q%==n (goto Activities)
Set /a supplies-=250
Echo %supplies%KG
Echo You can use this station to heal yourself! If you have a Doctor onboard you will be able to heal yourself to greater extents!
Set /a medstation=1
if "%astro1%" EQU "Tom" set /a medstation=2 
if "%astro2%" EQU "Tom" set /a medstation=2 
pause
Goto Activities











:3dprinter
If %dprint% == 1 goto Activities
If %dprint% == 2 goto Activities
Echo It will cost you 350kg of supplies to build a 3D printer
set /P q=Continue? Y/N
If %supplies% LSS 350 (Echo You do not have enough supplies!) 
If %supplies% LSS 350 timeout /t 1 >nul && goto Activities
IF %q%==Y (Echo Working....) 
IF %q%==N (goto Activities)
IF %q%==y (Echo Working....) 
IF %q%==n (goto Activities)
Set /a supplies-=350
Echo %supplies%KG
Echo The 3D printer can convert iron ore into supplies!
Set /a dprint=1
if "%astro1%" EQU "Bob" set /a dprint=2 
if "%astro2%" EQU "Bob" set /a dprint=2 
pause
Goto Activities

:fix
if %oxym% EQU 1 (Echo Oxygen generator broken [50kg to fix] [1]) ELSE Echo none
if %foodm% EQU 1 (Echo Food storage has lost power [50kg to fix] [2]) ELSE Echo none
if %waterm% EQU 1 (Echo A water tank has been hit by a asteroid [50kg to fix] [3]) ELSE Echo none
set /p q=
if "%q%" EQU "q" (goto Activities)
if "%q%" EQU "1" (set /a supplies-=50) ELSE (Echo TEST)
if "%q%" EQU "1" (set /a disastertype=0) ELSE (Echo TEST)
if "%q%" EQU "1" (set /a oxymin=0) ELSE (Echo TEST)
if "%q%" EQU "1" (set /a oxym=0) ELSE (Echo TEST)
if "%q%" EQU "2" (set /a supplies-=50) ELSE (Echo TEST)
if "%q%" EQU "2" (set /a disastertype=0) ELSE (Echo TEST)
if "%q%" EQU "2" (set /a foodmin=0) ELSE (Echo TEST)
if "%q%" EQU "2" (set /a foodm=0) ELSE (Echo TEST)
if "%q%" EQU "3" (set /a supplies-=50) ELSE (Echo TEST)
if "%q%" EQU "3" (set /a disastertype=0) ELSE (Echo TEST)
if "%q%" EQU "3" (set /a watermin=0) ELSE (Echo TEST)
if "%q%" EQU "3" (set /a waterm=0) ELSE (Echo TEST)
Echo %supplies%
Echo %disastertype%
CLS
goto Activities

:stats
Echo Day %day%
Echo Health %health%
Echo Energy %energy%
Echo Oxygen %oxygenlevel%
Echo Astronauts:
Echo Astronaut 1: %astro1% (-6KG food, -3L water)
Echo Astronaut 2: %astro2% (-6KG food, -3L water)
Echo food: %food%KG
Echo water: %water%L
Echo supplies: %supplies%KG
Echo iron ore: %ironore%KG
Echo water extractors: %waterextractor%
Echo Disaster report:
if %oxym% EQU 1 (Echo Oxygen generator broken [-%oxymin% oxygen per day]) ELSE Echo none
if %foodm% EQU 1 (Echo Food storage has lost power [-%foodmin%KG food per day]) ELSE Echo none
if %waterm% EQU 1 (Echo A water tank has been hit by a asteroid [-%watermin%L per day]) ELSE Echo none
Echo Built buildings:
If "%farm%" == "1" Echo Farm 
If "%farm%" == "2" Echo Farm
If "%drill%" == "1" Echo Drill
If "%drill%" == "2" Echo Drill
If "%dprint%" == "1" Echo 3D Printer
If "%dprint%" == "2" Echo 3D Printer
If "%medstation%" == "1" Echo Medical Station
If "%medstation%" == "2" Echo Medical Station
If "%radiotower%" == "1" Echo Radio Tower
pause
goto Activities

:DrillB
If %drill% == 1 goto Activities
If %drill% == 2 goto Activities
Echo It will cost you 400kg of supplies to build a drill
set /P q=Continue? Y/N
If %supplies% LSS 400 (Echo You do not have enough supplies!) 
If %supplies% LSS 400 timeout /t 1 >nul && goto Activities
IF %q%==Y (Echo Working....) 
IF %q%==N (goto Activities)
IF %q%==y (Echo Working....) 
IF %q%==n (goto Activities)
Set /a supplies-=400
Echo %supplies%KG
Echo The drill can be used to mine iron ore in greater quantities than by just exploring! It has more capacity but it may not always find as much!
Set /a drill=1
if "%astro1%" EQU "Bob" set /a drill=2 
if "%astro2%" EQU "Bob" set /a drill=2 
Echo %drill%
pause
Goto Activities

:drill
If %drill% == 0 goto Activities
CLS
Echo The drill can be used to mine iron ore
pause
set /P q=Mine? Y/N
IF %q%==Y (Echo Drilling....) 
IF %q%==N (Echo Action canceled)
IF %q%==N (timeout /t 1 >nul && goto Activities)
IF %q%==n (Echo Action canceled)
IF %q%==n (timeout /t 1 >nul && goto Activities)
IF %q%==y (Echo Drilling....) 
timeout /t 5 >nul
set /a ironoreamount=%random% %%200
if "%drill%" EQU "2" set /a ironoreamount=%random% %%400
Echo You have mined %ironoreamount%KG of iron ore!
set /a ironore += %ironoreamount%
Echo Total Iron ore: %ironore%KG
pause
goto activities


:farm
If %farm% == 1 goto Activities
If %farm% == 2 goto Activities
Echo It will cost you 350kg of supplies to build a farm
set /P q=Continue? Y/N
If %supplies% LSS 350 (Echo You do not have enough supplies!) 
If %supplies% LSS 350 timeout /t 1 >nul && goto Activities
IF %q%==Y (Echo Working....) 
IF %q%==N (goto Activities)
IF %q%==y (Echo Working....) 
IF %q%==n (goto Activities)
Set /a supplies-=350
Echo %supplies%KG
Echo The farm will now produce 1kg food per day! If you have a farmer astronaut it will produce 5 per day!
Set /a farm=1
if "%astro1%" EQU "Jeffery" set /a farm=2 
if "%astro2%" EQU "Jeffery" set /a farm=2 
pause
Goto Activities

:explore
Echo %energy%
If %energy% LSS 5 Echo You are tired and can't explore any more today.... && pause && goto Activities
Echo You have chosen to go exploring today!
Echo ##TIP##
Echo By exploring you can find Iron ore to make supplies. You can also build Water extracters if you find water. (1L per sol)
Echo You begin exploring...
pause
goto explore(loop)

:explore(loop)
CLS
If %energy% LSS 5 Echo You are tired and can't explore any more today.... && pause && goto Activities
set /a energy-=5
set /a fall=%random% %%10
set /a waterfind=%random% %%20
set /a ironorefind=%random% %%3
If %waterfind%==8 (goto foundwater)
If %ironorefind%==2 (goto foundore)
If %fall%==5 (goto fallen)
Echo You continue to search the vast mountainous terrain of mars!
set /P q= 
IF %q%== q Goto Activities
IF %q%== Q Goto Activities
goto explore(loop)




:fallen
Echo You have fallen!
set /a damage=%random% %%10
set /a health-=%damage%
Echo you have taken %damage% damage
Echo your health is now %health%
pause
goto explore(loop)


:foundwater
Echo you have found water!
set /P q=Build water extractor? Y/N
IF %q%==Y (Echo It will cost 50Kg supplies)
IF %q%==N goto :explore(loop)
IF %q%==y (Echo It will cost 50Kg supplies)
IF %q%==n goto :explore(loop)
If %supplies% LSS 50 (Echo You do not have enough supplies!) 
If %supplies% LSS 50 timeout /t 2 >nul && goto :explore(loop)
set /a waterextractor += 1
Set /a supplies -=50
Echo %supplies%KG left
Echo You have built a water extractor! (plus 1L every day!)
pause
goto explore(loop)

:foundore
set /a ironoreamount=%random% %%30
Echo You have found %ironoreamount%KG of iron ore!
set /a ironore += %ironoreamount%
Echo Total Iron ore: %ironore%KG
pause
goto explore(loop)


:sleep1
Echo You have chosen to sleep and skip this day!
pause
goto endday


:endday
Echo Sadly our time together has come to an end!
timeout /t 2 >nul
CLS
Echo *you go to bed*
pause
set /a day+=1
goto 3



:3
If %oxym% EQU 0 Set /a oxygenlevel+=5 
If "%oxygenlevel%" GEQ "100" set /a oxygenlevel=100
Set /a energy=100
set /a exploreT=0
CLS
set /a disaster=%random% %%5 +1
set /a food-=12
set /a water-=6 
if %oxym% EQU 1 set /a oxygenlevel-=%oxymin%
if %foodm% EQU 1 set /a food-=%foodmin%
if %waterm% EQU 1 set /a water-=%watermin%
if %farm% EQU "1" set /a food+=1
if %farm% EQU "2" set /a food+=5
if %food% EQU 0 set /a health-=20
if %food% LSS 0 set /a health-=20
if %water% EQU 0 set /a health-=20
if %water% LSS 0 set /a health-=20
if %health% EQU 0 (timeout /t 2 >nul && goto dead)
if %health% LSS 0 (timeout /t 2 >nul && goto dead)
if %oxygenlevel% EQU 0 (timeout /t 2 >nul && goto dead)
if %oxygenlevel% LSS 0 (timeout /t 2 >nul && goto dead)
set /a water+=%waterextractor%
Echo DAY %day%
Echo oxygen level: %oxygenlevel%
Echo food: %food%KG
Echo water: %water%L
Echo supplies: %supplies%KG
Echo iron ore: %ironore%KG
Echo water extractors: %waterextractor% 
Echo ####Disaster report####
If "%disaster%" EQU "5" goto disaster
Echo None
pause
if "%day%" EQU "7" goto endgame?
if "%day%" EQU "14" goto endgame?
if "%day%" EQU "21" goto endgame?
if "%day%" EQU "28" goto endgame?
if "%day%" EQU "35" goto endgame?
if "%day%" EQU "42" goto endgame?
if "%day%" EQU "49" goto endgame?
if "%day%" EQU "56" goto endgame?
if "%day%" EQU "63" goto endgame?
if "%day%" EQU "70" (Echo You have survived on Mars for 70 days, you have chosen not to return and are now independent) && pause

if "%drop%" EQU "%day%" goto retrieve
goto Activities

:endgame?
Echo You have reached day %day%
Echo Nasa has sent a lander to retrieve you and take you back to earth
Echo This will happen every 7 days
set /p q=Would you like to go back to earth and end this mission? Y/N
if "%q%" EQU %Y% Goto missionend
if "%q%" EQU %y% Goto missionend
if "%drop%" EQU "%day%" goto retrieve
goto Activities

:retrieve
CLS
Echo Your supplies have arrived on Mars!
timeout /t 1 >nul
Echo To retrieve your supplies you will have to hike to the drop location
if "%radioR%" EQU "1" set /a supplies+=200
if "%radioR%" EQU "2" set /a food+=200
if "%radioR%" EQU "3" set /a water+=200
pause
Echo you start your hike
Echo you search for the drop site...
timeout /t 2 >nul
Echo you search for the drop site...
timeout /t 2 >nul
Echo you search for the drop site...
timeout /t 2 >nul
Echo you search for the drop site...
timeout /t 2 >nul
Echo you have found the drop site
timeout /t 2 >nul
Echo you take the supplies...
timeout /t 2 >nul
Echo You head back to base....
set /a energy=0
set /a drop=0
pause
goto Activities

:disaster
set /a disastertype=%random% %%3 +1
if %disastertype% EQU 1 set /a oxymin+=20 &&  set /a oxym=1 && Echo An Oxygen Generator has broken! (-20% oxygen per day)
if %disastertype% EQU 2 set /a foodmin+=10 && set /a foodm=1 && Echo A food storage tank has lost power! (-10KG food per day)
if %disastertype% EQU 3 set /a watermin+=10 && set /a waterm=1 && Echo A water tank has been hit by a asteroid and is leaking water! (-10L per day)
pause
goto Activities
pause

:dead
Echo YOU HAVE DIED!
Echo stats:
Echo oxygen level: %oxygenlevel%
Echo food: %food%KG
Echo water: %water%L
Echo supplies: %supplies%KG
Echo iron ore: %ironore%KG
Echo water extractors: %waterextractor% 
Echo You reached day %day%
set /P q=go to latest save? Y/N
if %q%==Y goto loadsave
if %q%==y goto loadsave
if %q%==N goto menu
if %q%==n goto menu
goto menu
pause


:quit
goto Menu

:missionend
Echo You have returned back to Earth
Echo Score: %day% days
if "%diff%" EQU "1" Echo Difficulty: Easy
if "%diff%" EQU "2" Echo Difficulty: Normal
if "%diff%" EQU "3" Echo Difficulty: Hard

:gameend 
Echo Game stopped
Taskkill /IM "wscript.exe" /F>nul 2>&1
pause
Taskkill /im CMD.EXE

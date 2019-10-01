#This allows me to call the Speech Synthesizer in the next line
Add-Type -AssemblyName System.speech
#This calls the speech synthesizer for text to speech
$speak = New-Object System.Speech.Synthesis.SpeechSynthesizer
#This adjusts the volume of the script
$speak.Volume = 75
#This changes the speed at which the text is read
$speak.Rate = 2
#This states it is my project
$speak.Speak("This is Jacob Pickens' Project 1 for Scripting Language class")
#This tells the current time in hours minutes and seconds
$speak.Speak("The current time is $((Get-Date).ToShortTimeString())")
#This tells the current date by day/month/year
$speak.Speak("The current date is $((Get-Date).ToShortDateString())")
#This tells you your computers' name
$speak.Speak("This computer's name is $($env:COMPUTERNAME)")
#This tells you how much ram you have installed and what processor you have.
$speak.Speak("The amount of RAM installed is $((systeminfo | select-string 'Total Physical Memory:')). The processor installed in this computer is $((Get-WmiObject -Class Win32_Processor | select-object -Property Name))")
$speak.Dispose()
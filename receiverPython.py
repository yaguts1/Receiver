import serial
import csv

serialPort = serial.Serial("COM7", baudrate=9600,timeout=2)

arduinoData = serialPort.readline()
while(True):
    arduinoData = serialPort.readline().decode("ascii")
    print(arduinoData)
#add the data to the file
    file = open("receiverDb.csv", "a") #append the data to the file
    file.write(arduinoData) #write data with a newline
#close out the file
file.close()

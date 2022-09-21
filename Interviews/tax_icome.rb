income = 85000

#Loop input/calculations
while income > 0
    if income >= 0 and income <= 1000
        bracket1 = income * 0.10
        tax2017 = bracket1
        print("Income: ",income)
        print("2017 tax: ",format(tax2017,'.2f'))
        p income
        p bracket1
    # if income >= 0 and income <= 9525
    #     newbracket1 = income * 0.10
    #     tax2018 = newbracket1
    #     print("2018 tax: ",format(tax2018,'.2f'))
    #     income = float(input("\nEnter your income as and integer with no commas: "))
    # if income >= 9326 and income <= 37950:
    #     bracket1 = 9325 * 0.10
    #     bracket2 = (income - 9326) * 0.15
    #     tax2017 = bracket1 + bracket2
    #     print("Income: ",income)
    #     print("2017 tax: ",format(tax2017,'.2f'))
    # if income >= 9526 and income <=38700:
    #     newbracket1 = 9526 * 0.10
    #     newbracket2 = (income - 9525) * 0.12
    #     tax2018 = newbracket1 + newbracket2
    #     print("2018 tax: ",format(tax2018,'.2f'))
    #     income = float(input("\nEnter your income as and integer with no commas: "))
    # if income >= 37951 and income <= 91900:
    #     bracket1 = 9325 * 0.10
    #     bracket2 = (37950 - 9325) * 0.15
    #     bracket3 = (income - 37951) * 0.25
    #     tax2017 = bracket1 + bracket2 + bracket3
    #     print("Income: ",income)
    #     print("2017 tax: ",format(tax2017,'.2f'))
    # if income >= 38701 and income <= 82500:
    #     newbracket1 = 9526 * 0.10
    #     newbracket2 = (38700 - 9526) * 0.12
    #     newbracket3 = (income - 38700) * 0.22
    #     tax2018 = newbracket1 + newbracket2 + newbracket3
    #     print("2018 tax: ",format(tax2018,'.2f'))
    #     income = float(input("\nEnter your income as and integer with no commas: "))
    # if income >= 91901 and income <= 191650:
    #     bracket1 = 9325 * 0.10
    #     bracket2 = (37950 - 9325) * 0.15
    #     bracket3 = (91901 - 37950) * 0.25
    #     bracket4 = (income - 91901) * 0.28
    #     tax2017 = bracket1 + bracket2 + bracket3 + bracket4
    #     print("Income: ",income)
    #     print("2017 tax: ",format(tax2017,'.2f'))
    # if income >= 82501 and income <= 157500:
    #     newbracket1 = 9526 * 0.10
    #     newbracket2 = (38700 - 9526) * 0.12
    #     newbracket3 = (82500 - 38701) * 0.22
    #     newbracket4 = (income - 82500) * 0.24
    #     tax2018 = newbracket1 + newbracket2 + newbracket3 + newbracket4
    #     print("2018 tax: ",format(tax2018,'.2f'))
    #     income = float(input("\nEnter your income as and integer with no commas: "))
    # if income >= 191651 and income <= 416700:
    #     bracket1 = 9325 * 0.10
    #     bracket2 = (37950 - 9325) * 0.15
    #     bracket3 = (91901 - 37950) * 0.25
    #     bracket4 = (191650 - 91901) * 0.28
    #     bracket5 = (income - 191651) * 0.33
    #     tax2017 = bracket1 + bracket2 + bracket3 + bracket4 + bracket5
    #     print("Income: ",income)
    #     print("2017 tax: ",format(tax2017,'.2f'))
    # if income >= 157501 and income <= 200000:
    #     newbracket1 = 9526 * 0.10
    #     newbracket2 = (38700 - 9526) * 0.12
    #     newbracket3 = (82500 - 38701) * 0.22
    #     newbracket4 = (157500 - 82501) * 0.24
    #     newbracket5 = (income - 157500) * 0.32
    #     tax2018 = newbracket1 + newbracket2 + newbracket3 + newbracket4 + newbracket5
    #     print("2018 tax: ",format(tax2018,'.2f'))
    #     income = float(input("\nEnter your income as and integer with no commas: "))
    # if income >= 416701 and income <= 418400:
    #     bracket1 = 9325 * 0.10
    #     bracket2 = (37950 - 9325) * 0.15
    #     bracket3 = (91901 - 37950) * 0.25
    #     bracket4 = (191650 - 91901) * 0.28
    #     bracket5 = (416700 - 191650) * 0.33
    #     bracket6 = (income - 416701) * 0.35
    #     tax2017 = bracket1 + bracket2 + bracket3 + bracket4 + bracket5 + bracket6
    #     print("Income: ",income)
    #     print("2017 tax: ",format(tax2017,'.2f'))
    # if income >= 200001 and income < 500000:
    #     newbracket1 = 9526 * 0.10
    #     newbracket2 = (38700 - 9526) * 0.12
    #     newbracket3 = (82500 - 38701) * 0.22
    #     newbracket4 = (157500 - 82501) * 0.24
    #     newbracket5 = (200000 - 157501) * 0.32
    #     newbracket6 = (income - 200001) * 0.35
    #     tax2018 = newbracket1 + newbracket2 + newbracket3 + newbracket4 + newbracket5 + newbracket6
    #     print("2018 tax: ",format(tax2018,'.2f'))
    #     income = float(input("\nEnter your income as and integer with no commas: "))
    # if income >= 418401:
    #     bracket1 = 9325 * 0.10
    #     bracket2 = (37950 - 9325) * 0.15
    #     bracket3 = (91901 - 37950) * 0.25
    #     bracket4 = (191650 - 91901) * 0.28
    #     bracket5 = (416700 - 191650) * 0.33
    #     bracket6 = (418400 - 416700) * 0.35
    #     bracket7 = (income - 418401) * 0.396
    #     tax2017 = bracket1 + bracket2 + bracket3 + bracket4 + bracket5 + bracket6 + bracket7
    #     print("Income: ",income)
    #     print("2017 tax: ",format(tax2017,'.2f'))
    # if income >= 500000:
    #     newbracket1 = 9526 * 0.10
    #     newbracket2 = (38700 - 9526) * 0.12
    #     newbracket3 = (82500 - 38701) * 0.22
    #     newbracket4 = (157500 - 82501) * 0.24
    #     newbracket5 = (200000 - 157501) * 0.32
    #     newbracket6 = (500000 - 200001) * 0.35
    #     newbracket7 = (income - 500000) * 0.37
    #     tax2018 = newbracket1 + newbracket2 + newbracket3 + newbracket4 + newbracket5 + newbracket6 + newbracket7
    #     print("2018 tax: ",format(tax2018,'.2f'))
    #     income = float(input("\nEnter your income as and integer with no commas: "))

    else
    end
end

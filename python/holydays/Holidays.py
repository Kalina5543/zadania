from Tools.scripts.treesync import raw_input
import datetime


def main():
    date_str = raw_input("Enter date (dd-mm-yyyy): ")
    date_str = date_str.strip()
    print("You enter: " + date_str)
    date = datetime.datetime.strptime(date_str + '-00:00:00', '%d-%m-%Y-%H:%M:%S')
    print(date)

    if date.month == 1 and (date.day == 1 or date.day == 6):
        exit(0)

    A = 24
    B = 5
    a = date.year % 19
    b = date.year % 4
    c = date.year % 7
    d = (a * 19 + A) % 30
    e = (2 * b + 4 * c + 6 * d + B) % 7
    easter_day_shift = d + e

    date_easter = datetime.datetime.strptime('22-03-' + str(date.year) + '-00:00:00', '%d-%m-%Y-%H:%M:%S')

    if date == date_easter  + datetime.timedelta(days=easter_day_shift) or  date == date_easter  + datetime.timedelta(days=(easter_day_shift+1)):
        exit(0)

    if date.month == 5 and (date.day == 1 or date.day == 3 or date.day == 31):
        exit(0)

    if date.month == 6 and (date.day == 11):
          exit(0)
    if date.month == 8 and (date.day == 15):
         exit(0)
    if date.month == 11 and (date.day == 1 or date.day == 11):
        exit(0)
    if date.month == 12 and (date.day == 25 or date.day == 26):
        exit(0)

    exit(1)

if __name__ == "__main__":
    main()

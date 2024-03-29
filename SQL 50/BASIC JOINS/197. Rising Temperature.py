SELECT w.id
FROM Weather as w
JOIN Weather as w_prev ON w_prev.recordDate = DATE_SUB(w.recordDate, INTERVAL 1 DAY)
WHERE w.temperature > w_prev.temperature;

"""
The DATE_SUB() function is a MySQL function used to subtract a specified time interval from a date. It takes two arguments:

1) The date or datetime value from which you want to subtract time.
2) The time interval you want to subtract, specified as an expression that produces a datetime or a time interval value.

- Here w.recordDate is a column representing a date or datetime value, and INTERVAL 1 DAY indicates that you want to subtract one day from w.recordDate. 
- So, DATE_SUB(w.recordDate, INTERVAL 1 DAY) will give you the date that is one day before w.recordDate.
"""

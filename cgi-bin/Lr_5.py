import cgi, sys
form = cgi.FieldStorage()         # извлечь данные из формы
print("Content-type: text/html")  # плюс пустая строка
print()

html1 = """
<!DOCTYPE html>
<html lang="ru">
<head>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@300&display=swap" rel="stylesheet">
    <title>Суперкомпьютеры: анкета</title>
    <link rel="stylesheet" href="http://example.com/css/main.css">
    <style>
        body {
            background: #4f5d75 no-repeat center/cover;
            font-family:'Montserrat', sans-serif;
            font-size: 16px;
            font-weight: normal;
            color: #ECECF1;
            text-align: justify;
            line-height: 1.5;
        }
        table {
            border-collapse: collapse;
            width: 100%;
            margin: 0 auto;
            margin-top: 30px;
            margin-bottom: 30px;
        }
        th,
        td {
            border: 4px solid #343541;
            padding: 10px;
            text-align: center;
        }
        table:hover {
            box-shadow: 0px 0px 20px #343541;
        }
        h1 {
            text-align: center;
            margin-top: 30px;
            margin-bottom: 30px;
        }
    </style>
</head>
<body>
    <h1>Анкета пользователя: Суперкомпьютеры</h1>
    <table> <tr>
"""
print(html1)
# печать заголовка таблицы
ll = ['Имя', 'Фамилия', 'Отчество', 'Любимый суперкомпьютер']
for head in ll:
    ss = '<th>' + head + '</th>'
    print(ss)
print('</tr> <tr>')

data = ['', '', '', ''];    i = 0
for field in ('name', 'surname', 'patronymic', 'supercomputer'):
    if not field in form:
        data[i] = '(unknown)'
    else:
        if not isinstance(form[field], list):
            data[i] = form[field].value
        else:
            values = [x.value for x in form[field]]
            data[i] = ' и '.join(values)
    i += 1
    # Запись данных анкеты в текстовый файл с накоплением результатов
filename = "results.txt"
with open(filename, "a") as file:
    file.write("\n".join(data) + "\n\n")
for el in data:
   print('<td> %s </td>' % el)

print('</tr> </table>')
print('</body></html>')

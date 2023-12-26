import pandas as panda

file = "C:\\Users\\SPURGE\\Documents\\DataBook.xlsx"
# dataframe = panda.read_excel("C:\\Users\\SPURGE\\Documents\\DataBook.xlsx", sheet_name="DataSheet")
dataframe1 = panda.read_excel("C:\\Users\\SPURGE\\Documents\\DataBook.xlsx",
                              header=0, names=["name","EmpId","Organization"], usecols=[0,1,2], sheet_name="DataSheet"
                              , skiprows=1)
# print(dataframe)
print(dataframe1)




# def openXL_readXL(filename, sheetname):
#     excelfile = panda.read_excel(filename,sheet_name=sheetname)
#     for cell in sheetname.col[1]:
#         print(cell)






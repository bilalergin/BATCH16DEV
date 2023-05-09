DmlDemo2.employeeDepartment();


//transaction OR execution.
DmlDemo2.dmlInsertDemo1();
DmlDemo2.dmlInsertDemo2();
DmlDemo2.dmlInsertDemo1();
DmlDemo2.dmlInsertDemo2();


//DmlDemo2.dmlInsertDemoWrong();
//Dmldemo2.soqlWrongWay();

DmlDemo2.dmlInsertDemoRight1();

DmlDemo2.dmlBulkUpdateRight1();
DmlDemo2.dmlBulUpdateRight2();

// List of account - l11
// Account(name = 'acc 1');
// Account(name = 'acc 2');
// Account(name = 'acc 3');
// Account(name = 'acc 4');


// for (type variable : List_or_set) {
//     Account(name = 'acc 1');
//         set rating = Hot;
// }

delete [select id, name from account where createddate = TODAY limit 50];

List<account> accs = [select id from account where isdeleted = true ALL ROWS];
undelete accs;//silinenleri geri yüklemek
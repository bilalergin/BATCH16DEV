    //find all cases, and if the case is orphan (no related account), then set default account to Softinnovas.

CasesBatch cb = new CasesBatch();
Database.executebatch(cb, 50);
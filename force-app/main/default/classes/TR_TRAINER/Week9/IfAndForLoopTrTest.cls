@istest
    //! 25.05.2023

public class IfAndForLoopTrTest {
    @istest
    private static void phoneTest() {
        IfAndForLoopTr ifl = new IfAndForLoopTr();
        string msg = ifl.phone('2123457698');
        assert.isNotNull(msg);
        string msg2 = ifl.phone('2163457698');
        assert.isNotNull(msg2);
        string msg3 = ifl.phone('3123457698');
        assert.isNotNull(msg3);
        string msg4 = ifl.phone('212345769856');
        assert.isNotNull(msg4);
    }
    @istest
    private static void sumTest() {
        IfAndForLoopTr ifl = new IfAndForLoopTr();
        ifl.sum(5);//bu static olmadığı için instance üretiyoruz ama return etmediği için assert yapmıyoruz. eğer static olsaydı class adı ve metot adıyla çağırabilirdik.
    }
    @istest
    private static void helloTest() {
        IfAndForLoopTr ifl = new IfAndForLoopTr();
        string msg = ifl.hello('ali');
        assert.isNotNull(msg);
        assert.areEqual(' hello 1 hello 2 hello 3', msg);
    }
}
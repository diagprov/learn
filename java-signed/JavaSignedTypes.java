
public class JavaSignedTypes {

    // This seems to work just fine.
    public static final short TestType = (short)0x8000;
    public static final short OtherType = (short)0xFFFF;

    // Repr is what it is.
    public static void main(String[] args) {
        System.out.println("Int Type = " + TestType);
        System.out.println("Bit testing = " + ((OtherType & 0x8000)>0));
    }

}

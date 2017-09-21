component accessors=true {
    property Greeting;

    void function default(struct rc) {
        rc.greet = Greeting;
    }
}

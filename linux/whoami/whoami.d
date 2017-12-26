void main()
{
    import std.exception, std.stdio, std.process;

    auto result = ["whoami"].execute;
    enforce(result.status == 0);
    result.output.write;
}
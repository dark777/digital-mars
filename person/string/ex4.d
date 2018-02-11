import std.stdio;
import std.string;
import std.traits;
import std.range;
import std.algorithm;

auto readp(S)(ref S s, string message)
if (isSomeString!S) {
    import std.string : strip;
    writef("%s: ", message);
    s = readln().strip();
    return s;
}

auto readp(S)(ref S s, string message)
if (isStaticArray!S && isSomeChar!(ElementType!S)) {

    string tmp;
    read(tmp, message);

    // Clear the array
    s[] = typeof(s[0]).init;

    // Assign without going out of bounds
    const len = min(s.length, tmp.length);
    s[0..len] = tmp[0..len];
    //este readp irá ler apenas vetor de char.
    return s;
}

void main()
{
    char[50] message;
    readp(message,"Digite Seu nome");
    writeln(message);
} 

%switch case

a=input('Enter the number:');

switch a
    case 1
        disp('1');
    case 2
        disp('2');
    case 3
        disp('3');
    otherwise
        disp('This is not in case');
end


%string input
a=input('Enter the string', 's');

switch a
    case 'a'
        disp('a');
    case 'b'
        disp('b');
    case 'c'
        disp('c');
    otherwise
        disp('This is not in case');
end
contract New {
 uint[] public evenNumbers;

    function filterEven(uint[] array) external{
        for (uint i = 0; i < array.length; i++){
            if (array[i] % 2 == 0){
                evenNumbers.push(array[i]);
            }
        }
    }
}
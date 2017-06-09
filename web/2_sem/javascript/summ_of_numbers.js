function summ_of_numbers() {
    var number = 0;
    var summ = 0;
    while (number < 10000) {
        number = ++number
        if (number % 2 == 0) {
            summ = number + summ;
        }
    }
    alert(summ);
}

// print the largest prime palindrome less than 1000

exports.is_palindrome = function(number){
  var n = String(number).split('');
  if (n.length % 2 == 0) {
    var part1 = n.slice(0, n.length / 2);
    var part2 = n.slice(n.length / 2);
  }
  else {
    var part1 = n.slice(0, Math.floor(n.length / 2));
    var part2 = n.slice(Math.ceil(n.length / 2));
  }
  return part1.toString() == part2.reverse().toString();
}

exports.is_prime = function(number){
  if (number > 1) {
    for (var i = 2; i < number; i++) {
      if (number % i == 0) {
        return false;
      }
    }
    return true;
  }
  else {
    return false;
  }
}

exports.find = function(){
  for (var i = 999; i > 1; i--) {
    if (exports.is_palindrome(i)) {
      if (exports.is_prime(i)) {
        return i;
      }
    }
  }
  return undefined;
}

console.log(exports.find());

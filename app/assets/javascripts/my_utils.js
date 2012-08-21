
function updateCharsLeft(e) {
  textAreaLength = document.getElementById('micropost_content').value.length;
  charsLeft = 140 - textAreaLength;
  document.getElementById('char_count').innerHTML = charsLeft;
}


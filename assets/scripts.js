window.toggleElement = function(id) {
  var el = document.getElementById(id);
  if (el.style.display !== 'none') {
    el.style.display = 'none';
  } else {
    el.style.display = 'block';
  }
  return false;
}

window.switchTab = function(id) {
  var elems = document.getElementsByClassName('tab-content');
  for (var i = 0; i < elems.length; i++) {
    if (elems[i].id === id) elems[i].classList.add('active');
    else elems[i].classList.remove('active');
  }
  
  elems = document.getElementsByClassName('tab');
  for (var i = 0; i < elems.length; i++) {
    if (elems[i].id === 'tab-'+id) elems[i].classList.add('active');
    else elems[i].classList.remove('active');
  }

  return false;
}

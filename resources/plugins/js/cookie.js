function setCookie(cookie_name, value, days) {
	  var exdate = new Date();
	  exdate.setDate(exdate.getDate() + days);
	  
	  var cookie_value = escape(value) + ((days == null) ? '' : ';    expires=' + exdate.toUTCString());
	  document.cookie = cookie_name + '=' + cookie_value;
	  
	  console.log("RecentItems" + document.cookie);
	}

function addCookie(id) {
	  var items = getCookie('RecentItems'); 
	  var maxItemNum = 5;
	  var expire = 1; 
	  if (items) {
	    var itemArray = items.split(',');
	    if (itemArray.indexOf(id) != -1) {
	      console.log('Already exists.');
	    }
	    else {
	      itemArray.unshift(id);
	      if (itemArray.length > maxItemNum ) itemArray.length = 5;
	      items = itemArray.join(',');
	      setCookie('RecentItems', items, expire);
	    }
	  }
	  else {
	    setCookie('RecentItems', id, expire);
	  }
	}

function getCookie(cookie_name) {
	console.log('getCookie start');
	  var x, y;
	  var val = document.cookie.split(';');

	  for (var i = 0; i < val.length; i++) {
	    x = val[i].substr(0, val[i].indexOf('='));
	    y = val[i].substr(val[i].indexOf('=') + 1);
	    x = x.replace(/^\s+|\s+$/g, '');
	    if (x == cookie_name) {
	      return unescape(y);
	    }
	  }
	}

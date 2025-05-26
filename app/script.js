fetch('/messages')
  .then(res => res.json())
  .then(data => {
    const list = document.getElementById('messageList');
    data.forEach(msg => {
      const li = document.createElement('li');
      li.textContent = msg;
      list.appendChild(li);
    });
  });

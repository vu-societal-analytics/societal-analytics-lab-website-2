// Filter buttons for the events and blog lists.
// Buttons: <button class="chip" data-f="all|key">. Items: [data-k="key"] inside #list.
(function () {
  var chips = document.querySelectorAll('.chip');
  var list = document.getElementById('list');
  if (!chips.length || !list) return;
  chips.forEach(function (chip) {
    chip.addEventListener('click', function () {
      chips.forEach(function (c) { c.setAttribute('aria-pressed', c === chip ? 'true' : 'false'); });
      var f = chip.getAttribute('data-f');
      list.querySelectorAll('[data-k]').forEach(function (item) {
        item.hidden = !(f === 'all' || item.getAttribute('data-k') === f);
      });
      list.querySelectorAll('.year-group').forEach(function (g) {
        g.hidden = !g.querySelector('[data-k]:not([hidden])');
      });
    });
  });
})();

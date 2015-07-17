document.addEventListener('page:change', function() {
        document.getElementById('primary-content').className += 'animated fadeIn';
                document.getElementById('sec-content').className += 'animated fadeIn';

});
document.addEventListener('page:fetch', function() {
        document.getElementById('primary-content').className += 'animated fadeOut';
                document.getElementById('primary-content').className += 'animated fadeOut';

});
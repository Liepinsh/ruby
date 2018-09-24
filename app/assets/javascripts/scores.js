
$(document).ready(function() {
    setInterval(function(){
        $.ajax({
            url: "/scores/ajax_scores"
        }).done(function(scores) {
            for(let score of scores) {
                let $scoreElement = $('[data-score-id="' + score.id + '"]');
                $scoreElement.find('[data-score-attribute="home_team_full_name"]').text(score.home_team.full_name);
                $scoreElement.find('[data-score-attribute="guest_team_full_name"]').text(score.guest_team.full_name);
                $scoreElement.find('[data-score-attribute="home_score"]').text(score.home_score);
                $scoreElement.find('[data-score-attribute="guest_score"]').text(score.guest_score);
                $scoreElement.find('[data-score-attribute="overtime"]').text(score.overtime);
            }
        });
    }, 3000);
});
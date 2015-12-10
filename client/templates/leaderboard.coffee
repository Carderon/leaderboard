Template.leaderboard.helpers
    teams : -> 
        return Teams.find({}, {sort: {score: -1}})
Template.leaderboard.onRendered ->
    AnimatedEach.attachHooks( this.find(".list-group") )
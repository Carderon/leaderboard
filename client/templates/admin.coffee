Template.admin.helpers
    teams : -> 
        return Teams.find()

Template.admin.events({
    'submit form': (e) ->
        e.preventDefault()

        team = {
          name : $(e.target).find('[name=name]').val(),
          score : 0
        }

        team._id = Teams.insert(team)
        $(e.target).find('[name=name]').val('')
    'click .addFive': (e) ->
        e.preventDefault()
        Teams.update(this._id, {$set: {score : this.score+5}})
    'click .addOne': (e) ->
        e.preventDefault()
        Teams.update(this._id, {$set: {score : this.score+1}})
    'click .takeFive': (e) ->
        e.preventDefault()
        Teams.update(this._id, {$set: {score : this.score-5}})
    'click .takeOne': (e) ->
        e.preventDefault()
        Teams.update(this._id, {$set: {score : this.score-1}})
    'click .remove': (e) ->
        e.preventDefault()
        if confirm("Supprimer cette équipe ?")
          Teams.remove(this._id)
});
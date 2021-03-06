class UserPartyFacade
  def initialize(user_id)
    @user_id = user_id
  end

  def hosting
    Party.where(host_id: @user_id)
  end

  def attending
    Party.select('parties.*')
      .joins(:user_parties)
      .where("user_parties.user_id = ?", @user_id)
  end
end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bets
  has_many :invitations
  has_many :messages
  has_many :pending_invitations, -> { where confirmed: false }, class_name: 'Invitation', foreign_key: "friend_id"

  validates :username, uniqueness: true
  scope :all_except, ->(user) { where.not(id: user) }
  after_create_commit { broadcast_append_to "users" }
  def friends
    friends_i_sent_invitation = Invitation.where(user_id: id, confirmed: true).pluck(:friend_id)
    friends_i_got_invitation = Invitation.where(friend_id: id, confirmed: true).pluck(:user_id)
    ids = friends_i_sent_invitation + friends_i_got_invitation
    User.where(id: ids).or(User.where(id: self.id))
  end

  def friend_with?(user)
    Invitation.confirmed_record?(id, user.id)
  end

  def send_invitation(user)
    Invitation.create(user: current_user, friend_id: user.id)
    raise
  end

  def calculate_total_score
    self.total_score = 0
    all_bets = bets
    all_bets.each do |bet|
      self.total_score += bet.score
    end
    save
    # bet = bets.where(match_id: admin_bet.match_id).last
    # bet.result = admin_bet.result if bet.result.empty?
    # bet.compute_score
    # self.total_score += bet.score
    # save
  end

  def ranking
    all_players = User.all.order(total_score: :desc)
    all_players.pluck(:id).index(id)
  end

  def invitation_received?(user)
    all_invitations = Invitation.where(friend_id: self.id)
    pending_invitations = all_invitations.where(confirmed: false)
    pending_invitation = pending_invitations.where(user: user)
    pending_invitation.exists?
  end

  def invitation_sent?(user)
    all_invitations = Invitation.where(user: self)
    pending_invitations = all_invitations.where(confirmed: false)
    pending_invitation = pending_invitations.where(friend_id: user.id)
    pending_invitation.exists?
  end

  def invitation_received(user)
    all_invitations = Invitation.where(friend_id: self.id)
    pending_invitations = all_invitations.where(confirmed: false)
    pending_invitations.where(user: user).last
  end

  def invitation_sent(user)
    all_invitations = Invitation.where(user: self)
    pending_invitations = all_invitations.where(confirmed: false)
    pending_invitations.where(friend_id: user.id).last
  end
end

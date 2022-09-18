class Attendee
  def initialize(height)
    @height = height
    @pass_id = nil
  end

  def height
    @height
  end

  def pass_id
    @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end

attendee = Attendee.new(106)
p attendee.pass_id
p attendee.issue_pass!(42)
p attendee.pass_id
p attendee.revoke_pass!
p attendee.pass_id

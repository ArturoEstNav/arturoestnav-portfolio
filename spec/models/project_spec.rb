RSpec.describe Project, type: :model do
  let(:technology) { Technology.create!(name: "Postgresql") }
  subject { Project.new(name: 'something', description: 'something', url: 'something') }
  let(:project_technology) { ProjectTechnology.create!(project_id: subject.id, technology_id: :technology.id) }

  describe 'associations' do
    it { should have_many(:technologies).optional }
  end
end

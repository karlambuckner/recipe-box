require('spec_helper')

describe(Recipe) do
  describe("#ingredients") do
    it("tells you what ingredients are in the recipe") do
      test_recipe = Recipe.create({:name => "Casserole", :instructions => "Many",  :)
      test_ingredient1 = Question.create({:ask => "what is your favorite shark week show?", :survey_id => test_survey.id})
      test_ingredient2 = Question.create({:ask => "How much do you love Game of Thrones?", :survey_id => test_survey.id})
     expect(test_survey.questions()).to(eq([test_question1, test_question2]))
    end
  end
end

When(/^the client requests GET (.*)$/) do |path|
  get(path)
end

Then("the response should be:") do |string|
  expect(last_response.body).to eq string
end
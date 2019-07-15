RSpec.describe Mercurd::CLI, type: :aruba  do
  it "shows zen of code reading" do
    run_command_and_stop('mercurd zen', fail_on_error: false)
    expect(last_command_started.output).to include 'Zen'
  end

  it 'wrapped cloc' do
    run_command_and_stop('mercurd cloc .', fail_on_error: false)
    expect(last_command_started.output).to include 'Count Lines of Code'
  end

  it 'provides a generator of cucumber feature' do
    run_command_and_stop('mercurd generate feature dummy', fail_on_error: false)
    expect(last_command_started.output).to include 'create  features/dummy.feature'
  end
end
# Your code here
# For output purposes, use "puts" instead of "print" or "p"

def meal_choice (veg1,veg2,protein="tofu")
  puts "What a nutritious meal!"
  puts "A plate of #{protein} with #{veg1} and #{veg2}." 
end


describe '#meal_choice' do
  it 'should default to meat for the protein' do
    expect(meal_choice("broccoli", "macaroni")).to eq("A plate of meat with broccoli and macaroni.")
  end

  it 'should allow you to set a protein' do
    expect(meal_choice("broccoli", "macaroni", "tofu")).to eq("A plate of tofu with broccoli and macaroni.")
  end

  it 'should puts "What a nutritious meal!" and your order to the console' do
    expect($stdout).to receive(:puts).with("What a nutritious meal!")
    expect($stdout).to receive(:puts).with("A plate of meat with broccoli and macaroni.")
    meal_choice("broccoli", "macaroni")
  end
end

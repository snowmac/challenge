# Load all the things in app
Dir[File.dirname(__FILE__) + '/app/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/*.rb'].each {|file| require file }

inks = InventoryService.new.fetch!

inventory = Inventory.new

# Add items from the web to the inventory collection 
inks['inks'].each do |ink|
  inventory.add(
    color: ink['color'],
    cost: ink['cost'],
    id: ink['id']
  )
end

question = QuestionService.new.fetch!

q = Question.new(question['scenario_id'], question['questions'])

subs = []

q.question_inventory.colors.each do |item|
  subs.push(inventory.search_for_sub(item))
end


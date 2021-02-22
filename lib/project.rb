class Project 
    attr_accessor :title 
    @@all = []

    def initialize(title)
        @title = title
        save 
    end 

    def save 
        @@all << self 
    end 

    def add_backer(backer)
        new_backer = ProjectBacker.new(self, backer)
        new_backer
    end 

    def all_backers
        ProjectBacker.all.select do |projects|
            projects.project == self
        end
    end 

    def backers
        all_backers.collect do |backer|
            backer.backer
        end 
    end 
end 

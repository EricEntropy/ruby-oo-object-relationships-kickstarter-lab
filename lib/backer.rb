class Backer
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        save 
    end 

    def save 
        @@all << self 
    end 

    def back_project(project)
        new_backer = ProjectBacker.new(project, self)
        new_backer
    end 

    def projects 
        ProjectBacker.all.select do |backer|
            backer.backer == self
        end 
    end 

    def backed_projects
        projects.collect do |project|
            project.project
        end 
    end 

end 
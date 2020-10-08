class Backer
    
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end
    
    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select{ |pb| pb.backer == self  }.map{ |pb| pb.project }.compact
    end

    def self.all
        @@all
    end
    
end
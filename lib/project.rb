class Project
    
    attr_accessor :title
    @@all = []
    
    def initialize(title)
        @title = title
        @@all << self
    end
    
    def backers
        ProjectBacker.all.select{ |pb| pb.project == self  }.map{ |pb| pb.backer }.compact
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def self.all
        @@all
    end
    
end
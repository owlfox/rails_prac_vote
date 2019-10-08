class CandidatesController < ApplicationController 
    def index
        @candidates = Candidate.all
    end

    def show
        @candidate = Candidate.find_by(id: params[:id])
    end

    def new
        @candidate = Candidate.new
    end

    def edit
        @candidate = Candidate.find_by(id: params[:id])
    end
    
    def create
        @candidate = Candidate.new(candidate_params)

        if @candidate.save
            
            flash[:notice] = "candidate added"
            redirect_to '/candidates'
        else
            # use the same instance to render the page again

            render :new
        end
    end

    def update
        @candidate = Candidate.new(candidate_params)

        if @candidate.update(candidate_params)
            flash[:notice] = "candidate updated"
            redirect_to '/candidates'
        else
            render :edit
        end
    end

    

    private
    def candidate_params
      params.require(:candidate).permit(:name, :age, :party, :politics)
    end

    
end


class CandidatesController < ApplicationController 
    before_action :find_candidate, only: [:show, :edit, :update, :destroy, :vote] #except: [:new, :create, :index]
    

    def index
        @candidates = Candidate.all
    end

    def show
        find_candidate
    end

    def new
        @candidate = Candidate.new
    end

    def edit
        
    end
    
    def create
        

        if @candidate.save
            redirect_to '/candidates', notice: "candidate added"
        else
            # use the same instance to render the page again

            render :new
        end
    end

    def update
        @candidate = Candidate.new(candidate_params)

        if @candidate.update(candidate_params)
            redirect_to '/candidates', notice: "candidate updated"
        else
            render :edit
        end
    end

    def destroy
        @candidate.destroy
        redirect_to '/candidates', notice: "candidate DESTROYED"
    end

    def vote
        

        # VoteLog.create(candidate: @candidate, ip_address: request.remote_ip)
        @candidate.vote_logs.create( ip_address: request.remote_ip)

        @candidate.increment(:votes)
        @candidate.save
        flash[:notice] = "voted!"
        redirect_to '/candidates'
    end
    

    private
    def candidate_params
      params.require(:candidate).permit(:name, :age, :party, :politics)
    end

    def find_candidate
        @candidate = Candidate.find_by(id: params[:id])
    end
    
end


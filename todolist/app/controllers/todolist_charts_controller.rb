class TodolistChartsController < ApplicationController
  # GET /todolist_charts
  # GET /todolist_charts.xml
  def index
    @todolist_charts = TodolistChart.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @todolist_charts }
    end
  end

  	# GET /todolist_charts/delete_complete
  # GET /todolist_charts/delete_complete.xml
 def delete_complete
    @todolist_chart = TodolistChart.find(:all, :conditions => {:status => "completed"})
    
    @todolist_chart.each do |todolist_chart|
      todolist_chart.destroy
    end
    
    respond_to do |format|
      format.html { redirect_to(todolist_charts_url) }
      format.xml  { head :ok }
    end
  end
  
  # GET /todolist_charts/1
  # GET /todolist_charts/1.xml
  def show
    @todolist_chart = TodolistChart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @todolist_chart }
    end
  end

  # GET /todolist_charts/new
  # GET /todolist_charts/new.xml
  def new
    @todolist_chart = TodolistChart.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @todolist_chart }
    end
  end

  # GET /todolist_charts/1/edit
  def edit
    @todolist_chart = TodolistChart.find(params[:id])
  end

  # POST /todolist_charts
  # POST /todolist_charts.xml
  def create
    @todolist_chart = TodolistChart.new(params[:todolist_chart])

    respond_to do |format|
      if @todolist_chart.save
        flash[:notice] = 'TodolistChart was successfully created.'
        format.html { redirect_to(@todolist_chart) }
        format.xml  { render :xml => @todolist_chart, :status => :created, :location => @todolist_chart }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @todolist_chart.errors, :status => :unprocessable_entity }
      end
    end
  end
  
 

  # PUT /todolist_charts/1
  # PUT /todolist_charts/1.xml
  def update
    @todolist_chart = TodolistChart.find(params[:id])

    respond_to do |format|
      if @todolist_chart.update_attributes(params[:todolist_chart])
        flash[:notice] = 'TodolistChart was successfully updated.'
        format.html { redirect_to(@todolist_chart) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @todolist_chart.errors, :status => :unprocessable_entity }
      end
    end
  end
        # GET /todolist_charts/1/mark_complete
       def mark_complete
       @todolist_chart = TodolistChart.find(params[:id])
	   
       new = {:status => "completed"}
       @todolist_chart.update_attributes(new)
       redirect_to :action => "index"
    end



  # DELETE /todolist_charts/1
  # DELETE /todolist_charts/1.xml
  def destroy
    @todolist_chart = TodolistChart.find(params[:id])
    @todolist_chart.destroy

    respond_to do |format|
      format.html { redirect_to(todolist_charts_url) }
      format.xml  { head :ok }
    end
  end
end

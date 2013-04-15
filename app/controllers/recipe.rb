RecipeProject::App.controllers :recipe do

  get :index do
    @recipes = Recipe.all
    render 'recipe/view_all'
  end

  get :search do
    render 'recipe/search'
  end

  post :search do
    @results = Recipe.find_all_by_title(params[:title_query])
    if @results.length == 0
      flash[:notice] = "Not results found!  Search again?"
      render 'recipe/search'
    else
      render 'recipe/results_list'
    end
  end

  get :display do
    @recipe = Recipe.last
    render 'recipe/display_recipe'
  end
  
  get 'display/:id' do
    @recipe = Recipe.find(params[:id])
    render 'recipe/display_recipe'
  end

  get :new do
    render 'recipe/new'
  end

  post :create do
    @recipe = Recipe.new
    @recipe.ingredients_list = params[:ingredients_list]
    @recipe.body = params[:body]
    @recipe.title = params[:title]
    @recipe.cuisine = params[:cuisine]
    @recipe.image_url = params[:image_url]

    if @recipe.save
      redirect 'recipe/display_recipe'
    else
      flash[:notice] = "Sorry, couldn't save..."
    end
  end
  

end

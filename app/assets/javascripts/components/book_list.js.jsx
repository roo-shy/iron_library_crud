var BookList = React.createClass({

  getInitialState(){
    return {
      books: []
    }
  },

  componentDidMount(){
    this.fetchBooks();
  },

  fetchBooks(){
    var component = this;
    fetch("/api/books.json")
    .then(function(response){
      return response.json();
    })
    .then(function(json){
      component.setState({
        books: json.books
      })
    })
  },

  HandleRefresh(event){
   event.preventDefault();
   this.fetchBooks()
 },

  render: function() {
    return <div>
    {this.state.books.map(function(book){
        return <img src={book.image_url}/>
     })}
       <button onClick={this.HandleRefresh}>Refresh</button>

    </div>;
  }
});

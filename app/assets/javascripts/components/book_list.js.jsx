var BookList = React.createClass({

  getInitialState(){
    return {
      books: []
    }
  },

  componentWillMount(){
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

  render: function() {
    return <div>
      {this.state.books.map(function(book){
        return <img src={book.image_url}/>
     })}
    </div>;
  }
});

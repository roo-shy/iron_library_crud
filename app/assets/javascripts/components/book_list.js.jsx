var BookList = React.createClass({

  getInitialState(){
    return {
      books: []
    }
  },

  fetchBooks(){
    var component = this;
    fetch("/api/books.json")
    .then(function(r){
      return r.json();
    })
    .then(function(json){
      component.setState({
        books: json.books
      })
    })
  },

  componentDidMount(){
    this.fetchBooks();
  },

  render: function() {
    return <div>
      {this.state.books.map(function(book){
        return <img key={book.id} src={book.book_image}/>
     })}
    </div>;
  }
});

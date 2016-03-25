var BookList = React.createClass({

  getInitialState(){
    return {
      books: []
    }
  },

  _fetchBooks(){
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

  _clickIt(event){
      event.preventDefault();
      this._fetchBooks()
      console.log("Refresh")
    },

  componentDidMount(){
      this._fetchBooks();
  },

  render: function() {
    console.log(this.state.books)

    return (
      <div>
        {this.state.books.map(function(book){
          return (
            <div>
              <h3 className="warning">{book.title}</h3>
              <img src={book.image_url}/>
              <hr/>

            </div>
          )
       })}
      <button onClick={this._clickIt}>Refresh</button>
     </div>
   )
  }
});

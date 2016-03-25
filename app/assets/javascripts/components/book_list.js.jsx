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

  _clickRefresh(event){
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

  <div className="react_display">
        {this.state.books.map(function(book){
          return (
            <div>
              <h4>{book.title}</h4>
              <img src={book.image_url}/>
            </div>
          )
       })}

    <div className="react_button">
      <button onClick={this._clickRefresh} className="waves-effect waves-light btn">Refresh</button>
    </div>
  </div>
   )
  }
});

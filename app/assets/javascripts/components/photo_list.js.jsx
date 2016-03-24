var PhotoList = React.createClass({

getInitialState(){
  return {
    books: []
  }
},

componentWillMount(){
    var component = this;
    component.fetchBooks()
    this.autoUpdatingInterval = setInterval(function(){
      component.fetchBooks()
    }, 3000)
  },

  componentWillUnMount(){
   // Clear the interval
   clearInterval(this.autoUpdatingInterval)
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

  render: function() {
    return <div className="photo-list">
      {this.state.books.map(function(book){

   var cardClasses = "book " + book.book_image + " card-square mdl-card mdl-shadow--2dp"

   return <div key={book.id} className={cardClasses}>
          <div className="mdl-card__title mdl-card--expand" style={cardStyle} >
            <h2 className="mdl-card__title-text">{book.name}</h2>
          </div>

          </div>
       </div>
     })}

   </div>

   ;
 }
});

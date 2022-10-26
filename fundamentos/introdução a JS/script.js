const form = document.getElementById('form');
const inputTitle = form.querySelector('#title');
const inputCover = form.querySelector('#cover');
const checkboxWatched = form.querySelector('#watched');
const movies = []

function submitNewMovie(event){
  event.preventDefault()
  
  const newMovie = {
    title: inputTitle.value,
    cover: inputCover.value,
    watched: checkboxWatched.checked
  }
  movies.push(newMovie)
  
  console.log(movies)
}

form.addEventListener('submit', submitNewMovie)
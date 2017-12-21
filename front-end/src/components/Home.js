import React, { Component } from 'react';
import $ from 'jquery';
// import GetNews from '../actions/GetNews';


class Home extends Component{
	constructor(){
		super();
		this.state = {
			newsList: [{}]
		}
	};
	componentDidMount(){

		var url = 'https://newsapi.org/v2/top-headlines?' +
		          'sources=bbc-news&' +
		          'apiKey=51b83858455a455dbb7ba5e2bf5aeb19';
		$.getJSON(url, (response)=>{
			console.log(response.articles)
			var newsArray = [];
			response.articles.map((news)=>{
				newsArray.push(news);
			});
			this.setState({
				newsList: newsArray
			})
			console.log(newsArray);
			console.log(this.state);
		})

	}
	render(){
		console.log(this.state.newsList[0])
			return(

				<div>{this.state.newsList[0].title}</div>	
			


			)
		
	}
}

export default Home;
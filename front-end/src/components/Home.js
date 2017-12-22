import React, { Component } from 'react';
import $ from 'jquery';
// import GetNews from '../actions/GetNews';


class Home extends Component{
	constructor(){
		super();
		this.state = {
			nflNewsList: [{}],
			espnNewsList: [{}]
		}
	};
	componentDidMount(){

		var urlNFL = 'https://newsapi.org/v2/top-headlines?' +
		          'sources=nfl-news&' +
		          'apiKey=51b83858455a455dbb7ba5e2bf5aeb19';
		$.getJSON(urlNFL, (response)=>{
			var nflNewsArray = [];
			response.articles.map((news)=>{
				nflNewsArray.push(news);
			});
			this.setState({
				nflNewsList: nflNewsArray
			})
		})

		var urlESPN = 'https://newsapi.org/v2/top-headlines?' +
		          'sources=espn&' +
		          'apiKey=51b83858455a455dbb7ba5e2bf5aeb19';
		$.getJSON(urlESPN, (response)=>{
			console.log(response)
			var espnNewsArray = [];
			response.articles.map((news)=>{
				espnNewsArray.push(news);
			});
			this.setState({
				espnNewsList: espnNewsArray
			})
			console.log(espnNewsArray);
			console.log(this.state);
		})

	}
	render(){
		console.log(this.state.nflNewsList[0])
			return(
				<div className="container">
					<div className="row">
						<div className="nfl.com">
							<div>
								<h3>
									<a href={this.state.nflNewsList[0].url}>
										{this.state.nflNewsList[0].title}
									</a>
								</h3>

							</div>	
							<div>
								<a href={this.state.nflNewsList[0].url}>
									<img key={0} alt="" src={this.state.nflNewsList[0].urlToImage} />
								</a>
							</div>
							<div>
								{this.state.nflNewsList[0].description}
							</div>
						</div>
						<div className="espn.com">
							<div>
								<h3>
									<a href={this.state.espnNewsList[0].url}>
										{this.state.espnNewsList[0].title}
									</a>
								</h3>

							</div>	
							<div>
								<a href={this.state.espnNewsList[0].url}>
									<img key={0} alt="" src={this.state.espnNewsList[0].urlToImage} />
								</a>
							</div>
							<div>
								{this.state.espnNewsList[0].description}
							</div>
						</div>
					</div>
				</div>
			


			)
		
	}
}

export default Home;
import React, { Component } from 'react';
import $ from 'jquery';
import cors from 'cors';
// import GetNews from '../actions/GetNews';


class MyTeams extends Component{
	constructor(){
		super();
		this.state = {
			myTeamNewsList: [{}]
		}
	};
	componentDidMount(){

		var urlMyTeam = 'http://api.sportradar.us/nfl-ot2/teams/33405046-04ee-4058-a950-d606f8c30852/profile.json?api_key=93hqpgg3bp7g499rkbwe25as';

		$.getJSON(urlMyTeam, (response)=>{
			console.log(response)
			var myTeamNewsArray = [];
			response.articles.map((news)=>{
				myTeamNewsArray.push(news);
			});
			this.setState({
				myTeamNewsList: myTeamNewsArray
			})
			console.log(myTeamNewsArray);
			console.log(this.state);
		})

		// $.ajax({
  //         url: 'http://api.sportradar.us/nfl-ot2/teams/33405046-04ee-4058-a950-d606f8c30852/profile.json?api_key=93hqpgg3bp7g499rkbwe25as',
  //         type: 'GET',
  //         dataType: 'json',
  //         data: 'data',
  //         success: function() { alert('hello!'); },
  //         error: function() { alert('boo!'); },
  //         beforeSend: function(xhr){xhr.setRequestHeader('X-Test-Header', 'test-value')}
  //       });

	}


	render(){
		console.log(this.state.myTeamNewsList[0])
			return(
				<div className="container">
					<div className="row">
						<div className="nfl.com">
							<div>
								<h3>
									<a href={this.state.myTeamNewsList[0].url}>
										{this.state.myTeamNewsList[0].title}
									</a>
								</h3>

							</div>	
							<div>
								<a href={this.state.myTeamNewsList[0].url}>
									<img key={0} alt="" src={this.state.myTeamNewsList[0].urlToImage} />
								</a>
							</div>
							<div>
								{this.state.myTeamNewsList[0].description}
							</div>
						</div>
						<div className="espn.com">

						</div>
					</div>
				</div>
			


			)
		
	}
}

export default MyTeams;
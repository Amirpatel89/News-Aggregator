import React, { Component } from 'react';
import $ from 'jquery';
// import GetNews from '../actions/GetNews';


class Home extends Component{
	constructor(){
		super();
		this.state = {
			graphics: [{}],
		}
	};
	componentDidMount(){

	}
	render(){
			return(
				<div className="container-fluid">
					<div className="row">
						<div className="title">Easy-Pc</div>
					</div>
					<div className="Headers">Motherboards</div>
					<div className="Headers">Processors</div>
					<div className="Headers">Graphics Cards</div>
					<div className="Headers">Ram</div>
					<div className="Headers">Storage</div>



				</div>

			)
		
	}
}

export default Home;
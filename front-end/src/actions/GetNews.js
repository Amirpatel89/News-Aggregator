export default function(){
		var url = 'https://newsapi.org/v2/top-headlines?' +
		          'sources=bbc-news&' +
		          'apiKey=51b83858455a455dbb7ba5e2bf5aeb19';

		var req = new Request(url);

		fetch(req)
		    .then(function(response) {
		        console.log(response.json());
		    })
		return(
			<div></div>
		)
};

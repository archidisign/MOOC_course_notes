// A simple react component
"use strict";

// Create a component that represents someone's biography
class Bio extends React.Component {
    // React components have a render method to describe how to draw them on the DOM
    render() {
        // Figure out the proper article
        let article = "a";
        ["a", "e", "i", "o", "u"].forEach((d) => {
            if(this.props.description.startsWith(d)) {
                article = "an";
            }
        });
        return (
            <div>
                <h1>{this.props.name}</h1>
                <p>Hello, my name is {this.props.name} and I am {article} {this.props.description}.</p>
            </div>
        )
    }
}

// Render the Bio component in the `root` element
ReactDOM.render(
    <Bio name="Arthur" description="aardvark" />,
    document.getElementById('root')
);
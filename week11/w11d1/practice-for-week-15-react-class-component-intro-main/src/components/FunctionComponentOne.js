//import { useState } from 'react';
import { Component } from 'react';
import FunctionComponentTwo from './FunctionComponentTwo';

class ClassComponentOne extends Component { 
  constructor(props) { 
    super(props);
    this.state = { 
      count: 0,
      message: ''
    }
  }

  handleClick(props) { 
    this.setState({message: 'yay, you;re fucking doing it'})
  }

  render (){
    // const FunctionComponentOne = () => {
    //   const [count, setCount] = useState(0);
    //   const [message, setMessage] = useState('');
    
      return (
        <div className='center'>
          <h1>C;ass Component One</h1>
          <div className='one'>
            <button onClick={() => {
              this.setState(prevState => ({
                count: prevState.count - 1
              }));
            }}>
              Decrement
            </button>
            <button onClick={() => {
              this.setState(prevState => ({
                count: prevState.count + 1
              }))
            }}>
              Increment
            </button>
      
            <input
              type='text'
              value={undefined}
              onChange={e => this.setState({ message: e.target.value})}
              placeholder='Enter Your Message'
            />
            <button onClick={(e) => this.handleClick(e)}>Clear</button>
          </div>
      
          <FunctionComponentTwo count={undefined} message={undefined} />
        </div>
      );
    };
  }


export default ClassComponentOne

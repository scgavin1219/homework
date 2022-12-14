import { Route, Switch } from 'react-router-dom';

import Navbar from './components/Navbar.js';

import ClassTitan from './components/classComponents/ClassTitan.js';
import FunctionKuiper from './components/classComponents/FunctionKuiper.js';
const App = () => {
  return (
    <div className='main-container'>
      <Navbar />
      <Switch>
        <Route exact path='/'>
          <div className='welcome'>
            <h1>Welcome! Choose Which Cat You Want to Play With</h1>
          </div>
        </Route>
        <Route path='/titan'>
          <FunctionTitan />
        </Route>
        <Route path='/kuiper'>
          <FunctionKuiper />
        </Route>
      </Switch>
    </div>
  );
};

export default App;

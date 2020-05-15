import {createStore, combineReducers, applyMiddleware} from 'redux';
import * as home from './home/reducer';
import thunk from 'redux-thunk';
import logger from 'redux-logger';


let store = createStore(
  combineReducers({...home}),//多个Reducer
  applyMiddleware(thunk,logger)//添加中间件
);

export default store;

import React from 'react';
import ReactDOM from 'react-dom';
import * as serviceWorker from './serviceWorker';
import Page from './Page';
import * as apis from './axios';
import { AppContainer } from 'react-hot-loader';
// import { AlitaProvider, setConfig } from 'redux-alita';
import './style/lib/animate.css';
import './style/antd/index.less';
import './style/index.less';
// import { Provider } from "react-redux"
import {AlitaProvider, setConfig }  from "./store/store";
setConfig(apis);
// const render = (Component) => { // 增加react-hot-loader保持状态刷新操作，如果不需要可去掉并把下面注释的打开

    // ReactDOM.render(
    //         <Provider store={store}>
    //             <Page />
    //         </Provider>
    //     ,
    //     document.getElementById('root')
    // );
// };

// render(Page);

ReactDOM.render(
    // <AppContainer>
    <AlitaProvider >
        <Page />
    </AlitaProvider>,
    // </AppContainer>
    document.getElementById('root')
);
serviceWorker.register();

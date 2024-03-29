import React, { Component } from 'react';
import Routes from './routes';
import DocumentTitle from 'react-document-title';
import SiderCustom from './components/SiderCustom';
import HeaderCustom from './components/HeaderCustom';
import { Layout, notification, Icon } from 'antd';
import { ThemePicker } from './components/widget';
// import { connectAlita } from 'redux-alita';

import { checkLogin } from './utils';
import store   from "./store/store";
import {connectAlita}  from "./store/store";
const { Content, Footer } = Layout;

type AppProps = {
    setAlitaState: (param: any) => void;
    auth: any;
    responsive: any;
};

class App extends Component<AppProps> {

    state = {
        collapsed: false,
        title: '',
    };
    componentWillMount() {

        let next =store.dispatch

        console.log(store.dispatch);
//@ts-ignore
        store.dispatch=(action:any)=>{
            console.log(action,"我进来了")
            next(action)
            console.log(action,"我出去了！！")
        }
        store.subscribe(()=>{
            console.log(store.getState(),'获取存储值')
        })
        store.dispatch({
            type: 'SAVEIMG',
            path: '123456',
        });


        const { setAlitaState } = this.props;
        let user,
            storageUser = localStorage.getItem('user');
        user = storageUser && JSON.parse(storageUser);
        // user && receiveData(user, 'auth');
        user && setAlitaState({ stateName: 'auth', data: user });
        // receiveData({a: 213}, 'auth');
        // fetchData({funcName: 'admin', stateName: 'auth'});
        this.getClientWidth();
        window.onresize = () => {
            console.log('屏幕变化了');
            this.getClientWidth();
        };
    }
    componentDidMount() {
        const openNotification = () => {
            notification.open({
                message: '博主-hahajj',
                description: (
                    <div>
                        <p>
                            GitHub地址：{' '}
                            <a
                                href="https://github.com/hahajj"
                                target="_blank"
                                rel="noopener noreferrer"
                            >
                                https://github.com/hahajj
                            </a>
                        </p>
                        <p>
                            博客地址：{' '}
                            <a
                                href="https://hahajj.github.io/"
                                target="_blank"
                                rel="noopener noreferrer"
                            >
                                https://hahajj.github.io/
                            </a>
                        </p>
                    </div>
                ),
                icon: <Icon type="smile-circle" style={{ color: 'red' }} />,
                duration: 0,
            });
            localStorage.setItem('isFirst', JSON.stringify(true));
        };
        const storageFirst = localStorage.getItem('isFirst');
        if (storageFirst) {
            const isFirst = JSON.parse(storageFirst);
            !isFirst && openNotification();
        }
    }
    getClientWidth = () => {
        // 获取当前浏览器宽度并设置responsive管理响应式
        const { setAlitaState } = this.props;
        const clientWidth = window.innerWidth;
        setAlitaState({ stateName: 'responsive', data: { isMobile: clientWidth <= 992 } });
        // receiveData({isMobile: clientWidth <= 992}, 'responsive');
    };
    toggle = () => {
        this.setState({
            collapsed: !this.state.collapsed,
        });
    };
    render() {
        const { title } = this.state;
        const { auth = { data: {} }, responsive = { data: {} } } = this.props;
        return (
            <DocumentTitle title={title}>
                <Layout>
                    {!responsive.data.isMobile && checkLogin(auth.data.permissions) && (
                        <SiderCustom collapsed={this.state.collapsed} />
                    )}
                    <ThemePicker />
                    <Layout style={{ flexDirection: 'column' }}>
                        <HeaderCustom
                            toggle={this.toggle}
                            collapsed={this.state.collapsed}
                            user={auth.data || {}}
                        />
                        <Content style={{ margin: '0 16px', overflow: 'initial', flex: '1 1 0' }}>
                            <Routes auth={auth} />
                        </Content>
                        <Footer style={{ textAlign: 'center' }}>
                            React-Admin ©{new Date().getFullYear()} Created by 851678482@qq.com
                        </Footer>
                    </Layout>
                </Layout>
            </DocumentTitle>
        );
    }
}

export default connectAlita(['auth', 'responsive'])(App);
// export default
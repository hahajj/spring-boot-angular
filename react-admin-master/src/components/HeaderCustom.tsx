/**
 * Created by hao.cheng on 2017/4/13.
 */
import React, { Component } from 'react';
import screenfull from 'screenfull';
import avater from '../style/imgs/b1.jpg';
import SiderCustom from './SiderCustom';
import { Menu, Icon, Layout, Badge, Popover } from 'antd';
import { gitOauthToken, gitOauthInfo } from '../axios';
import { queryString } from '../utils';
import { withRouter, RouteComponentProps, Link } from 'react-router-dom';
import { PwaInstaller } from './widget';
import { connectAlita } from '../store/store';
// import { connectAlita } from 'redux-alita';
const { Header } = Layout;
const SubMenu = Menu.SubMenu;
const MenuItemGroup = Menu.ItemGroup;

type HeaderCustomProps = RouteComponentProps<any> & {
    toggle: () => void;
    collapsed: boolean;
    user: any;
    responsive?: any;
    path?: string;
    auth?:any
};
type HeaderCustomState = {
    user: any;
    visible: boolean;
};

class HeaderCustom extends Component<HeaderCustomProps, HeaderCustomState> {
    state = {
        user: '',
        visible: false,
    };
    componentDidMount() {
        const QueryString = queryString() as any;
        let _user,
            storageUser = localStorage.getItem('user');

        _user = (storageUser && JSON.parse(storageUser)) || '测试';
        if (!_user && QueryString.hasOwnProperty('code')) {
            gitOauthToken(QueryString.code).then((res: any) => {
                gitOauthInfo(res.access_token).then((info: any) => {
                    this.setState({
                        user: info,
                    });
                    localStorage.setItem('user', JSON.stringify(info));
                });
            });
        } else {
            this.setState({
                user: _user,
            });
        }
    }
    screenFull = () => {
        if (screenfull.isEnabled) {
            screenfull.request();
        }
    };
    menuClick = (e: { key: string }) => {
        e.key === 'logout' && this.logout();
    };
    logout = () => {
        localStorage.removeItem('user');
        localStorage.removeItem('token');
        this.props.history.push('/login');
    };
    popoverHide = () => {
        this.setState({
            visible: false,
        });
    };
    handleVisibleChange = (visible: boolean) => {
        this.setState({ visible });
    };
    render() {
        const { responsive = { data: {} } } = this.props;
        const { auth = {} } = this.props;
        // console.log(responsive,auth)
         let storageUser = localStorage.getItem('user');
        const avatarLogo:any=storageUser&&JSON.parse(storageUser).avatar||avater
        return (
            <Header className="custom-theme header">
                {responsive.data.isMobile ? (
                    <Popover
                        content={<SiderCustom popoverHide={this.popoverHide} />}
                        trigger="click"
                        placement="bottomLeft"
                        visible={this.state.visible}
                        onVisibleChange={this.handleVisibleChange}
                    >
                        <Icon type="bars" className="header__trigger custom-trigger" />
                    </Popover>
                ) : (
                    <Icon
                        className="header__trigger custom-trigger"
                        type={this.props.collapsed ? 'menu-unfold' : 'menu-fold'}
                        onClick={this.props.toggle}
                    />
                )}

                <Menu
                    mode="horizontal"
                    style={{ lineHeight: '64px', float: 'right' }}
                    onClick={this.menuClick}
                >
                    <Menu.Item key="pwa">
                        <PwaInstaller />
                    </Menu.Item>
                    <Menu.Item key="full" onClick={this.screenFull}>
                        <Icon type="arrows-alt" onClick={this.screenFull} />
                    </Menu.Item>
                    <Menu.Item key="1">
                        <Badge count={25} overflowCount={10} style={{ marginLeft: 10 }}>
                            <Icon type="notification" />
                        </Badge>
                    </Menu.Item>
                    <SubMenu
                        title={
                            <span className="avatar">
                                <img src={avatarLogo} alt="头像" />
                                <i className="on bottom b-white" />
                                 <span>{this.props.user.userName}</span>
                            </span>

                        }
                    >
                        <MenuItemGroup title="用户中心">
                            <Menu.Item key="setting:1">你好 - {this.props.user.userName}</Menu.Item>
                            <Menu.Item key="setting:2">
                                <span>个人信息</span>
                                <Link to='/app/extension/User'>个人信息</Link>
                            </Menu.Item>
                            <Menu.Item key="logout">
                                <span onClick={this.logout}>退出登录</span>
                            </Menu.Item>
                        </MenuItemGroup>
                        <MenuItemGroup title="设置中心">
                            <Menu.Item key="setting:3">个人设置</Menu.Item>
                            <Menu.Item key="setting:4">系统设置</Menu.Item>
                        </MenuItemGroup>
                    </SubMenu>
                </Menu>
                <style>{`
                    .avatar>span {
                         margin-left: 8px;
                    }
                `}</style>
            </Header>
        );
    }
}

// 重新设置连接之后组件的关联类型
//@ts-ignore
const HeaderCustomConnect: React.ComponentClass<
    HeaderCustomProps,
    HeaderCustomState
> = connectAlita(['responsive'])(HeaderCustom);
// const HeaderCustomConnect = connectAlita(['responsive'])(HeaderCustom);
// console.log(HeaderCustomConnect)
export default withRouter(HeaderCustomConnect);

/*
 * File: Visitor.tsx
 * Desc: 个人中心
 * File Created: 2019-10-25 22:31:37
 * Author: hahajj
 * ------
 * Copyright 2019 - present, hahajj
 */
import React from 'react';
// import BreadcrumbCustom from '../BreadcrumbCustom';
import { Row, Col, Card, Icon, Divider, Typography } from 'antd';
import { userInfo } from '../../axios';
import ArticleTag  from './center/ArticleTag';
import EchartsProjects from '../dashboard/EchartsProjects';


type UserParamsState = {
    auth: any;
};
type ExampleAnimationsState = {
    userInfo: any;
    notice: any;
    tags: any;
};

const { Text } = Typography;
const storageUser = localStorage.getItem('user')
const userId:any=storageUser&&JSON.parse(storageUser).uid
const avatar:any=storageUser&&JSON.parse(storageUser).avatar
class PersonalSetting extends React.Component<UserParamsState,ExampleAnimationsState>  {
    constructor(props: any) {
        super(props);
        console.log("初始化")
        const { auth: nextAuth = {}, } = this.props;
        this.state = {
            userInfo: {},
            notice: [],
            tags: [],
        };
        ;

        userInfo({ id: userId }).then(res => {
            console.log("数据更新",this.props)
            this.setState({userInfo:res.data.info,notice:res.data.notice,tags:res.data.tags})
        });


    }

    componentWillMount() {
        console.log("开始加载")
    }
    render() {
        const {tags,userInfo,notice}=this.state

        return (
            <div>
                <Row>
                    <Col span={8}>
                        <div className="userInfo">
                            <Card title="">
                                <img className="imageAvatar"
                                     src={userInfo.avatar}/>
                                <p>{userInfo.signature}</p>

                                <div className="detail" >
                                    <p> <Icon type="zhihu" /><span>{ userInfo.title}</span></p>
                                    <p> <Icon type="google" /><span>{ userInfo.groupName}</span></p>
                                    <p>
                                        <Icon type="environment" />
                                        <span> { userInfo.province}&nbsp;&nbsp;&nbsp;
                                            { userInfo.city}</span>

                                    </p>
                                </div>
                                <Divider dashed />
                                <div className="detail">
                                    <div className="tagsTitle">标签</div>
                                    {tags.map((item:any,index:number) => {
                                        return (
                                            <span
                                                key={item.label+0}
                                            >
                                                {/*<Icon type='google' />*/}
                                                {/*<span>google</span>*/}
                                                <Text code>{ item.label}</Text>
                                            </span>
                                        );
                                    })
                                    }
                                </div>

                                <Divider dashed />
                                <div className="detail">
                                    <div className="tagsTitle">团队</div>
                                    <Row>
                                        {notice.map((item:any,index:number) => {
                                            return (
                                                <Col span={12} style={{marginBottom:20}}>
                                            <span className="avatarImg"
                                                  key={item.id}
                                            >   <img src={item.logo} alt=""/>
                                                <span style={{marginLeft: 20,fontSize:14,fontFamily: 'cursive'}}>{ item.member}</span>
                                            </span>
                                                </Col>

                                            );
                                        })

                                        }
                                    </Row>
                                </div>

                            </Card>

                        </div>

                    </Col>
                    <Col span={16}>
                        <div>
                            <ArticleTag auth={userId} avatar={avatar}/>
                        </div>

                    </Col>
                </Row>
                <style>{`
                    .imageAvatar {
                         width: 104px;
                         height: 104px;
                         margin-bottom: 20px;
                    }
                    .userInfo{
                         text-align:center;
                         font-family: cursive;
                    }
                    .detail{
                         display: inline-block;
                         width:80%;
                         text-align:left
                    }
                     .detail p span{
                        margin-left:10px
                    }
                      .avatarImg img,#userInfo img {
                         height:24px;
                         width:24px;
                         border-radius: 500px;
                    }
                `}</style>

            </div>

        );
    }

}


export default PersonalSetting;

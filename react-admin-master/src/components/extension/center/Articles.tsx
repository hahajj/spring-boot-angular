/*
 * File: QueryParams.js
 * Desc: query参数demo
 * File Created: 2018-11-25 23:18:09
 * Author: hahajj
 * Copyright 2018 - present, hahajj
 */
import React, { Component } from 'react';
import { List, Avatar, Icon } from 'antd';
import { articles } from '../../../axios';
import { func } from 'prop-types';

type ArticlesProps = {
    auth: any;
    avatar: any;
};
type ArticlesState = {
    data: any;
}


function timestep(time:string) {
    console.log(time)
    return time.substr(0, 10)
}
class Articles extends Component<ArticlesProps, ArticlesState> {
    constructor(props: any) {
        super(props);
        this.state = {
            data: [],
        };
        console.log(this.props);
        articles({ id: this.props.auth }).then(res => {
            console.log('子组件数据更新', this.props);
            this.setState({ data: res.data });
        });
    }

    renderOL(item: any) {
        const { avatar } = this.props;
        if (item) {

            return <List.Item key={item.title}
                              actions={[<span><Avatar src={avatar}/> <a target="_blank" href={avatar}>孔明</a></span> , <span>发布在 <a target="_blank" href={item.href}>{item.href}</a></span>,<span>{timestep(item.updatedAt)}</span>]}


                              extra={

                                  [<span style={{ marginRight: 8, color: 'rgba(0, 0, 0, 0.45)' }}><Icon
                                      type="star"/>{item.star}</span>,
                                      <span style={{ marginRight: 8, color: 'rgba(0, 0, 0, 0.45)' }}><Icon
                                          type="like"/>{item.likes}</span>,
                                      <span style={{ marginRight: 8, color: 'rgba(0, 0, 0, 0.45)' }}><Icon
                                          type="message"/>{item.message}</span>]
                              }
            >
                <List.Item.Meta  title={item.title} description={item.content}/>


            </List.Item>;
        }
    }

    render() {
        const { data } = this.state;
        return (
            <div id="userInfo">
                <List
                    size="large"
                    bordered
                    itemLayout='vertical'
                    dataSource={data}
                    renderItem={item => this.renderOL(item)}

                />
                <style>{`
                #userInfo .ant-list-item-extra{
                    margin: auto;
                }
                #userInfo .ant-list-item-main{
                    padding-right:10px
                }
                `}</style>
            </div>


        );
    }
}

export default Articles;

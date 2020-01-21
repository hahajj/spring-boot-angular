/*
 * File: QueryParams.js
 * Desc: query参数demo
 * File Created: 2018-11-25 23:18:09
 * Author: hahajj
 * Copyright 2018 - present, hahajj
 */
import React, { Component } from 'react';
import {Tabs } from 'antd';
import  Articles from './Articles';

type ArticleTagProps = {
    auth: any;
    avatar:any
};
const { TabPane } = Tabs;

class ArticleTag extends Component<ArticleTagProps> {
    constructor(props: any) {
        super(props);
    }

    render() {
        const { auth,avatar } = this.props;
        return (
            <Tabs defaultActiveKey="1" >
                <TabPane tab="文章" key="1">
                    <Articles auth={auth} avatar={avatar}></Articles>
                </TabPane>
                <TabPane tab="应用" key="2">
                </TabPane>
                <TabPane tab="项目" key="3">
                </TabPane>
            </Tabs>
        );
    }
}

export default ArticleTag;

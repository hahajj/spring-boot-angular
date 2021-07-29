/**
 * Created by hao.cheng on 2017/4/15.
 */
import React from 'react';
import { Table, Icon, Button, Row, Col, Card, Form, Input, Tooltip, Cascader, Checkbox, Select, Drawer } from 'antd';
import SubmitForm from '../forms/SubmitForm'
import {apiList} from  '../../axios/index'
import store from  '../../store/store'
type ExampleAnimationsProps = {};
type ExampleAnimationsState = {
    data: any;
    count: number;
    deleteIndex: number;
    visible:boolean,
};

class BasicTable extends React.Component<ExampleAnimationsProps, ExampleAnimationsState> {
    constructor(props: any) {
        super(props);
        this.columns = [
            {
                title: '名称',
                dataIndex: 'title',
                key: 'title',
                render: (text: any) => <span>{text}</span>,
            },
            {
                title: '人员',
                dataIndex: 'owner',
                key: 'owner',
            },
            {
                title: '描述',
                dataIndex: 'subDescription',
                key: 'subDescription',
            },
            {
                title: '时间',
                dataIndex: 'updatedAt',
                key: 'updatedAt',
            },
            {
                title: 'Action',
                key: 'action',
                render: (text: any, record: any,index: number) => (
                    <span>
                {/*<Button>Action 一 {record.name}</Button>*/}
                <span className="ant-divider" />
                <Button onClick={() => this.deleteONe(record, index)}>删除</Button>
                <span className="ant-divider" />
                {/*<Button className="ant-dropdown-link">*/}
                    {/*More actions <Icon type="down" />*/}
                {/*</Button>*/}
            </span>
                ),
            },
        ];
        this.state = {
            data :[
            ],
            count: 2,
            deleteIndex: -1,
            visible:false,
        };
    }
    columns: any;
    componentWillMount() {
       this.getData()
    }
    deleteONe=(record:any,index: number)=>{
        const dataSource = [...this.state.data];
        dataSource.splice(index, 1);
        this.setState({ deleteIndex: record.key });
        setTimeout(() => {
            this.setState({ data:dataSource });
        }, 200);

    }
    handleAdd=()=>{
        this.setState({visible:true})

    }
    handleSubmit=()=>{

    }
    getData=()=>{
        apiList({id: store.getState().alitaState.auth.data.uid, pageNum: 1, pageSize: 10}).then(res=>{
            this.setState({
                data: res.data.list
            });
         })
    }
    onClose=()=>{
        this.setState({visible:false})
        this.getData()
    }
    render() {
        const {data,visible}=this.state
        const columns=this.columns
        return (<div><Button className="editable-add-btn mb-s" onClick={this.handleAdd}>新增</Button> <Table columns={columns} dataSource={data} pagination={{ pageSize: 5 }} />
            <Drawer
                title="新增"
                placement="right"
                closable={false}
                onClose={this.onClose}
                visible={visible}
                width={"450px"}
            >
                <SubmitForm changeData={this.onClose}></SubmitForm>
            </Drawer>

        </div>);
    }
}




export default BasicTable;

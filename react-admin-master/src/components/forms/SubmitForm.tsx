/**
 * Created by hao.cheng on 2017/4/13.
 */
import React, { Component } from 'react';
import {FormComponentProps} from 'antd/lib/form/Form';
import {addApiList} from  '../../axios/index'
import store from  '../../store/store'
import {
    Card,
    Form,
    Input,
    Select, DatePicker,
    Button,
} from 'antd';
import { FormProps } from 'antd/lib/form';
const FormItem = Form.Item;
const Option = Select.Option;



// type BasicFormProps ={
//     changeData: any
// }&FormProps
interface BasicFormProps extends FormComponentProps {
    changeData: ()=>void,
}
class SubmitForms extends Component<BasicFormProps> {
    state = {
        confirmDirty: false,
        options :[
            { value: 210, label: '瑞大昌' },
            { value: 208, label: '卡色' },
            { value: 1, label: 'hahajj' },
        ]
    };
    handleSubmit = (e: React.FormEvent) => {

        e.preventDefault();
        this.props.form &&
        this.props.form.validateFieldsAndScroll((err, values) => {
            if (!err) {
               const owners:any= this.state.options.find(item=>{return values.visitorId==item.value})
                const val=Object.assign({userId:store.getState().alitaState.auth.data.uid,owner:owners.label},values)
                addApiList(val).then(res=>{
                    this.props.changeData()
                })
                console.log('Received values of form: ', values);
            }
        });
    };

    cancel=()=>{
        this.props.changeData()
    }
    render() {
        const { options } = this.state;
        const { getFieldDecorator } = this.props.form!;
        return (
            <div className="gutter-example">
                                <Form onSubmit={this.handleSubmit}>
                                    <FormItem  label="名称" hasFeedback>
                                        {getFieldDecorator('title', {
                                        })(<Input />)}
                                    </FormItem>
                                    <FormItem label="描述" hasFeedback>
                                        {getFieldDecorator('subDescription', {
                                        })(<Input />)}
                                    </FormItem>
                                    <FormItem label="人员" hasFeedback>
                                        {getFieldDecorator('visitorId', {
                                        })( <Select   >
                                            {options.map(item => (
                                                <Option key={item.value} value={item.value}>
                                                    {item.label}
                                                </Option>
                                            ))}
                                        </Select>)}

                                </FormItem>

                                    <FormItem label="日期" hasFeedback>
                                        {getFieldDecorator('createdAt', {
                                        })(     <DatePicker
                                            format="YYYY-MM-DD HH:mm:ss"

                                        /> )}

                                    </FormItem>
                                    <FormItem >
                                        <Button type="primary" htmlType="submit" size="large">
                                            新增
                                        </Button>
                                        <Button onClick={()=>this.cancel()}>
                                            取消
                                        </Button>
                                    </FormItem>
                                </Form>
            </div>
        );
    }
}

const SubmitForm =Form.create<BasicFormProps>()(SubmitForms)
export default SubmitForm;

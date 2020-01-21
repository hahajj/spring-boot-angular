/**
 * Created by hao.cheng on 2017/4/16.
 */
import React from 'react';
import { Form, Icon, Input, Button, Checkbox } from 'antd';
import { PwaInstaller } from '../widget';
import { connectAlita } from 'redux-alita';
import { RouteComponentProps } from 'react-router';
import { FormProps } from 'antd/lib/form';
import { admin } from '../../axios';

const FormItem = Form.Item;
type LoginProps = {
    setAlitaState: (param: any) => void;
    auth: any;
    loginFlag:false;
} & RouteComponentProps &
    FormProps;

class Login extends React.Component<LoginProps> {
    componentDidMount() {
        const { setAlitaState } = this.props;
        setAlitaState({ stateName: 'auth', data: null });
    }

    componentDidUpdate(prevProps: LoginProps) {

        // React 16.3+弃用componentWillReceiveProps
        const { auth: nextAuth = {}, history } = this.props;
        console.log(JSON.stringify(nextAuth),1111)
        // const { history } = this.props;
        if (nextAuth.data && nextAuth.data.uid) {
            // 判断是否登陆
            localStorage.setItem('user', JSON.stringify(nextAuth.data));
            history.push('/');
        }
    }

    handleSubmit = (e: React.FormEvent) => {
        e.preventDefault();
        this.props.form!.validateFields((err, values) => {
            if (!err) {
                console.log('Received values of form: ', values);
                const { auth: nextAuth = {}, history } = this.props;
                const { setAlitaState } = this.props;
                if (values.userName === 'guest' && values.password === 'guest') {
                    // setAlitaState({ funcName: 'guest', stateName: 'auth' });
                    nextAuth.data= { userName: "游客"}
                    localStorage.setItem('user', JSON.stringify(nextAuth.data));
                    history.push('/');
                } else {
                    const data={ userName: values.userName, password: values.password }
                    admin(data).then((res: any) => {
                        if (res.code == 1) {
                            nextAuth.data= {uid: res.data.content.id, permissions: ['auth/authPage/visit','auth/authPage/edit','auth/testPage'], role: "系统管理员", roleType: 1, userName: res.data.content.userName,avatar:res.data.content.avatar}
                            localStorage.setItem('user', JSON.stringify(nextAuth.data));
                            localStorage.setItem('token', res.data.token);
                           history.push('/');
                        } else {
                        }
                    });
                }
            } else {
            }
        });
    };
    gitHub = () => {
        // window.location.href =
        //     'https://github.com/login/oauth/authorize?client_id=792cdcd244e98dcd2dee&redirect_uri=http://localhost:3006/&scope=user&state=reactAdmin';
    };

    render() {
        const { getFieldDecorator } = this.props.form!;
        return (
            <div className="login">
                <div className="login-form">
                    <div className="login-logo">
                        <span>React Admin</span>
                        <PwaInstaller/>
                    </div>
                    <Form onSubmit={this.handleSubmit} style={{ maxWidth: '300px' }}>
                        <FormItem>
                            {getFieldDecorator('userName', {
                                rules: [{ required: true, message: '请输入用户名!' }],
                            })(
                                <Input
                                    prefix={<Icon type="user" style={{ fontSize: 13 }}/>}
                                    placeholder="管理员输入admin, 游客输入guest"
                                />,
                            )}
                        </FormItem>
                        <FormItem>
                            {getFieldDecorator('password', {
                                rules: [{ required: true, message: '请输入密码!' }],
                            })(
                                <Input
                                    prefix={<Icon type="lock" style={{ fontSize: 13 }}/>}
                                    type="password"
                                    placeholder="管理员输入admin, 游客输入guest"
                                />,
                            )}
                        </FormItem>
                        <FormItem>
                            {getFieldDecorator('remember', {
                                valuePropName: 'checked',
                                initialValue: true,
                            })(<Checkbox>记住我</Checkbox>)}
                            <span className="login-form-forgot" style={{ float: 'right' }}>
                                忘记密码
                            </span>
                            <Button
                                type="primary"
                                htmlType="submit"
                                className="login-form-button"
                                style={{ width: '100%' }}
                            >
                                登录
                            </Button>
                            <p style={{ display: 'flex', justifyContent: 'space-between' }}>
                                <span>或 现在就去注册!</span>
                                <span onClick={this.gitHub}>
                                    <Icon type="github"/>
                                    (第三方登录)
                                </span>
                            </p>
                        </FormItem>
                    </Form>
                </div>
            </div>
        );
    }
}

export default connectAlita(['auth'])(Form.create()(Login));

/**
 * Created by hahajj on 2017/7/31.
 */
import { Component } from 'react';
import  { connectAlita } from '../../store/store';
// import  { connectAlita } from 'redux-alita';
type AuthWidgetProps = {
    auth: any;
    children: (param: any) => React.ReactElement;
};
// @ts-nocheck
class AuthWidget extends Component<AuthWidgetProps> {
    render() {
        const { auth = {} } = this.props;
        console.log(this.props.auth,connectAlita(['auth']))
        return this.props.children(auth.data || {});
    }
}

export default connectAlita(['auth'])(AuthWidget);

/**
 * 路由组件出口文件
 * hahajj 2018年6月24日
 */
import Loadable from 'react-loadable';
import Loading from './widget/Loading';
import BasicTable from './tables/BasicTables';
import Echarts from './charts/Echarts';
import Recharts from './charts/Recharts';
import Buttons from './ui/Buttons';
import Spins from './ui/Spins';
import Modals from './ui/Modals';
import Notifications from './ui/Notifications';
import Tabs from './ui/Tabs';
import Banners from './ui/banners';
import Drags from './ui/Draggable';
import Dashboard from './dashboard/Dashboard';
import Gallery from './ui/Gallery';
import AuthBasic from './auth/Basic';
import RouterEnter from './auth/RouterEnter';
import Cssmodule from './cssmodule';
import MapUi from './ui/map';
import QueryParams from './extension/QueryParams';
import Visitor from './extension/Visitor';
import User from './extension/User';
import PersonalSetting from './extension/PersonalSetting';



const WysiwygBundle = Loadable({
    // 按需加载富文本配置
    loader: () => import('./ui/Wysiwyg'),
    loading: Loading,
});

export default {
    BasicTable,
    Echarts,
    Recharts,
    Buttons,
    Spins,
    Modals,
    Notifications,
    Tabs,
    Banners,
    Drags,
    Dashboard,
    Gallery,
    AuthBasic,
    RouterEnter,
    WysiwygBundle,
    Cssmodule,
    MapUi,
    QueryParams,
    Visitor,
    User,
    PersonalSetting,
} as any;

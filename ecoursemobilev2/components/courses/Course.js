import { View, Text, ScrollView, Image } from "react-native";
import MyStyles from "../../styles/MyStyles";
import React from 'react';
import APIs, { endpoints } from "../../configs/APIs";
import { ActivityIndicator, Chip, List, Searchbar } from "react-native-paper";

const Course = () => {
    const [categories, setCategories] = React.useState(null);
    const [courses, setCourses] = React.useState([]);
    const [loading, setLoading] = React.useState(false);
    const [q, setQ] = React.useState("");
    const [cateId, setCateId] = React.useState("");

    const loadCates = async () => {
        try {
            let res = await APIs.get(endpoints['categories']);
            setCategories(res.data);
        } catch (ex) {
            console.error(ex);
        }
    }

    const loadCourses = async () => {
        setLoading(true);
        let url = `${endpoints['courses']}?q=${q}&category_id=${cateId}`;
        try {
            let res = await APIs.get(url);
            setCourses(res.data.results);
        } catch (ex) {
            console.error(ex);
        } finally {
            setLoading(false);
        }
    }

    React.useEffect(() => {
        loadCates();
    }, []);

    React.useEffect(() => {
        loadCourses();
    }, [q, cateId]);

    return (
        <View style={MyStyles.container}>
            <Text style={MyStyles.subjects}>DANH MỤC KHÓA HỌC</Text>
            <View style={[MyStyles.row, MyStyles.wrap]}>
            <Chip mode={cateId?"flat":"outlined"} onPress={() => setCateId("")} style={MyStyles.margin} icon="tag">Tất cả</Chip>
                {categories === null ? <ActivityIndicator /> : <>
                    {categories.map(c => <Chip mode={cateId===c.id?"outlined":"flat"} onPress={() => setCateId(c.id)} style={MyStyles.margin} key={c.id} icon="tag">{c.name}</Chip>)}
                </>}
            </View>
            <View>
            <Searchbar placeholder="Tìm khóa học" value={q} onChangeText={setQ}/>
            </View>
            <ScrollView>
                {loading && <ActivityIndicator />}
                {courses.map(c => <List.Item key={c.id} title={c.subject} description={c.created_data} left={() => <Image style={MyStyles.avatar} source={{uri: c.image}} />} />)}
            </ScrollView>
        </View>
    );
};

export default Course;
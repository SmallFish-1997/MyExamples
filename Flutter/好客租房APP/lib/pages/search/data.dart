class RoomListItemData {
  final String id;
  final String title;
  final String subTitle;
  final String imageUri;
  final List<String> tags;
  final int price;
  const RoomListItemData(
      {this.title,
      this.subTitle,
      this.imageUri,
      this.tags,
      this.price,
      this.id});
}

const List<RoomListItemData> defaultSearchList = [
  RoomListItemData(
      title: '朝阳门南大街 2室1厅 8300元',
      subTitle: "二室/114/东|北/朝阳门南大街",
      imageUri:
          "https://tva1.sinaimg.cn/large/006y8mN6ly1g6wtu9t1kxj30lo0c7796.jpg",
      price: 1200,
      id: 'roomDetail/1',
      tags: ["近地铁", "集中供暖", "新上", "随时看房"]),
  RoomListItemData(
      title: '整租 · CBD总部公寓二期 临近国贸 精装修 随时拎包入住',
      subTitle: "一室/110/西/CBD总部公寓二期",
      imageUri:
          "https://tva1.sinaimg.cn/large/006y8mN6ly1g6wtu5s7gcj30lo0c7myq.jpg",
      price: 6000,
      id: 'roomDetail/1',
      tags: ["近地铁", "随时看房"]),
  RoomListItemData(
      title: '朝阳门南大街 2室1厅 8300元',
      subTitle: "二室/114/东|北/朝阳门南大街",
      imageUri:
          "https://tva1.sinaimg.cn/large/006y8mN6ly1g6wtu5s7gcj30lo0c7myq.jpg",
      price: 1200,
      id: 'roomDetail/1',
      tags: ["近地铁", "集中供暖", "新上", "随时看房"]),
  RoomListItemData(
      title: '整租 · CBD总部公寓二期 临近国贸 精装修 随时拎包入住',
      subTitle: "一室/110/西/CBD总部公寓二期",
      imageUri:
          "https://tva1.sinaimg.cn/large/006y8mN6ly1g6wtu9t1kxj30lo0c7796.jpg",
      price: 6000,
      id: 'roomDetail/1',
      tags: ["近地铁", "随时看房"]),
];
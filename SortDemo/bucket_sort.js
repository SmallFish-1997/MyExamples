// 桶排序 - 分三步
// 结构 - [[],[],[]]
// 1. 分类
let num_arr = [3,2,6,8,2,1,7,4,9]

let min = Math.min(...num_arr);
let max = Math.max(...num_arr);
let size = 3; // 二维数组length
let count = Math.floor(max-min) / size + 1; // 每个二维数组的

// 2. 排序


// 3. 合并
/*
 * By 511 at 21/07/21/ 周三 10:05
 * @Desc: node 命令行调用，接收 name 参数，在文件中新增一条记录
*/
const fs = require('fs');

// process.argv拿到命令行调用时的参数，第三个起为自定义参数
const link = process.argv[2];
const desc = process.argv[3];

try {
	// read from file
	const rawData = fs.readFileSync('db.json', 'utf-8')
	let slidesArray = JSON.parse(rawData.toString())

	// remove existed
	if (slidesArray.some(slide=>slide.link===link)) {
		slidesArray = slidesArray.filter(slide=>slide.link!==link)
	}
	slidesArray.push({link,desc});

	// write to file
	fs.writeFileSync('db.json', JSON.stringify(slidesArray));
} catch (e) {
	console.error(e);
}

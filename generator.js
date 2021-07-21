/*
 * By 511 at 21/07/21/ 周三 10:03
 * @Desc: 根据同目录下的 文件，生成列表插入 body
*/

// read from file
import linkArray from './db.json';

generateElementFragment(linkArray)

// generate link element
function generateLinkElement(link) {
	const tag = document.createElement('a');
	tag.href = `/${link}`;
	tag.innerHTML = link;
	return tag
}

// generate fragment and append to body
function generateElementFragment(linkArray) {
	const fragment = document.createDocumentFragment();
	const elements = linkArray.map(generateLinkElement);
	elements.forEach(element => fragment.appendChild(element));
	document.body.appendChild(fragment);
}
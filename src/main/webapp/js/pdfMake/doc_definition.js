var documentDefinition = {

    //content : pdf의 내용을 정의 
    content: [
        {
            text: '노량진6재정비촉진구역 주택재개발정비사업(4차)',
            style: 'header',
            pageBreak: 'after'
        },
        {
            text: '사업개요',
            style: 'subheader'
        },
        {
            ul: [
                '사업명' + '노량진6재정비촉진구역 주택재개발정비사업(4차)',
                '위치/규모 : 동작구 노량진동 294-220일대',
                '사업기간 : 사업시행인가일(2014.0.1)~',
                '사업시행자 : 노량진6재정비촉진구역 주택재개발정비사업조합',
            ]
        },
        {
            style: 'tableExample',
            table: {
                widths: [100, '*', 200, '*'],
                body: [
                    ['width=100', 'star-sized', 'width=200', 'star-sized'],
                    ['fixed-width cells have exactly the specified width', {
                        text: 'nothing interesting here',
                        italics: true,
                        color: 'gray'
                    }, {
                            text: 'nothing interesting here',
                            italics: true,
                            color: 'gray'
                        }, {
                            text: 'nothing interesting here',
                            italics: true,
                            color: 'gray'
                        }]
                ]
            }
        }//테이블 그리기 
    ],
    //하단의 현재페이지 / 페이지 수 넣기 
    footer: function (currentPage, pageCount) {
        return [{ text: currentPage.toString() + ' / ' + pageCount, alignment: 'center' }];
    },
    //필요한 스타일 정의하기 
    styles: {
        header: {
            fontSize: 28,
            alignment: 'center',
            margin: [80, 160]
            // bold: true, //현재 pretendard-regular 만 적용되어있어서 불가.
        },
        subheader: {
            fontSize: 18,
        },
        tableExample: {
            margin: [0, 5, 0, 15]
        }
    },
    //디폴트 스타일
    defaultStyle: {
        fontSize: 12,
        lineHeight: 1.4,
    },

    // 페이지 크기 용지의 크기 사이즈 넣기 또는 특정 사이즈 넣기 { width: number, height: number }
    pageSize: 'A4',

    /* 페이지 방향 portrait : 가로 , landscape : 세로 */
    pageOrientation: 'portrait',

};
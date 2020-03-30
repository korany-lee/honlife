var birthCheckAction = { // 생년월일검증
    birthGuide : null,
    _birthCheck : {},
    birthCount : false,
    _serverTimeGet : {},
    serverTimeCheck : false, // 서버시간은 1회만 가져오기
    formCheck : function(){
        var $self = this;

        $self.birthCount = true;

        $self._birthCheck = {
            'validator' : true,
            'text':null,
        };
        if(!$self.serverTimeCheck){
            $self.serverTime();
            $self.serverTimeCheck = true;
        }
        var _serverTime = _serverTimeGet;
        var _birthData = {
            'year': $.trim($('[name=birth_year]').val()),
            'month': $.trim($('[name="birth[]"]').eq(0).val()),
            'day': $.trim($('[name="birth[]"]').eq(1).val()),
        }
        var year = _birthData.year;
        var numYear = Number(year);
        var month = _birthData.month;
        var numMonth = Number(month);
        var day = _birthData.day;
        var numDay = Number(day);
        var minYear = _serverTime.year - 100;
        var lastDay = ( new Date( year, month, 0) ).getDate();
        var dateBirth = new Date(numYear, numMonth - 1, numDay);
        var dateNow = new Date(_serverTime.year, _serverTime.month - 1, _serverTime.day);
        var dateUnderFourteen = new Date(_serverTime.year - 14, _serverTime.month - 1, _serverTime.day);
        var dateOverHundred = new Date(_serverTime.year - 100, _serverTime.month - 1, _serverTime.day);
        
        // 값이 없을때는 검증하지 않음
        if (year === '' && month === '' && day === '') {
            $self.birthCount = false;
            return;
        }

        if ( !/\d{4}/.test(year) ) {
            $self._birthCheck.text = '태어난 년도 4자리를 정확하게 입력해주세요.';
            $self._birthCheck.validator = false;
            return;
        }

        // 디폴트값인 공백인 경우 체크 하지 않음
        if ( ( month !== '' && !/^(?:0?[1-9]|1[012])$/.test(month) ) || ((year !== ''|| day !== '') && month === '')) {
            $self._birthCheck.text = '태어난 월을 정확하게 입력해주세요.';
            $self._birthCheck.validator = false;
            return;
        }

        // 디폴트값인 공백인 경우 체크 하지 않음 & 월의 마지막달이 틀렸을때
        if ( ( day !== '' && !/^(?:0?[1-9]|[12]\d|3[01])$/.test(day) ) || numDay > lastDay || ((year !== ''|| month !== '') && day === '')) {
            $self._birthCheck.text = '태어난 일을 정확하게 입력해주세요.';
            $self._birthCheck.validator = false;
            return;
        }

        // 만 14세 미만
        if (dateBirth > dateUnderFourteen) {
            $self._birthCheck.text = '만 14세 미만은 가입이 불가합니다.';
            // 생년월일이 미래로 입력되었어요.
            if (dateBirth > dateNow) {
                $self._birthCheck.text = '생년월일이 미래로 입력되었어요.';
            }
            $self._birthCheck.validator = false;
            return;
        }

        // 100년전 
        if (dateBirth <= dateOverHundred) {
            $self._birthCheck.text = '생년월일을 다시 확인해주세요.';
            $self._birthCheck.validator = false;
            return;
        }
    }, validatorForm : function(){
        var $self = this;
        if(!$self.birthCount) return true; // 값이 없을때는 검증하지 않음
        $self.formCheck();
        if(! $self._birthCheck.validator ){
            alert('생년월일을 확인해주세요.');
            $("[name=birth_year]").focus();
            return false;
        }else{
            return true;
        }
    }, validatorText : function(){
        var $self = this;

        $self.formCheck();

        $self.birthGuide = $('.field_birth .txt_guide .txt');
        if($self._birthCheck.validator){
            $self.birthGuide.removeAttr('class').addClass('txt').hide();
            $self.birthGuide.text('');
        }else{
            $self.birthGuide.removeAttr('class').addClass('txt').show();
            $self.birthGuide.addClass('bad');
            $self.birthGuide.text($self._birthCheck.text);
        }
    }, serverTime : function(){ // 서버시간가져오기
        var $self = this;
        var xmlHttp;
        //분기하지 않으면 IE에서만 작동된다.
        if (window.XMLHttpRequest) { // IE 7.0 이상, 크롬, 파이어폭스일 경우 분기
            xmlHttp = new XMLHttpRequest();
            xmlHttp.open('HEAD',window.location.href.toString(),false);
            xmlHttp.setRequestHeader("Content-Type", "text/html");
            xmlHttp.send('');
        }else if (window.ActiveXObject) {
            xmlHttp = new ActiveXObject('Msxml2.XMLHTTP');
            xmlHttp.open('HEAD',window.location.href.toString(),false);
            xmlHttp.setRequestHeader("Content-Type", "text/html");
            xmlHttp.send('');
        }
        var st = xmlHttp.getResponseHeader("Date");
        var curDate = new Date(st);
        _serverTimeGet = {
            'year' : Number(curDate.getFullYear()),
            'month' : Number(curDate.getMonth()+1),
            'day' : Number(curDate.getDate())
        }
    }
};

//특수문자 입력 방지
function preventSpecialChars($self, type) {
    var str = $self.val();
    var regExp = /(?:[^\w\s\uAC00-\uD7A3\u3131-\u314E\u314F-\u3163\u318D\u119E\u11A2\u2022\u2025a\u00B7\uFE55]|_)+/g;
    var msg = '이름에 한글, 영어, 숫자 외 특수문자를 사용할 수 없습니다.';
    if(type === 'write'){
        if(regExp.test(str)){
            $self.val(str.replace(regExp, ''));
        }
    }else{
        if(regExp.test(str)){
            alert(msg);
            if(type === 'result'){
                return false;
            }
        }
        return true;
    }
};
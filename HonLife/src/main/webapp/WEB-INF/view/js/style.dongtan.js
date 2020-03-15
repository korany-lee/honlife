// javaScript Document
////////////// 팝업들 /////////////////

function popupSample() {// 샘플팝업
	window.open('../COMMON/popup.html','popupSample','scrollbars=no,width=800,height=540,left=100,top=100,resizable=yes');
}

$(document).ready(function () {

//	jQuery(".head").addClass("headdongtan");
	jQuery(".mainWrap").addClass("headdongtan");
	jQuery(".mainWrap").addClass("mainWrapdongtan");
	jQuery(".subWrap").addClass("subWrapdongtan");
	jQuery(".foot").addClass("footdongtan");

	jQuery("input:disabled").addClass("disabled");
	jQuery("textarea:disabled").addClass("disabled");
	jQuery("input:checkbox").addClass("checkbox");
	jQuery("input:radio").addClass("radio");

	jQuery("input:text").add("input:password").add("textarea").on({
	  focus: function() {
		jQuery(this).addClass("focus");
	  },
	  blur: function() {
		jQuery(this).removeClass("focus");
	  },
	  mouseover: function() {
		jQuery(this).addClass("hover");
	  },
	  mouseout: function() {
		jQuery(this).removeClass("hover");
	  }
	});

	//입력폼에 자동완성차단
	uiAutocompleteOff = function(){
		jQuery("input").attr("autocomplete","off");
		jQuery("textarea").attr("autocomplete","off");
	}
	uiAutocompleteOff();

	//기본 UL태그  첫li.first  끝li.last
	ulListSet = function(){
		var ulList= jQuery('ul');
		ulList.find("li:first-child").addClass("first");
		ulList.find("li:last-child").addClass("last");
	}
	ulListSet();


	tableTypeA = function(){
	var tableTypeA = jQuery('.tableTypeA');
	tableTypeA.find(" tbody tr:first").addClass("first");
	tableTypeA.find(" tbody tr:last").addClass("last");

	tableTypeA.find("tr td:first").addClass("first");
	tableTypeA.find("tr td:last").addClass("last");
	tableTypeA.find("tr th:first").addClass("first");
	tableTypeA.find("tr th:last").addClass("last");
	}
	tableTypeA();


	tableTypeD = function(){
	var tableTypeD = jQuery('.tableTypeD');
	tableTypeD.find(" tbody tr:first").addClass("first");
	tableTypeD.find(" tbody tr:last").addClass("last");
	var tableTypeDtr = jQuery('.tableTypeD tr');
	tableTypeDtr.find("td:first").addClass("first");
	tableTypeDtr.find("td:last").addClass("last");
	tableTypeDtr.find("th:first").addClass("first");
	tableTypeDtr.find("th:last").addClass("last");
	}
	tableTypeD();

	tableCol = function(){
	var tableCol = jQuery('table colgroup');
	tableCol.find("col:eq(0)").addClass("col1");
	tableCol.find("col:eq(1)").addClass("col2");
	tableCol.find("col:eq(2)").addClass("col3");
	tableCol.find("col:eq(3)").addClass("col4");
	tableCol.find("col:eq(4)").addClass("col5");
	tableCol.find("col:eq(5)").addClass("col6");
	tableCol.find("col:eq(6)").addClass("col7");
	tableCol.find("col:eq(7)").addClass("col8");
	tableCol.find("col:eq(8)").addClass("col9");
	tableCol.find("col:eq(9)").addClass("col10");
	}
	tableCol();

	// UiForm 적용 클래스들..
	//jQuery("select.uiform , input.uiform , textarea.uiform").uniform();


	//모달 윈도우 배경//
	jQuery(".mdScreen").height(jQuery(document).height() );
	jQuery(window).resize(function() {
	 	jQuery(".mdScreen").height(jQuery(document).height() )  ;
	});



	//헤더 탑바로가기 메뉴
	jQuery(".destination a.btn").on("click",function(e){
		if(jQuery(".destination .list").is(":visible")){
			jQuery(".destination .list").hide();
		}else{
			jQuery(".destination .list").show();
		}
		e.stopPropagation();
	});
	jQuery(document).click(function(){
		jQuery(".destination .list").hide();
	});
	jQuery(".destination .list").click(function(e){
		e.stopPropagation();
	});


	bbsListSet = function(){
	var bbsList = jQuery('table');
	bbsList.find(" tbody tr:first").addClass("first");
	bbsList.find(" tbody tr:last").addClass("last");
	}
	bbsListSet();


    //한글 영어 일본어 중국어 메뉴 20180227 메인 수정
    jQuery(".globalBox a.btn").on("click",function(e){
        if(jQuery(".globalBox .list").is(":visible")){
            jQuery(".globalBox .list").hide();
            jQuery(this).parent().removeClass('on');
        }else{
            jQuery(".globalBox .list").show();
            jQuery(this).parent().addClass('on');
        }
        e.stopPropagation();
    });
    jQuery(document).click(function(){
        jQuery(".globalBox .list").hide();
        jQuery(".globalBox").removeClass('on');
    });


	jQuery('.gnbReservationBox, .btnGnbReservation').on('mouseover keyup',function(e){ // update 20140930 start
		e.stopPropagation();
		jQuery('.gnbReservationBox').queue('fx',[]).stop();
		if(!jQuery('.gnbReservationBox').is(':visible')){
			jQuery('.gnbReservationBox').show(0,function(){
				jQuery('.btnGnbReservation').attr('title','예약패널닫기');
			});
			jQuery(document).on('mouseover keyup',function(e){
				e.stopPropagation();
				if(jQuery('.gnbReservationBox').has(e.target).length === 0){
					jQuery('.gnbReservationBox').delay(100).hide(0,function(){
						jQuery('.btnGnbReservation').attr('title','예약패널열기');
					});

				}
			});
		}
	});  // update 20140930 end





	//푸터에있는 뉴스레터신청폼
	jQuery(".newsLetter input.newsEmail").val("");
	jQuery(".newsLetter input.newsEmail").on("focus", function(){
		var jQueryidTxt = jQuery(this).val();
		if ( jQueryidTxt ==("") ) {
			jQuery(this).addClass("uiFocus");
		}
	});
	jQuery(".newsLetter input.newsEmail").on("blur", function(){
		var jQueryidTxt = jQuery(this).val();
		if ( jQueryidTxt ==("") ) {
			jQuery(this).val("");
			jQuery(this).removeClass("uiFocus")
		}
	});


	/////////////////////////////////////


/// 셀렉트메뉴 스크립 ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	// Common
	var select_root = jQuery('div.uiSelectA');
	var select_value = jQuery('.myValue');
	var select_a = jQuery('div.uiSelectA>ul>li>a');
	var select_input = jQuery('div.uiSelectA>ul>li>input[type=radio]');
	var select_label = jQuery('div.uiSelectA>ul>li>label');

	// Radio Default Value
	jQuery('div.myValue').each(function(){
		var default_value = jQuery(this).next('.iList').find('input[checked]').next('label').text();
		jQuery(this).append(default_value);
	});

	// Line
	select_value.bind('focusin',function(){jQuery(this).addClass('outLine');});
	select_value.bind('focusout',function(){jQuery(this).removeClass('outLine');});
	select_input.bind('focusin',function(){jQuery(this).parents('div.uiSelectA').children('div.myValue').addClass('outLine');});
	select_input.bind('focusout',function(){jQuery(this).parents('div.uiSelectA').children('div.myValue').removeClass('outLine');});

	// Show
	function show_option(){
		jQuery(this).parents('div.uiSelectA:first').toggleClass('open');
	}

	// Hover
	function i_hover(){
		jQuery(this).parents('ul:first').children('li').removeClass('hover');
		jQuery(this).parents('li:first').toggleClass('hover');
	}

	// Hide
	function hide_option(){
		var t = jQuery(this);
		setTimeout(function(){
			t.parents('div.uiSelectA:first').removeClass('open');
		}, 1);
	}

	// Set Input
	function set_label(){
		var v = jQuery(this).next('label').text();
		jQuery(this).parents('ul:first').prev('.myValue').text('').append(v);
		jQuery(this).parents('ul:first').prev('.myValue').addClass('selected');
	}

	// Set Anchor
	function set_anchor(){
		var v = jQuery(this).text();
		jQuery(this).parents('ul:first').prev('.myValue').text('').append(v);
		jQuery(this).parents('ul:first').prev('.myValue').addClass('selected');
	}

	// Anchor Focus Out
	jQuery('*:not("div.uiSelectA a")').focus(function(){
		jQuery('ul').parent('.uiSelectA').removeClass('open');
	});

	select_value.click(show_option);
	select_root.find('ul').css('position','absolute');
	select_root.removeClass('open');
	select_root.mouseleave(function(){jQuery(this).removeClass('open');});
	select_a.click(set_anchor).click(hide_option).focus(i_hover).hover(i_hover);
	select_input.change(set_label).focus(set_label);
	select_label.hover(i_hover).click(hide_option);

	// Form Reset
	jQuery('input[type="reset"], button[type="reset"]').click(function(){
		jQuery(this).parents('form:first').find('.myValue').each(function(){
			var origin = jQuery(this).next('ul:first').find('li:first label').text();
			jQuery(this).text(origin).removeClass('selected');
		});
	});


/// 셀렉트메뉴 스크립 끝////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



	//첨부파일 선택 UI 공통
	jQuery(".uiAttachFile .fileInput").on("change", function(){
		jQuery(this).parent().parent().children(".fileLocation").val(this.value);
	});

	/// find a hotel 메뉴 20180227 메인 수정
	jQuery(".hotelBox a.btn").on("click",function(e){
		if(jQuery(".hotelBox .list").is(":visible")){
			jQuery(".hotelBox .list").hide();
            jQuery(this).parent().removeClass('on');
		}else{
			jQuery(".hotelBox .list").show();
            jQuery(this).parent().addClass('on');
		}
		e.stopPropagation();
	});
	jQuery(document).click(function(){
		jQuery(".hotelBox .list").hide();
        jQuery(".hotelBox").removeClass('on');
	});
	// jQuery(".hotelBox .list").click(function(e){
	// 	e.stopPropagation();
	// });

	jQuery('.stayList>li>ul>li').on('click', function(){
		jQuery(this).addClass('on').siblings().removeClass('on');
	})

});














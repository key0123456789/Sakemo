$(document).on('turbolinks:load', function(){

  var search_list = $("#words-search-result");

  function appendBrands(brand){
    var html = `<li class="words-search__helper__list suggest-word">
                  <a href="/brands/${ brand.id }/">
                    <div class="suggest-word__content">
                      <div class="suggest-word__content__right">
                        <div class="suggest-word__content__name">
                          ${ brand.name }
                        </div>
                      </div>
                      <div class="suggest-word__content__right">
                        <img src="/l_e_others_501.png" width="150" height="150">
                      </div>
                    </div>
                  </a>
                </li>`

    search_list.append(html);
  }

  function appendErrMsgToHTML(msg){
    var html = `<li class="words-search__helper__list">${ msg }</li>`

    search_list.append(html);
  }

  $('#search').on('keyup', function(){
  
    var input = $('#search').val();

    $.ajax({
      type: 'GET',
      url: '/top/search',
      data: { keyword: input },
      dataType: 'json'
    })

    .done(function(brands) {
      search_list.empty();

      if (brands.length !== 0) {
        brands.forEach(function(brand){
          appendBrands(brand);
        });
      }
      // else if (input.length === 0){
      //   search_list.empty();
      // }
      else {
        appendErrMsgToHTML("一致する日本酒はありません");
      }
    })
    .fail(function() {
      alert('日本酒の検索に失敗しました');
    });
  });

  // // クリックしたli要素のvalをフォームに入れる
  // $(document).on('click',".suggest-word", function(){
  //   var brandName = $(this).text();
    
  //   $('#search').val(brandName)
  //   search_list.empty();
  // });

});
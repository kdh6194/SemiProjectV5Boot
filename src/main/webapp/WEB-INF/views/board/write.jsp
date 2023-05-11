<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="UTF-8" %>

<c:if test="${empty sessionScope.UID}">
  <script>location.href="/";</script>
</c:if>

<div id="main">
  <script src="https://www.google.com/recaptcha/api.js"></script>

  <div class="mt-5">
    <i class="fa-solid fa-pen-to-square fa-2xl"> 게시판 </i>
    <hr>
  </div>

  <div class="row mt-5">
    <div class="row offset-2 col-4">
      <h4><i class="fa fa-plus-circle"> </i> 새글쓰기</h4>
    </div>
    <div class="col-4 text-end">
      <button type="button" class="btn btn-light">
        <i class="fa fa-list"> </i> 목록으로</button>
      </button>
    </div>
  </div>

  <div class="row mt-2 offset-2 col-8">
    <form class="card card-body bg-light"
          name="bdfrm" id="bdfrm">

      <div class="row">
        <label class="col-3 col-form-label text-danger text-end"
               for="title">제목</label>
        <div class="col-6">
          <input type="text" name="title" id="title"
                 class="form-control border-danger">
        </div>
      </div>

      <div class="row mt-2">
        <label class="col-3 col-form-label text-danger text-end"
               for="userid">작성자</label>
        <div class="col-6">
          <input type="text" name="userid" id="userid"
                 class="form-control border-danger bg-light"
                 readonly value="abc123">
        </div>
      </div>

      <div class="row mt-2">
        <label class="col-3 col-form-label text-danger text-end"
               for="content">본문</label>
        <div class="col-6">
                    <textarea name="content" id="content"
                              class="form-control border-danger" rows="15"></textarea>
        </div>
      </div>

      <div class="row mt-2">
        <label class="col-3 col-form-label text-danger text-end"
               for="g-recaptcha">자동가입방지</label>
        <div class="col-6">
          <div class="g-recaptcha"
               data-sitekey="6LdmIwgbAAAAAPO06Cyw44ZE0pkeDeMHEwVbgiM-"></div>
          <input type="hidden" name="grecaptcha" id="g-recaptcha">
        </div>
      </div>

      <div class="row mt-4 justify-content-center">
        <hr class="w-75">
        <div class="text-center">
          <button type="button" id="writebtn"
                  class="btn btn-primary">
            <i class="fa fa-check"> </i>입력완료
          </button>
          <button type="button" id="cancelbtn"
                  class="btn btn-danger">
            <i class="fa fa-remove"> </i>입력취소
          </button>
        </div>
      </div>

    </form>
  </div>

</div>

<script src="/assets/js/board.js"></script>
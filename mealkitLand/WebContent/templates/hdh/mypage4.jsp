<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>����/��ҳ���</title>
    <link rel="stylesheet" href="../../static/css/hdh/mypage4.css">
</head>
<body>
    <div class="wrap" style>
    <section id="contents" class="container">
        <div class="content-wrap">
            <div class="frame-sm">
                <div class="frame-left">
                    <div class="aside-menu-wrap">
                        <nav class="aside-menu">
                            <ul class="menu-list">
                                <li>
                                    <a class="menu">�� ��������</a>
                                    <ul class="depth2">
                                        <li>
                                            <a>ȸ������ ����</a>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a class="menu">�޴�</a>
                                    <ul class="depth2">
                                        <li class>
                                            <a>���� ��������</a>
                                        </li>
                                        <li class>
                                            <a>��� ��ȸ</a>
                                        </li>
                                        <li class>
                                            <a>����/��ҳ���</a>
                                        </li>
                                        <li class>
                                            <a>��ٱ���</a>
                                        </li>
                                        <li class>
                                            <a>�� �Խñ� ����/����</a>
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="frame-right">
                    <div class="frame-cnt-inner">
                        <form id="myPageOrderList">
                            <div class="menu-title-area">
                                <h3 class="title-menu">����/��ҳ���</h3>
                            </div>
                            <div class="search-box ui-toggle on" style="margin-top: 10px">
                                <div class="search-head">
                                    <p class="searn-period">��ȸ�Ⱓ 2023.03.19 ~ 2023.04.19(�ֱ� 1����)</p>
                                </div>
                                <div class="search-detail ui-toggle-content">
                                    <fieldset>
                                        <legend>�� �˻�</legend>
                                        <ul class="radio-list">
                                            <li>
                                                <div class="custom-radio">
                                                    <input type="radio" id="mypage-order-search-radio-2weeks" class="radio-btn-type2" name="mypage-order-search-radio" value="2WEEKS">
                                                    <label for="mypage-order-search-radio-2weeks">2����</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="custom-radio">
                                                    <input type="radio" id="mypage-order-search-radio-1month" class="radio-btn-type2" name="mypage-order-search-radio" value="1MONTH" checked="">
                                                    <label for="mypage-order-search-radio-1month">1����</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="custom-radio">
                                                    <input type="radio" id="mypage-order-search-radio-3months" class="radio-btn-type2" name="mypage-order-search-radio" value="3MONTHS">
                                                    <label for="mypage-order-search-radio-3months">3����</label>
                                            </li>
                                            <li>
                                                <div class="custom-radio">
                                                    <input type="radio" id="mypage-order-search-radio-6months" class="radio-btn-type2" name="mypage-order-search-radio" value="6MONTHS">
                                                    <label for="mypage-order-search-radio-6months">6����</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="custom-radio">
                                                    <input type="radio" id="mypage-order-search-radio-12months" class="radio-btn-type2" name="mypage-order-search-radio" value="12MONTHS">
                                                    <label for="mypage-order-search-radio-12months">12����</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="custom-radio">
                                                    <input type="radio" id="mypage-order-search-radio-period" class="radio-btn-type2 date-setting" name="mypage-order-search-radio" value="PERIOD">
                                                    <label for="mypage-order-search-radio-period">�Ⱓ����</label>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="period-setting ui-toggle-sub">
                                            <div class="input-group type-sm">
                                                <div class="input-group-form">
                                                    <div class="custom-checkbox">
                                                        <input type="checkbox" id="dlvTypeAll" class="checkbox dlvTypeAll" name="dlvTypeAll" value="N" checked="">
                                                        <label for="dlvTypeAll">
                                                            ��ü
                                                        </label>
                                                    </div>
                                                    <div class="custom-checkbox">
                                                        <input type="checkbox" id="dlvNrm" class="checkbox dlvType" name="dlvNrm" value="N" checked="">
                                                        <label for="dlvNrm">
                                                            �Ϲݹ��
                                                        </label>
                                                    </div>
                                                    <div class="custom-checkbox">
                                                        <input type="checkbox" id="dlvRtn" class="checkbox dlvType" name="dlvRtn" value="N" checked="">
                                                        <label for="dlvRtn">
                                                            ������
                                                        </label>
                                                    </div>
                                                </div>
                                                <div class="input-group-form text-right">
                                                    <div class="input-group-btn dis-inb">
                                                        <a href="javascript:;" onclick="onSubmitMyPageOrderSearch();"
                                                        class="btn-form btn-black">
                                                        <span>��ȸ�ϱ�</span>
                                                        </a>
                                                    </div>
                                                    <div class="input-group-btn dis-inb">
                                                        <button type="button" id="btnInit" class="btn-form btn-link-txt5">
                                                            <i class="ico-btn-refresh"></i>
                                                            <span>�ʱ�ȭ</span>
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                            </div>
                         </form>
                        <div class="no-data-typel">
                            <p class="message">�ֱ� 1���� ���� �ֹ������� �����ϴ�.  </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </section>
</body>
</html>
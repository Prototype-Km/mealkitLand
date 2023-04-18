<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>����������</title>
    <link rel="stylesheet" href="../../static/css/hdh/mypage1.css">
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
                <form id="frm" name="frm" action="/mypage/info/view" method="post" onsubmit="return false;">
                    <div class="frame-right" id="memberInfoContents">
                        <div class="frame-cnt-inner">
                            <div class="menu-title-area">
                                <h3 class="title-menu">ȸ������ ���� </h3>
                            </div><!--// menu-title-area -->
                                <div class="board-form type3">
                                    <div class="input-guide-box">
                                        <div class="inner">
                                            <h4 class="box-tit">��й�ȣ�� �Է����ּ���.</h4>
                                            <p class="txt">ȸ������ �������� ��ȣ�� ���� ��й�ȣ�� �ٽ� �ѹ� Ȯ�� �մϴ�.<br>��й�ȣ�� ������� �ʵ��� �������ּ���.</p>
                                            <div class="input-group type-lg w-full">
                                                <input type="password" id="password" name="password" class="input-text" placeholder="��й�ȣ �Է�">
                                                <span class="input-group-btn"><button type="button" class="btn-form btn-primary btn_submit"><span>Ȯ��</span></button></span>
                                            </div>
                                        </div>
                                    </div><!--// input-guide-box -->
                                </div><!--// board-form -->
                        </div><!--// frame-cnt-inner -->
                    </div><!--// frame-right -->
                <div>
                <input type="hidden" name="_csrf" value="c2aaf7a0-9a42-4e86-a92e-fb591e16c462">
                </div></form>
            </div>
        </div>
    </div>
	</section>
</body>
</html>
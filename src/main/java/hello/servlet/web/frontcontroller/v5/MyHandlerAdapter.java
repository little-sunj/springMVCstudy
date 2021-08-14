package hello.servlet.web.frontcontroller.v5;

import hello.servlet.web.frontcontroller.ModelView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface MyHandlerAdapter {

    boolean supports(Object handler);
    //handler = controller
    //어댑터가 해당 컨트롤러를 처리할 수 있는지 판단하는 메서드

    ModelView handle(HttpServletRequest request, HttpServletResponse response, Object handler) throws ServletException, IOException;
    //어댑터는 실제 컨트롤러를 호출하고, 그 결과로 ModelView를 반환
    //실제 컨트롤러가 ModelView를 반환하지 못하면 어댑터가 ModelView를 직접 생성해서라도 반환
}


/*
* v1 : 프론트 컨트롤러 도입
* v2 : view 분류. 단순 반복되는 뷰로직 분리
* v3 : model추가. 서블릿 종속성 제거. 뷰 이름 중복 제거
* v4 : 단순하고 실용적인 컨트롤러. v3와 비슷하지만 구현 입장에서 modelview를 직접 생성해서 반환하지 않도록 인터페이스 제공
* v5 : 어댑터 도입. 어댑터를 추가해 프레임워크를 유연하고 확장성 있게 설계
* */
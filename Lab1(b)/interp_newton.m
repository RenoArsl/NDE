function v = interp_newton(x, y, u)
    % 主要函數：計算 Newton 內插法的結果
    c = interp_newton_constr(x, y);  % 計算 Newton 內插係數
    v = interp_newton_eval(x, c, u); % 計算插值
    interp_newton_display(x, y, c);     % 顯示內插多項式
end
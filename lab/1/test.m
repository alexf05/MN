% Definirea intervalului
x = -10:0.1:10;

% Definirea functiilor
f = x.^2;
g = x.^3;
h = x.^4;

% Trasarea graficelor
figure;
plot(x, f, 'r', 'LineWidth', 2); hold on;
plot(x, g, 'g', 'LineWidth', 2);
plot(x, h, 'b', 'LineWidth', 2);
hold off;

% Adăugarea de etichete și legendă
title('Graficele functiilor f(x) = x^2, g(x) = x^3, h(x) = x^4');
xlabel('x');
ylabel('y');
legend('f(x) = x^2', 'g(x) = x^3', 'h(x) = x^4');
grid on;


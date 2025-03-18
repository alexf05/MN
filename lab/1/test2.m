% Definirea intervalului x cu pasul 3
x = 0:3:10;

% Calcularea valorilor lui y = sin(x)
y = sin(x);

% Trasarea graficului
figure;
plot(x, y, 'o-', 'LineWidth', 2, 'MarkerSize', 6, 'MarkerFaceColor', 'r');

title('Graficul functiei y = sin(x) pentru x cu pasul 3');
xlabel('x');
ylabel('y');
grid on;

% Experimentarea cu pasi mai mici
figure;
x_fine = 0:0.5:10;
y_fine = sin(x_fine);
plot(x_fine, y_fine, 'o-', 'LineWidth', 2, 'MarkerSize', 5, 'MarkerFaceColor', 'b');

title('Graficul functiei y = sin(x) pentru x cu pasul 0.5');
xlabel('x');
ylabel('y');
grid on;

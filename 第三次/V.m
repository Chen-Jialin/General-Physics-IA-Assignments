function V = V1(r1,r2,h1,h2,h3)
h = 0:0.01:(h1 + h2 +h3);
V = pi .* r1.^2 .* h .*(h >= 0 & h <= h1) + (pi .* r1.^2 .* h1 + pi .* (h - h1) .* (r1.^2 + (r1 + ((h - h1) .* (r2 - r1) / h3)).^2 + r1 * (r1 + (h - h1) .* (r2 - r1) / h3))/3) .* (h > h1 & h < (h1 + h3)) + (pi .* r1.^2 .* h1 + pi .* (r1.^2 + r2.^2 + r1 .* r2) .* h3 / 3 + pi .* (h - h1 - h3) .* r2.^2) .* (h >= (h1 + h3) & h <= (h1 + h2 + h3));
plot(h,V)
xlabel('h')
ylabel('V')
grid on
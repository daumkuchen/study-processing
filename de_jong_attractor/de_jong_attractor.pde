void setup(){

    size(720, 720, P3D);
    colorMode(HSB, 360, 100, 100, 100);
    blendMode(SCREEN);
    smooth();
    noStroke();
    textSize(20);

}

void draw(){

    float pA = 1.90 - frameCount / 4000.0;
    float pB = 0.30 + frameCount / 500.0;
    float pC = 1.90 - frameCount / 2000.0;
    float pD = 0.30 + frameCount / 500.0;
    float pE = 1.90 - frameCount / 1000.0;
    float pF = 0.30 + frameCount / 500.0;

    background(0, 0, 0, 100);
    translate(width / 2, height / 2, 0);

    fill(0, 0, 100, 100);
    text("pA: ", 240, 200); text(pA, 280, 200);
    text("pB: ", 240, 220); text(pB, 280, 220);
    text("pC: ", 240, 240); text(pC, 280, 240);
    text("pD: ", 240, 260); text(pD, 280, 260);
    text("pE: ", 240, 280); text(pE, 280, 280);
    text("pF: ", 240, 300); text(pF, 280, 300);

    rotateX(-frameCount * PI * 0.002);
    rotateY( frameCount * PI * 0.003);
    rotateZ( frameCount * PI * 0.002);

    float prevX = 0.0;
    float prevY = 0.0;
    float prevZ = 0.0;

    for (int i = 0; i < 50000; ++i) {

        // De Jong Attractor 3D 演算
        float x = sin(pA * prevY) - cos(pB * prevX);
        float y = sin(pC * prevZ) - cos(pD * prevY);
        float z = sin(pE * prevX) - cos(pF * prevZ);

        pushMatrix();
        translate(
            x * width / 7.0,
            y * height / 7.0,
            z * height / 7.0
        );
        fill(240, 40, 60, 100);
        ellipse(0, 0, 3, 3);
        popMatrix();

        prevX = x;
        prevY = y;
        prevZ = z;

    }

    saveFrame("render/####.png");
    if(frameCount >= 15 * 30){
        exit();
    }

}

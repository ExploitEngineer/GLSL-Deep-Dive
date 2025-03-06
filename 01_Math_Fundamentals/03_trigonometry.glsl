/*
1️⃣ What is Trigonometry?
Trigonometry is the study of angles and triangles. In GLSL, we use it for rotations, waves, oscillations, and circular motion.
A right triangle (a triangle with a 90° angle) is the key to understanding sine (sin), cosine (cos), and tangent (tan).
Right Triangle Terms:

H = Hypotenuse (longest side)
O = Opposite (side opposite to θ)
A = Adjacent (side next to θ)

📌 Understanding Sine (sin), Cosine (cos), and Tangent (tan) with Diagrams
1️⃣ The Right Triangle & Trigonometric Ratios
Let's start with a right triangle:

      /|
     / |   ← Opposite (O)
 H  /  |
   /___| ← Adjacent (A)
      θ

Function	Formula	    Meaning
sin(θ)	    O / H	    Ratio of Opposite to Hypotenuse
cos(θ)	    A / H	    Ratio of Adjacent to Hypotenuse
tan(θ)	    O / A	    Ratio of Opposite to Adjacent

2️⃣ Visualizing Sine and Cosine on a Circle
Now, let's move from a triangle to a unit circle (used in GLSL for rotations, waves, and circular motion).

         (0,1)
           |
    -1 ----+----> +1
           |
         (0,-1)

💡 If we take any point on this circle, it has x and y values:
📌 Cosine (cos) is the x-value
📌 Sine (sin) is the y-value

For example:
At 0° (right side) → (cos 0°, sin 0°) = (1, 0)
At 90° (top) → (cos 90°, sin 90°) = (0, 1)
At 180° (left side) → (cos 180°, sin 180°) = (-1, 0)
At 270° (bottom) → (cos 270°, sin 270°) = (0, -1)

3️⃣ Why is This Important for GLSL?
*/
//Sin creates smooth waves:
float y = sin(x);  // Oscillates between -1 and 1

// Cos and Sin make perfect circular motion:
vec2 pos = vec2(cos(time), sin(time));  // M
oves in a circle

/*
✅ Just memorize this:
Sine (sin θ) = O / H (Opposite ÷ Hypotenuse)
Cosine (cos θ) = A / H (Adjacent ÷ Hypotenuse)
Tangent (tan θ) = O / A (Opposite ÷ Adjacent)
*/


/*
3️⃣ How GLSL Uses Sin & Cos (Forget the Math)
Now, ignore triangles and just remember this for coding:

sin(x) gives a wave effect → Good for animations
cos(x) shifts the wave → Used for smooth movement
sin and cos together make circles → Used for rotating things
*/

/*
Just remember that swapping sin and cos doesn’t reverse the motion, and tan is the ratio of sin/cos.
*/

/*
90° rotation uses π/2 radians.
180° rotation uses π radians.
360° rotation (full circle) uses 2π radians.
*/

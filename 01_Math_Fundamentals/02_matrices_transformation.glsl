/*
1️⃣ What Are Matrices?
A matrix is a mathematical structure that holds multiple values in rows and columns. In GLSL, matrices are used for transformations like scaling, rotation, translation, and projection. GLSL supports 2x2, 3x3, and 4x4 matrices.
*/

/*
2️⃣ Matrix Initialization
We can define a matrix in different ways:
*/

// 🔹 Default Initialization
mat2 m2; // Creates an uninitialized 2x2 matrix
mat3 m3; // Creates an uninitialized 3x3 matrix
mat4 m4; // Creates an uninitialized 4x4 matrix
// 🔹 By default, these matrices are uninitialized, meaning they contain garbage values.


/*
🔹 Identity Matrix (Default Values)
A diagonal identity matrix is created when you initialize a matrix with a single value 1.0:
*/
mat2 m2 = mat2(1.0);  // 2x2 identity matrix
mat3 m3 = mat3(1.0);  // 3x3 identity matrix
mat4 m4 = mat4(1.0);  // 4x4 identity matrix
// An identity matrix is a special type of matrix where all the diagonal elements are 1, and everything else is 0.


// 🔹 Custom Initialization (Row-Major Order)
// You can assign values manually:
mat2 m2 = mat2(1.0, 2.0,
               3.0, 4.0);

mat3 m3 = mat3(1.0, 2.0, 3.0,
               4.0, 5.0, 6.0,
               7.0, 8.0, 9.0);

mat4 m4 = mat4(1.0, 2.0, 3.0, 4.0,
               5.0, 6.0, 7.0, 8.0,
               9.0, 10.0, 11.0, 12.0,
               13.0, 14.0, 15.0, 16.0);


// 🔹 GLSL matrices are stored in COLUMN-MAJOR order, meaning the values are assigned column by column.
// Example for mat3
1.0   4.0   7.0
2.0   5.0   8.0
3.0   6.0   9.0


/*
3️⃣ Accessing & Modifying Matrix Elements
You can access specific elements or columns of a matrix:
*/
// 🔹 Accessing Individual Element
mat3 = mat3(1.0, 2.0, 3.0,
            4.0, 5.0, 6.0,
            7.0, 8.0, 9.0);
float value = m[1][2];  // Access column 1, row 2


// 🔹 Accessing Entire Columns
vec3 col1 = m[0];  // First column (1.0, 4.0, 7.0)
vec3 col2 = m[1];  // Second column (2.0, 5.0, 8.0)


/*
4️⃣ Matrix Operations
Just like vectors, GLSL supports mathematical operations on matrices.
🔹 Scalar Operations
Multiplying or dividing a matrix by a scalar:
*/
mat3 m = mat3(1.0);
mat3 result = m * 2.0; // Multiply every element by 2


/*
🔹 Matrix-Vector Multiplication
Multiplying a matrix by a vector transforms the vector:
*/
mat3 trasnform = mat3(1.0, 0.0, 0.0,
                      0.0, 1.0, 0.0,
                      0.0, 0.0, 1.0);
vec3 position = vec3(2.0, 3.0, 1.0);
vec3 newPosition = transfrom * position; // Matrix-vector multiplication


/*
🔹 Matrix-Matrix Multiplication
Multiplying two matrices:
*/
mat3 A = mat3(1.0, 2.0, 3.0,
              4.0, 5.0, 6.0,
              7.0, 8.0, 9.0);

mat3 B = mat3(9.0, 8.0, 7.0,
              6.0, 5.0, 4.0,
              3.0, 2.0, 1.0);
mat3 C = A * B; // Performs matrix multiplication



/*
5️⃣ Matrix Transformations in 3D Graphics
🔹 Scaling
A scaling matrix changes the size of an object:
*/
mat4 scale = mat4(2.0, 0.0, 0.0, 0.0,
                  0.0, 2.0, 0.0, 0.0,
                  0.0, 0.0, 2.0, 0.0,
                  0.0, 0.0, 0.0, 1.0);


/*
🔹 Rotation
A rotation matrix rotates an object around an axis:
*/
float angle = radians(45.0);  // Convert degrees to radians
mat2 rotation = mat2(cos(angle), -sin(angle),
                     sin(angle), cos(angle));


/*
🔹 Translation (Only Works with mat4)
A translation matrix moves an object:
*/
mat4 translation = mat4(1.0, 0.0, 0.0, 2.0,
                        0.0, 1.0, 0.0, 3.0,
                        0.0, 0.0, 1.0, 4.0,
                        0.0, 0.0, 0.0, 1.0);

/*
✅ Summary
GLSL Matrices are mat2, mat3, and mat4.
Identity Matrix uses matX(1.0).
Access Elements using matrix[column][row].
Matrix Operations include scalar multiplication, matrix-vector multiplication, and matrix-matrix multiplication.
Transformations include Scaling, Rotation, and Translation.
*/


// Quizes

// INFO: First Quiz
mat2 m = mat2(2.0, 0.0,
              1.0, 3.0);
float value = m[1][0]; // Answer : B


// INFO: Second Quiz
mat3 scaleMatrix = mat3(2.0, 0.0, 0.0,
                        0.0, 2.0, 0.0,
                        0.0, 0.0, 1.0); // Answer : Reflection


/*
🔹 Matrices – Forget The Numbers, Think of Transformations
A matrix is just a way to change a shape by: 1️⃣ Scaling (Making it bigger/smaller)
2️⃣ Rotating (Spinning it)
3️⃣ Translating (Moving it)
*/


/*
🔹 Scaling – Making Something Bigger or Smaller
If you want to double the size of an object, you multiply by 2:
*/
mat2 scaleMatrix = mat2(2.0,  0.0,
                         0.0, 2.0);
/*
The 2.0 means "Make everything twice as big."
If you use 0.5, it makes everything smaller.
*/
vec2 newVertex = scaleMatrix * vertex;



/*
🔹 Rotation – Spinning an Object
If you want to rotate an object, you use sin and cos again!
*/
mat2 rotateMatrix = mat2(cos(angle), -sin(angle),
                         sin(angle), cos(angle));
/*
This makes the object spin based on angle.
If angle changes over time, the object keeps rotating.

To rotate a vertex:
*/

vec2 rotateVertex = rotateMatrix * vertex;


/*
🔹 Translation – Moving an Object
To move something in GLSL, you add a vector:
*/

vec2 newPosition = vertex + vec2(1.0, 0.5);

/*
The 1.0 moves it right
The 0.5 moves it up
✅ The object shifts position!
*/

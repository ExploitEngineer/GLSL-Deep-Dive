// INFO: 1️⃣ Vectors & Scalars in GLSL

// 📌 What are Scalars?
// A scalar is a single value (number). It can be an int, float or bool.
// Scalars are the building blocks of vectors.
float myNumber = 5.0;
int count = 10;
bool isOn = true;



// INFO: 📌 What are Vectors?
// A vector stores a multiple values together, GLSL provides:
/*
vec2 (2D vector) → (x, y)
vec3 (3D vector) → (x, y, z)
vec4 (4D vector) → (x, y, z, w)
*/


// 📌 Declaring Vectors
vec2 position = vec2(1.0, 2.0); // x = 1.0, y = 2.0
vec3 color = vec3(1.0, 0.0, 0.0); // Red color (RGB)
vec4 vertex = vec4(0.5, 0.2, 0.8, 1.0); // RGBA (with aplha)


// 📌 Accessing Vector Components
// INFO: vectors allow components-wise access using .x, .y, .z, .w
void main() {
    vec3 myVector = vec3(3.0, 4.0, 5.0);
    float firstValue = myVector.x; // 3.0
    float secondValue = myVector.y; // 4.0
    float thirdValue = myVector.z; // 5.0
}


// 📌 Vector Operations
// GLSL allows mathematical operations on vectors.

// 1️⃣ Addition & Subtraction
void addSum() {
    vec3 a = vec3(1.0, 2.0, 3.0);
    vec3 b = vec3(4.0, 5.0, 6.0);
    vec3 result = a + b; // (5.0, 7.0, 9.0)
    vec3 difference = a - b; // (-3.0, -3.0, -3.0)
}

// 2️⃣ Multiplication & Division (Scalar)
void MultiplyDivide() {
    vec3 a = vec3(2.0, 4.0, 6.0);
    vec3 scaled = a * 2.0; // (4.0, 8.0, 12.0)
    vec3 divided = a / 2.0; // (1.0, 2.0, 3.0)
}

// 3️⃣ Dot Product (dot(a, b))
void dotProduct() {
    vec3 a = vec3(1.0, 2.0, 3.0);
    vec3 b = vec3(4.0, 5.0, 6.0);
    float dotProduct = dot(a, b); // 1*4 + 2*5 + 3*6 = 32.0
}

// 4️⃣ Cross Product (cross(a, b))
void crossProduct() {
    vec3 a = vec3(1.0, 0.0, 0.0); // X-axis
    vec3 b = vec3(0.0, 1.0, 0.0); // Y-axis
    vec3 crossProduct = cross(a, b); // 0.0, 0.0, 1.0 > Z-axis
}


// NOTE: Vectors and Scalers Quizzes

// INFO: First Quiz
vec3 a = vec3(1.0, 2.0, 3.0);
vec3 b = vec3(4.0, 5.0, 6.0);
vec3 result = a + b; // Answer : 5.0, 7.0, 9.0


// INFO: Second Quiz
vec3 myVec = vec3(10.0, 20.0, 30.0);
float yValue = myVec.y; // Answer : 20.0


// INFO: Third Quiz
vec3 a = vec3(1.0, 2.0, 3.0);
vec3 b = vec3(4.0, 5.0, 6.0);
float dotResult = dot(a, b); // Answer : 4.0 + 10.0 + 18.0 = 32.0


// INFO: Fourth Quiz
vec3 a = vec3(1.0, 0.0, 0.0);
vec3 b = vec3(0.0, 1.0, 0.0);
vec3 crossProduct = cross(a, b); // Answer :


// INFO: Fifth Quiz
vec3 globalVec = vec3(1.0, 2.0, 3.0);
void newfun1() {
    globalVec = vec3(4.0, 5.0, 6.0);
} // Answer : throw an error

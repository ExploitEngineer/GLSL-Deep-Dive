## 🔹 What is GLSL?

GLSL (OpenGL Shading Language) is a C-like programming language used to write shaders, which run directly on the GPU for high-performance rendering. It is used in WebGL, Three.js, Unity, Unreal Engine, and many other real-time graphics applications.

## 🔹 What Are Shaders?

Shaders are small programs that run in parallel on the GPU to handle visual effects. There are two main types in WebGL:

1. **Vertex Shader** – Handles object transformations, positions, and effects at the vertex level.
2. **Fragment Shader (Pixel Shader)** – Handles colors, textures, and pixel effects.

**Bonus Shaders:** Geometry Shaders, Tessellation Shaders, Compute Shaders (Advanced)

---

## 1️⃣ Vectors & Scalars in GLSL

### 📌 What are Scalars?

A scalar is a single value (number). It can be an `int`, `float`, or `bool`.
Scalars are the building blocks of vectors.

### 📌 What are Vectors?

A vector stores multiple values together. GLSL provides:

* `vec2` (2D vector) → (x, y)
* `vec3` (3D vector) → (x, y, z)
* `vec4` (4D vector) → (x, y, z, w)

#### Declaring Vectors

```glsl
vec2 position = vec2(1.0, 2.0);        // x = 1.0, y = 2.0
vec3 color = vec3(1.0, 0.0, 0.0);      // Red color (RGB)
vec4 vertex = vec4(0.5, 0.2, 0.8, 1.0); // RGBA (with alpha)
```

### Understanding vec2, vec3, and vec4

#### What is `vec2`?

Used for 2D positions, movement, or texture coordinates.

```glsl
vec2 position = vec2(0.5, 0.3); // x = 0.5, y = 0.3
```

Use cases:

* Moving objects in 2D space
* Texture mapping (UV coordinates)

#### What is `vec3`?

Used for anything with 3 values:

* RGB Colors: `vec3 color = vec3(1.0, 0.0, 0.0);`
* 3D positions: `vec3 position = vec3(1.0, 2.0, 3.0);`

#### What is `vec4`?

Used for 4 components:

* RGBA Colors: `vec4 color = vec4(1.0, 0.5, 0.2, 0.8);`
* Homogeneous 3D Position: `vec4 position = vec4(1.0, 2.0, 3.0, 1.0);`

The `w` component is used in 3D transformations.

### 💡 Summary

| Type | Components   | Used For                             |
| ---- | ------------ | ------------------------------------ |
| vec2 | (x, y)       | 2D movement, UV textures             |
| vec3 | (x, y, z)    | 3D positions, colors (RGB), normals  |
| vec4 | (x, y, z, w) | RGBA colors, homogeneous coordinates |

---

### Global Variables vs Function Variables

In GLSL, global variables must be constant:

```glsl
const vec3 myVector = vec3(3.0, 4.0, 5.0); // ✅ Works
```

Or move them inside a function:

```glsl
void main() {
    vec3 myVector = vec3(3.0, 4.0, 5.0); // ✅ Works
}
```

### Why Do We Use `void` for `main()`?

GLSL's `main()` must not return a value. `void` means "this function doesn’t return anything".

---

### Dot Product vs Cross Product

#### Dot Product

Used for angles and lighting calculations.

```glsl
vec3 A = vec3(1.0, 2.0, 3.0);
vec3 B = vec3(4.0, 5.0, 6.0);
float dotResult = dot(A, B); // = 32
```

#### Cross Product

Gives a perpendicular vector:

```glsl
vec3 A = vec3(1, 0, 0);
vec3 B = vec3(0, 1, 0);
vec3 C = cross(A, B); // = (0, 0, 1)
```

**Key Takeaways:**

* Dot: Scalar, angle/light calculations
* Cross: 3D only, finds perpendicular vectors

---

### Final Summary

| Concept               | Explanation                              |
| --------------------- | ---------------------------------------- |
| vec2                  | 2D movement, UV textures                 |
| vec3                  | 3D positions, RGB colors                 |
| vec4                  | RGBA colors, 3D transformations          |
| Global Variable Error | Needs constant values (const)            |
| void main()           | No return values, must set gl\_FragColor |
| Dot Product           | Angle between vectors, lighting          |
| Cross Product         | Finds perpendicular vector (normals)     |

---

## 2️⃣ Matrix and Transformations

### 1️⃣ Scaling Matrix

Scales a vector along one or more axes:

```glsl
mat3 scalingMatrix = mat3(2.0, 0.0, 0.0,
                          0.0, 3.0, 0.0,
                          0.0, 0.0, 1.0);
```

* Diagonal values indicate scale
* Values < 1 shrink; negative values reflect

### 2️⃣ Translation Matrix

Only valid in `mat4`:

```glsl
mat4 translationMatrix = mat4(1.0, 0.0, 0.0, 5.0,
                              0.0, 1.0, 0.0, 3.0,
                              0.0, 0.0, 1.0, 0.0,
                              0.0, 0.0, 0.0, 1.0);
```

### 3️⃣ Reflection Matrix

Flips over an axis:

```glsl
mat3 reflectionMatrix = mat3(-1.0, 0.0, 0.0,
                              0.0, 1.0, 0.0,
                              0.0, 0.0, 1.0);
```

### 4️⃣ Rotation Matrix

Uses `sin` and `cos`, not zeros on diagonals.

### 💡 Quick Summary Table

| Matrix Type | Identifying Features         |
| ----------- | ---------------------------- |
| Scaling     | Non-zero diagonal, rest zero |
| Translation | Last column in mat4 non-zero |
| Reflection  | Negative values on diagonal  |
| Rotation    | Contains sin/cos values      |

---

### 🟢 2D Translation Matrix (mat3)

```
1 0 tx
0 1 ty
0 0 1
```

### 🔵 3D Translation Matrix (mat4)

```
1 0 0 tx
0 1 0 ty
0 0 1 tz
0 0 0 1
```

The last column holds the translation values (tx, ty, tz).

---

# 🎨 GLSL‑Deep‑Dive

Welcome to **GLSL‑Deep‑Dive**, my personal journey to master **GLSL (OpenGL Shading Language)** from scratch. This repository is a progressive collection of shader experiments, real-time rendering techniques, mathematical visualizations, and Three.js integrations. It serves as both a learning log and a creative playground for everything related to GPU-based graphics programming.

---

## 🚀 Overview

GLSL (OpenGL Shading Language) is a C-like language that runs directly on the GPU, allowing real-time manipulation of geometry, lighting, and pixels. It forms the backbone of modern 3D rendering pipelines and is used in engines like OpenGL, WebGL, and Three.js.

This project is focused on building an intuitive and visual understanding of:

* **Shader fundamentals (vertex + fragment)**
* **GPU pipeline concepts**
* **Mathematical foundations (vectors, matrices, trig)**
* **Procedural generation (noise, SDFs, patterns)**
* **3D effects (lighting, refraction, raymarching)**
* **Three.js integration**

---

## 🌐 Repository

**GitHub Link:** [ExploitEngineer/GLSL-Deep-Dive](https://github.com/ExploitEngineer/GLSL-Deep-Dive)

---

## 📂 Directory Structure

```
GLSL-Deep-Dive/
├── shaders/           # Raw GLSL experiments
│   ├── basics/        # Syntax, colors, gradients, UVs
│   ├── noise/         # Perlin, simplex, pseudo-random
│   ├── sdf/           # Signed distance functions
│   ├── lighting/      # Phong, Lambert, normal maps
│   └── raymarching/   # Volumetrics, reflections, shadows
│
├── projects/          # Interactive demos with Three.js
│   ├── water/         # Animated wave simulation
│   ├── fire/          # Procedural fire using noise
│   └── scanner/       # Real-time scanline animation
│
├── notes/             # Markdown learning notes
│   ├── uv-mapping.md
│   ├── raymarching.md
│   ├── glsl-cheatsheet.md
│   └── lighting-models.md
│
├── public/            # Assets for live demos
├── src/               # Codebase if using a framework
├── README.md
└── package.json       # If using Vite/Parcel
```

---

## ✨ Goals & Philosophy

* ✅ **Understand the GPU pipeline:** How data flows from CPU → Vertex Shader → Rasterizer → Fragment Shader
* ✅ **Learn through play:** Build small, visual experiments that demonstrate key principles
* ✅ **Think in visuals:** Translate math into graphics — vectors, functions, gradients, etc.
* ✅ **Modular exploration:** Each concept/directory is self-contained
* ✅ **Document the process:** Notes and explanations accompany experiments

---

## 📘 Key Topics Covered

### 🔧 GLSL Essentials

* GLSL syntax, types (vec2, vec3, mat4, etc.)
* `main()` in both vertex and fragment shaders
* Varying variables and interpolated values
* Uniforms and real-time parameter control

### 🧠 Math for Shaders

* Trigonometry for oscillations and patterns
* UV mapping and coordinate systems
* Vector operations (dot, cross, normalize)
* Matrix transformations

### 🌊 Procedural Graphics

* Generating Perlin/simplex noise
* Using Signed Distance Fields (SDFs) to model 2D/3D shapes
* Creating infinite tiling patterns
* Polar coordinate manipulation

### 💡 Lighting & Materials

* Phong and Lambertian lighting models
* Normal mapping and bump mapping
* Reflection/refraction techniques
* Real-time shading of 3D surfaces

### 🔦 Raymarching (Advanced)

* Distance functions for shapes
* Boolean operations (union, subtract, intersect)
* Soft shadows, ambient occlusion
* Reflections, glows, fog, volumetrics

### 🧪 Three.js Integration

* Using GLSL inside Three.js shaders
* `ShaderMaterial`, `RawShaderMaterial`
* Handling time, mouse, and custom uniforms
* Linking fragment shaders to DOM events

---

## 🚀 Running the Project

### Option 1: Run Raw GLSL with HTML Canvas

Basic examples can be opened with a browser:

```bash
cd shaders/basics
open index.html
```

### Option 2: Use Three.js + Vite for Projects

```bash
git clone https://github.com/ExploitEngineer/GLSL-Deep-Dive.git
cd GLSL-Deep-Dive
npm install
npm run dev
```

Navigate to `http://localhost:5173`

---

## Preview Examples

* 🌀 Animated vortex with dynamic lighting
* 🌊 Procedural ocean using sin waves
* 🔥 Noise-driven fire with color gradients
* 🛰️ Scanline animation using custom timing
* 🌐 Raymarched sphere with soft shadows

---

## 🤝 Contributing

Want to experiment or share a new shader idea? Fork the repo and submit a PR:

1. Fork this repository
2. Create your shader in `/shaders/your-topic/`
3. Document your logic in Markdown
4. Submit a pull request

---

## 📜 License

This project is licensed under the **MIT License**. Free to use, remix, and learn from.

---

### 🧠 Final Words

Shaders are one of the most creative and expressive tools in real-time graphics. This repo is my attempt to learn them deeply, break them down clearly, and document the path as I go. Whether you're new or experienced, I hope this helps spark your own explorations into GPU magic ✨

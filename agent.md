# 🤖 agent.md — FountainAI / Teatro SwiftPM Execution Contract

This file defines the **required structure and semantic behavior** of a Swift Package that functions as a **FountainAI-compatible semantic rendering unit** using the **Teatro View Engine**.

> ✅ This declaration is authoritative.  
> 🚫 No orchestration assumptions.  
> 🚫 No scripting dependencies.  
> 🎯 All tools and agents must follow this specification as contract.

---

## 📦 SwiftPM Compliance

This project is a **strict Swift Package**, conforming to canonical layout rules.

### 📁 Directory Structure

```
.
├── Package.swift
├── Sources/
│   └── <TargetName>/
│       └── main.swift
├── Tests/
│   └── <TargetName>Tests/
│       └── <TargetName>Tests.swift
├── agent.md
```

---

## ✅ Inputs

| Format     | Required | Description                                                                 |
|------------|----------|-----------------------------------------------------------------------------|
| `.fountain`| ✅        | Declarative screenplay-style semantic input                                 |
| `.ump`     | ✅        | **Universal semantic event stream** — MIDI 2.0-based but not timing-limited |
| `.mid`     | ❌        | Optional legacy MIDI fallback (auto-convert only)                           |
| `.json`    | ❌        | Optional corpus context, scene metadata, or orchestration state             |

---

## ✅ Outputs

| Format     | Required | Description                                                                    |
|------------|----------|--------------------------------------------------------------------------------|
| `.svg`     | ✅        | Timeline-animated vector rendering of semantic scenes via Teatro               |
| `.md`      | ✅        | Markdown summary or reflection output                                          |
| `.ump`     | ✅        | Full MIDI 2.0 output of semantic timeline — gesture, timing, and interaction   |
| `.mid`     | ❌        | Legacy MIDI 1 export, derived from `.ump` if required by downstream tools      |

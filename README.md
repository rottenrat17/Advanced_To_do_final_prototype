# Advanced ToDo – Complete Implementation (COMP3097 – Group G9)

iOS task app in SwiftUI for iPhone 14. **Complete implementation** of the project: all screens, navigation, persistence, and behaviour from the design spec.

**Team:** Pratik Pokhrel, Khalid Wasim Mushir, Vaishnavi Vodapalli

---

## Features

- **Launch** – App name, course, team; auto-dismisses after 2.5 s
- **Home** – Task list with filter (All / Pending / Completed), empty state when no tasks, add task (+), Task Type Manager (gear)
- **Add/Edit Task** – Title, notes, task type, due date & time; Save / Cancel; same form for add and edit
- **Task Details** – Full info, mark complete, edit, delete (with confirmation)
- **Task Types** – Add, edit (tap row or pencil), delete (cannot delete a type that tasks still use)
- **Persistence** – Tasks and task types saved to UserDefaults; data survives app restart
- **Visual** – Overdue tasks = red tint, due within 24 h = orange tint; type chips; completion checkmarks
- **Accessibility** – Labels and hints on main actions and list rows

---

## Run

1. Open `AdvancedTodo.xcodeproj` in Xcode.
2. Select iPhone 14 (or any) simulator, then ⌘R.

**Requirements:** Xcode 15+, iOS 17.

---


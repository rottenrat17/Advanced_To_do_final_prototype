# Project – UI Design

**Course:** COMP3097 – Mobile App Development II  
**Project:** Advanced ToDo Mobile Application  
**Group:** G9  
**Team:** Pratik Pokhrel, Khalid Wasim Mushir, Vaishnavi Vodapalli  
**Target:** iPhone 14 (Portrait)

---

## 1. Launch Screen

**Purpose:** Shown briefly when the app starts.

**Content:**
- App icon / logo (checkmark circle)
- App name: **Advanced ToDo**
- Course and group: COMP3097 – Group G9
- Team member names and student IDs

**Behaviour:** Screen auto-dismisses after a short delay (~2.5 s) and navigates to the Home screen.

**Layout:** Centered content, gradient or solid background; portrait only.

---

## 2. Home / Task List Screen

**Purpose:** Main screen; shows all tasks and lets the user filter and navigate.

**Content:**
- **Navigation title:** “Tasks”
- **Filter control:** Segmented control – **All** | **Pending** | **Completed**
- **List of tasks:** Each row shows:
  - Task title
  - Task type (label/chip)
  - Due date and time
  - Status (e.g. checkmark if completed)
- **Visual states:** Rows for overdue tasks and tasks due soon are highlighted (e.g. red/orange tint)

**Actions:**
- **Toolbar (top left):** Open Task Type Manager
- **Toolbar (top right):** Add new task
- **Tap a row:** Open Task Details
- **Swipe to delete:** Remove task from list

**Layout:** List fills the screen; filters at top; portrait.

---

## 3. Add / Edit Task Screen

**Purpose:** Create a new task or edit an existing one.

**Content:**
- **Task section:**  
  - Title (required text field)  
  - Notes (optional, multi-line)
- **Type section:** Picker to select task type (e.g. General, custom types)
- **Due section:** Date and time picker for due date and time
- **Toolbar:** **Cancel** (left), **Save** (right); Save disabled if title is empty

**Behaviour:** Presented as a sheet from Home (Add) or from Task Details (Edit). Same layout for add and edit; in edit mode fields are pre-filled.

**Layout:** Form-style grouped list; portrait.

---

## 4. Task Details Screen

**Purpose:** Show full information for one task and allow actions.

**Content:**
- **Title section:** Task title
- **Notes section:** Task notes (if any)
- **Details section:**  
  - Task type (with colour)  
  - Due date and time  
  - Status (Pending / Completed)
- **Actions:**  
  - Mark as Completed (if pending)  
  - Edit Task  
  - Delete Task (destructive, with confirmation)

**Navigation:** Reached by tapping a task on the Home screen. Edit opens the Add/Edit Task sheet.

**Layout:** Grouped list; portrait.

---

## 5. Task Type Manager Screen

**Purpose:** Manage task types (add, edit, delete).

**Content:**
- **Navigation title:** “Task Types”
- **List:** Each row shows type name and a colour dot
- **Edit:** Tap to edit a type (name and colour)
- **Toolbar:** **Done** (dismiss), **+** (add new type)

**Add/Edit Type (sheet):**
- Name (text field)
- Colour (e.g. preset colour circles to choose from)
- **Cancel** and **Save**

**Layout:** List + modal sheet for add/edit; portrait.

---

## Navigation Flow (Summary)

```
Launch → Home
           ├── [+] → Add Task (sheet)
           ├── [⚙] → Task Type Manager (sheet)
           └── [tap task] → Task Details
                               ├── Edit → Add/Edit Task (sheet)
                               └── Delete (with confirm)
```

---

## Design Notes

- **Orientation:** Portrait only (iPhone 14).
- **Style:** Native iOS (SwiftUI) – system fonts, list and form controls, standard navigation and sheets.
- **Accessibility:** Use semantic labels where needed; support Dynamic Type if required by the course.

---

*You can add screenshots from the running app (or from your proposal mockups) above each screen section before submitting as PDF.*

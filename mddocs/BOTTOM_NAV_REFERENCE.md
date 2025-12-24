# 🎯 Bottom Navigation Quick Reference

## 📱 Main Screen Implementation

Your app uses a **MainScreen** widget that contains:
- **IndexedStack** to maintain state of all three pages
- **BottomNavigationBar** with 3 tabs
- Smooth transitions without rebuilding pages

### File Location
```
lib/modules/app/main_screen/main_screen.dart
```

---

## 🧩 Structure

```dart
MainScreen (StatefulWidget)
├── Scaffold
│   ├── body: IndexedStack (holds 3 pages)
│   │   ├── HomePage (index: 0)
│   │   ├── ProfilePage (index: 1)
│   │   └── PersonalityTypesPage (index: 2)
│   │
│   └── bottomNavigationBar: BottomNavigationBar
│       ├── Home Tab (icon: 🏠)
│       ├── Profile Tab (icon: 👤)
│       └── Know Yourself Tab (icon: 🧠)
```

---

## 🎨 Bottom Nav Bar Configuration

### Current Index Management
```dart
int _currentIndex = 0; // Tracks active tab
```

### On Tap Handler
```dart
onTap: (index) {
  setState(() {
    _currentIndex = index;
  });
}
```

### Navigation Items

#### 1. HOME TAB 🏠
```dart
BottomNavigationBarItem(
  icon: Icon(Icons.home_outlined),
  activeIcon: Icon(Icons.home),
  label: 'Home',
)
```
- **Shows**: Start Quiz button and features
- **Navigation**: Opens Quiz page

#### 2. PROFILE TAB 👤
```dart
BottomNavigationBarItem(
  icon: Icon(Icons.person_outline),
  activeIcon: Icon(Icons.person),
  label: 'Profile',
)
```
- **Shows**: User info + Last 10 results
- **Features**: Edit name, view history

#### 3. KNOW YOURSELF TAB 🧠
```dart
BottomNavigationBarItem(
  icon: Icon(Icons.psychology_outlined),
  activeIcon: Icon(Icons.psychology),
  label: 'Know Yourself',
)
```
- **Shows**: All 6 personality types
- **Language**: English + Arabic

---

## 🎨 Styling (from app_theme.dart)

```dart
bottomNavigationBarTheme: BottomNavigationBarThemeData(
  backgroundColor: AppColors.surface,      // White
  selectedItemColor: AppColors.primary,    // Indigo
  unselectedItemColor: AppColors.textSecondary, // Gray
  selectedLabelStyle: GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w600,
  ),
  unselectedLabelStyle: GoogleFonts.poppins(
    fontSize: 12,
    fontWeight: FontWeight.w500,
  ),
  type: BottomNavigationBarType.fixed,
  elevation: 8,
)
```

---

## 🔄 How It Works

### 1. Initial State
```
App opens → Splash Screen → MainScreen
Default tab: Home (index: 0)
```

### 2. Tab Switch
```
User taps Profile tab
  ↓
onTap(1) called
  ↓
setState(() { _currentIndex = 1; })
  ↓
IndexedStack shows ProfilePage
  ↓
Bottom nav highlights Profile icon
```

### 3. State Preservation
```
IndexedStack keeps all pages in memory
When switching tabs:
  ✅ Scroll position maintained
  ✅ Form data preserved
  ✅ No rebuilding of pages
```

---

## 📍 Navigation Flow

```
┌─────────────────────────────────────┐
│         MainScreen                  │
│  ┌───────────────────────────────┐  │
│  │                               │  │
│  │    Currently Visible Page     │  │
│  │    (controlled by index)      │  │
│  │                               │  │
│  └───────────────────────────────┘  │
│                                     │
│  ┌─────────┬──────────┬──────────┐ │
│  │  Home   │ Profile  │  Know    │ │
│  │   🏠    │   👤     │  Self🧠  │ │
│  └─────────┴──────────┴──────────┘ │
└─────────────────────────────────────┘
```

---

## 🎯 Key Features

### ✅ Implemented
- [x] 3 tabs with icons
- [x] Active/Inactive icon variants
- [x] Color changes on selection
- [x] Label text below icons
- [x] State preservation
- [x] Smooth transitions
- [x] Shadow elevation
- [x] Material 3 design

### 🎨 Visual States
```
Active Tab:
  Icon: Filled (solid)
  Color: Indigo (#6366F1)
  Label: Bold (600)

Inactive Tab:
  Icon: Outlined (hollow)
  Color: Gray (#6B7280)
  Label: Medium (500)
```

---

## 📂 Page Details

### HomePage
**File**: `lib/modules/app/home/pages/home_page.dart`
- Start Quiz button
- Feature cards
- Gradient background
- ✅ Scrollable (overflow fixed)

### ProfilePage
**File**: `lib/modules/app/profile/pages/profile_page.dart`
- User avatar
- Name editor
- Last 10 results
- CustomScrollView

### PersonalityTypesPage
**File**: `lib/modules/app/personality_types/pages/personality_types_page.dart`
- All 6 personality types
- Bilingual content
- Gradient cards
- SliverList

---

## 🔧 Customization Tips

### Change Tab Order
```dart
final List<Widget> _pages = [
  const HomePage(),        // index 0
  const ProfilePage(),     // index 1
  const PersonalityTypesPage(), // index 2
];
```

### Change Icons
```dart
BottomNavigationBarItem(
  icon: Icon(Icons.YOUR_ICON_outlined),
  activeIcon: Icon(Icons.YOUR_ICON),
  label: 'Your Label',
)
```

### Change Colors
Edit `lib/core/theme/app_colors.dart`:
```dart
static const Color primary = Color(0xFF6366F1); // Your color
```

### Add More Tabs
1. Add page to `_pages` list
2. Add `BottomNavigationBarItem` to items list
3. That's it! (IndexedStack handles the rest)

---

## 🐛 Common Issues & Solutions

### Issue: Overflow on small screens
✅ **Solution**: All pages use scrollable widgets:
- HomePage: `SingleChildScrollView`
- ProfilePage: `CustomScrollView`
- PersonalityTypesPage: `CustomScrollView`

### Issue: State lost when switching tabs
✅ **Solution**: Using `IndexedStack` preserves state

### Issue: Tabs rebuilding on every switch
✅ **Solution**: Pages are `const` constructors where possible

---

## 📊 Performance

```
✅ Fast tab switching (no rebuild)
✅ Smooth animations
✅ Minimal memory usage
✅ State preservation
✅ No unnecessary renders
```

---

## 🎯 Testing Checklist

Test these scenarios:
- [ ] Switch between all 3 tabs
- [ ] Scroll on Home tab, switch away, switch back → scroll position preserved
- [ ] Edit name on Profile tab, switch away, switch back → text preserved
- [ ] Tap personality type, view details, go back → position preserved
- [ ] Start quiz from Home tab → quiz opens
- [ ] Complete quiz → result saved → appears in Profile history
- [ ] Tap history item → shows personality details

---

## 📱 Screenshots Flow

```
1. HOME TAB
   ┌──────────────┐
   │ Discover     │
   │ Personality  │
   │     🎭       │
   │ [START QUIZ] │
   └──────────────┘

2. PROFILE TAB
   ┌──────────────┐
   │     👤       │
   │  Your Name   │
   │              │
   │ Last 10:     │
   │ 😄 Comedian  │
   │ 💕 Romantic  │
   └──────────────┘

3. KNOW YOURSELF TAB
   ┌──────────────┐
   │      🧠      │
   │ Know Yourself│
   │              │
   │ All Types:   │
   │ 😄 Comedian  │
   │ 💕 Romantic  │
   └──────────────┘
```

---

## ✅ Summary

Your bottom navigation is:
- ✅ Working perfectly
- ✅ 3 tabs as requested
- ✅ Beautiful Material 3 design
- ✅ State preserved
- ✅ Smooth animations
- ✅ No overflow errors

**Ready to use!** 🚀


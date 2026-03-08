## POMO
* Pomodoro Focus app built with Flutter.

## PROJECT STRUCTURE
```bash
.
└── pomo/
    ├── android/                      # Android-specific configuration
    ├── ios/                          # iOS-specific configuration
    ├── lib                           # contains all MAIN.dart, screens, and widgets/
    │   ├── presentation/             # UI layer: just what is need for midterms/
    │   │   ├── screens/                # Full-page layouts /
    │   │   │   ├── splash_screen.dart    # The loading/logo screen shown at startup
    │   │   │   └── timer_screen.dart     # The main screen where the timer and modes appear
    │   │   └── widgets/                # Reusable components/
    │   │       ├── theme_selector.dart   # UI for switching between light, dark, pink theme
    │   │       ├── mode_selector.dart    # UI for picking focus, break, focus fire
    │   │       ├── timer.dart            # Time graphics for the countdown
    │   │       ├── time_setter.dart      # Time graphics for the setting countdown
    │   │       ├── start_button.dart     # Custom styled button to start timer
    │   │       └── timer_options.dart    # Settings specific to the timer
    │   └── main.dart                 # Entry point of the app
    ├── test                          # Logic tests to make sure your timer math isn't broken
    ├── .gitignore                    # Tells Git to ignore "trash" files (like build/ or .idea/)
    ├── analysis_options.yaml         # Rules for your code style (keeps your code clean/consistent)
    ├── pubspec.lock                  # A "snapshot" of your exact package versions (don't edit manually)
    ├── pubspec.yaml                  # The manifest: lists your assets, fonts, and dependencies
    └── README.md                     # notes
```

MEMBERS:
Jasmine Magadan
Eleah Joy Melchor



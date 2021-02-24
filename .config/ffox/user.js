# Custom firefox preferences config

// Don't focus menu bar after pressing alt key 
user_pref("ui.key.menuAccessKeyFocuses", false);

// Don't show menu bar after pressing alt key
user_pref("ui.key.menuAccessKey", false);

// Don't steal focus when opening links from other applications
user_pref("browser.tabs.loadDivertedInBackground", true);

// Highlight all occurences of find command
user_pref("findbar.highlightAll", true);

// Show protocol prefix in URL bar
user_pref("browser:urlbar:trimURLS", false);

// Disale embedded reader mode support
user_pref("reader.parse-on-load.enabled", false);

// Disale embedded screenshot support
user_pref("extensions.screenshots.disabled", true);

// Disale mozilla pocket support, set false to disable
user_pref("extensions.pocket.enabled", true);

// Open in the new tab in background
user_pref("browser.tabs.loadBookmarksInBackground", true);

// Double clicking on a word selects the word without the whitespaceses around it
user_pref("layout.word_select.eat_space_to_next_word", false);

// Middle click in the input field to paste from clipboard/primary
user_pref("middlemouse.paste", true);

// Animation speed value for smooth scrolling
user_pref("general.smoothScroll.mouseWheel.durationMaxMS", 200);

if (flashAlpha > 0) {
    flashAlpha -= 2; // Adjust fading speed as needed
    if (flashAlpha <= 0) {
        // Once faded, switch to the next room
        room_goto(rm_game5);
        flashAlpha = 0; // Ensure flashAlpha doesn't go negative
    }
}
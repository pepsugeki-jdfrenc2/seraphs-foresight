// Draw the attack square sprite
draw_sprite(sAttackSquare, 0, x, y);

// Calculate the position for the pointer sprite
if (movePointer) {
    var mouseDistX = mouse_x - initialMouseX;
    var mouseDistY = mouse_y - initialMouseY;

    // Calculate the clamped position
    pointerX = clamp(mouseDistX, -sprite_width / 2, sprite_width / 2);
    pointerY = clamp(mouseDistY, -sprite_height / 2, sprite_height / 2);

    // Check if mouse is beyond the maximum distance and update initial mouse position
    if (mouseDistX > sprite_width / 2) {
        initialMouseX = mouse_x - sprite_width / 2;
    } else if (mouseDistX < -sprite_width / 2) {
        initialMouseX = mouse_x + sprite_width / 2;
    }

    if (mouseDistY > sprite_height / 2) {
        initialMouseY = mouse_y - sprite_height / 2;
    } else if (mouseDistY < -sprite_height / 2) {
        initialMouseY = mouse_y + sprite_height / 2;
    }

    // Draw the pointer sprite at the attack square's position plus the clamped offset
    draw_sprite(sAttackSqPointer, 0, x + pointerX, y + pointerY);
}
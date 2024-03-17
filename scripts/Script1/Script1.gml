function moveTowardsPoint(targetX, targetY, speed) {
    var dx = targetX - x;
    var dy = targetY - y;
    var distance = point_distance(x, y, targetX, targetY);

    if (distance < speed) {
        x = targetX;
        y = targetY;
    } else {
        x += dx / distance * speed;
        y += dy / distance * speed;
    }
}

#!/bin/sh
case "$1" in
  post)
    sleep 0.5
    echo -n "i8042" > /sys/bus/platform/drivers/i8042/unbind 2>/dev/null || true
    sleep 0.3
    echo -n "i8042" > /sys/bus/platform/drivers/i8042/bind 2>/dev/null || true
    ;;
esac

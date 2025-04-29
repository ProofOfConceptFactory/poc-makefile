#!/usr/bin/env bats

@test "hello-from-makefile displays the hello message" {
  # Capture the command output
  run make hello-from-makefile

  # Verify that the command executed successfully
  [ "$status" -eq 0 ]

  # Verify that the output contains exactly the expected message
  [ "$output" = "Hello from Makefile!👋" ]
}

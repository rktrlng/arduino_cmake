# The path to the .hex-file to be generated
set(HEX_PATH ${ARDUINO_LIB_BINARY_DIR}/projects/${PRJ_NAME}/${PRJ_NAME}.hex)

# Build executable called "${PRJ_NAME}.elf".
add_executable (${PRJ_NAME}.elf ${SRC})

# Link the executable to the arduino 'core', 'custom' and 'default' library.
target_link_libraries (${PRJ_NAME}.elf core custom default) 

# Create 'make targets' for uploading with programmer or bootloader
POST_PROCESS(${PROGRAMMER} ${MCU} ${PORT} ${UPLOAD_RATE})

(require-extension gl)
(require-extension glu)
(use (prefix glfw3 glfw:)
	 miscmacros)

(glfw:init)
(define window (glfw:make-window 800 600 "Turtle"
								 context-version-major: 3
								 context-version-minor: 3
								 opengl-forward-compat: #t
								 resizable: #f))

(gl:Viewport 0 0 (glfw:get-framebuffer-size window))
(gl:MatrixMode gl:PROJECTION)
(gl:LoadIdentity)

(until (glfw:window-should-close window)
  (begin
	(glfw:swap-buffers window)
	(glfw:poll-events)))


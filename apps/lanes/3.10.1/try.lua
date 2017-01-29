local lanes = require("lanes").configure()

local sync_linda = lanes.linda()
f = lanes.gen("os", function(n) os.execute("timeout 5"); return n end)
a = f(2)
b = f(2)

print(a[1], b[1])
print(a.status, b.status)
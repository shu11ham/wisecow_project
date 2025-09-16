import psutil

cpu = psutil.cpu_percent()
mem = psutil.virtual_memory().percent
disk = psutil.disk_usage('/').percent

if cpu > 80:
    print("High CPU Usage:", cpu)
if mem > 80:
    print("High Memory Usage:", mem)
if disk > 90:
    print("Low Disk Space:", disk)

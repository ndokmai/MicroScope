VICTIM_PROC_NAME=$1
REPLAY_HANDLE_OFFSET=$2
VICTIM_PID=$(pidof $VICTIM_PROC_NAME)

echo "victim pid: $VICTIM_PID"

BASE_ADDR=0x$(cat /proc/$VICTIM_PID/maps | head -1 | awk '{split($1,a,"-"); print a[1]}')

REPLAY_HANDLE=$(printf "0x%x\n" $(($BASE_ADDR + $REPLAY_HANDLE_OFFSET)))

echo "base address: $BASE_ADDR"
echo "replay handle: $REPLAY_HANDLE"

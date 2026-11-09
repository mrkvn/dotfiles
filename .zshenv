
# ASCII BOAT SHELL INTEGRATION START boat
case ":$PATH:" in
  *":/Users/mrkvn/.ascii/bin:"*) ;;
  *) PATH="/Users/mrkvn/.ascii/bin:$PATH" ;;
esac
export PATH
# ASCII BOAT SHELL INTEGRATION END boat

# Agents must never make sound: agent-browser starts Chrome muted
export AGENT_BROWSER_ARGS=--mute-audio

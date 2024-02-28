# Display time
SPACESHIP_TIME_SHOW=true

# Display username always
SPACESHIP_USER_SHOW=always

# Do not truncate path in repos
SPACESHIP_DIR_TRUNC_REPO=false

# Add custom sections
# See: https://spaceship-prompt.sh/registry/
spaceship add react

# remove sections
# spaceship remove time

# override default order of sections  (left side of prompt)
SPACESHIP_PROMPT_ORDER=(
  time           # Time stamps section
  user           # Username section
  dir            # Current directory section
  host           # Hostname section
  git            # Git section (git_branch + git_status)
  package        # Package version
  node           # Node.js section
  bun            # Bun section
  deno           # Deno section
  golang         # Go section
  rust           # Rust section
  haskell        # Haskell Stack section
  lua            # Lua section
  docker         # Docker section
  docker_compose # Docker section
  aws            # Amazon Web Services section
  gcloud         # Google Cloud Platform section
  azure          # Azure section
  async          # Async jobs indicator
  line_sep       # Line break
  battery        # Battery level and status
  jobs           # Background jobs indicator
  sudo           # Sudo indicator
  char           # Prompt character
)

# order of sections on right side of prompt
SPACESHIP_RPROMPT_ORDER=(
  exit_code      # Exit code section
  exec_time      # Execution time
)
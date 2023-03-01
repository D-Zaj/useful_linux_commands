# Examples of some useful sed commands

# Surround directories containing spaces with quotes in a path
echo "Example: Escape directories in path with quotes when they contain spaces."
echo -n "Input: "
echo "dirA/dirB/dir C/dirD"
echo -n "Output: "
echo "dirA/dirB/dir C/dirD" | sed -E -e "s:\/:\/\/:g" -e "s:(\/)([^\/]*?[ ].[^\/]*?)(\/):\1'\2'\3:g" -e "s:\/\/:\/:g"
echo "Limitations: only works when directory name is surrounded by '/' characters - so beginning/end of path may not get escaped correctly."

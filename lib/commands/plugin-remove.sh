plugin_remove_command() {
  local plugin_name=$1
  check_if_plugin_exists $plugin_name

  local plugin_path=$(get_plugin_path $plugin_name)

  rm -rf $plugin_path
  rm -rf $(asdf_dir)/installs/${plugin_name}
}

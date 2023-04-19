#!/bin/sh

set -e

THEMES_FILE="themes/themes.txt"

main() {
	# Check if a function name is provided as an argument
	if [ "$#" -eq 1 ]; then
		case "$1" in
			add)
				add
				;;
			update)
				update
				;;
			remove)
				remove
				;;
			help)
				print_help
				;;
			*)
				error "Invalid function name: $1"
				print_help
				;;
		esac
	else
		print_help
	fi
}

# Message printing functions
error() {
	printf "\033[31m%s\033[0m\n" "$*" >&2
}

warning() {
	printf "\033[33m%s\033[0m\n" "$*" >&2
}

info() {
	printf "\033[34m%s\033[0m\n" "$*" >&2
}

prompt() {
	printf "%s\n" "$*" >&2
}

add() {
	prompt "Please enter the theme name:"
	read theme_name

	prompt "Please enter the theme git URL:"
	read theme_git_url

	prompt "Please enter the theme git URL branch:"
	read theme_git_url_branch

	git subtree add --prefix "themes/$theme_name" "$theme_git_url" "$theme_git_url_branch" --squash

	echo "$theme_name $theme_git_url $theme_git_url_branch" >> "$THEMES_FILE"
}

update() {
	prompt "Please enter the theme name:"
	read theme_name

	while IFS=' ' read -r t_name t_git_url t_git_branch; do
		if [ "$t_name" = "$theme_name" ]; then
			git subtree pull --prefix "themes/$theme_name" "$t_git_url" "$t_git_branch" --squash
			break
		fi
	done < "$THEMES_FILE"
}

remove() {
	prompt "Please enter the theme name:"
	read theme_name

	rm -rf "themes/$theme_name"

	grep -v "^$theme_name " "$THEMES_FILE" > "${THEMES_FILE}.tmp" && mv "${THEMES_FILE}.tmp" "$THEMES_FILE"
}

print_help() {
	info "Usage: $0 <function_name>"
	info ""
	info "Available functions:"
	info "  add    - Add a new theme to the 'themes' directory."
	info "  update - Update a theme in the 'themes' directory."
	info "  remove - Remove a theme from the 'themes' directory."
	info ""
	info "Examples:"
	info "  $0 add"
	info "  $0 update"
	info "  $0 remove"
}

main "$@"

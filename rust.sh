https://www.youtube.com/watch?v=CTTiaOo4cbY
https://rust-analyzer.github.io/manual.html\#rust-analyzer-language-server-binary
https://rsdlt.github.io/posts/rust-nvim-ide-guide-walkthrough-development-debug/



cookbook:	https://rust-lang-nursery.github.io/rust-cookbook/web/clients/requests.html
nomicon:  	https://doc.rust-lang.org/nomicon/data.html
ref: 		https://doc.rust-lang.org/reference/type-layout.html
async: 		https://rust-lang.github.io/async-book/09_example/01_running_async_code.html
by example: https://doc.rust-lang.org/rust-by-example/mod/struct_visibility.html
rfc: 		https://rust-lang.github.io/rfcs/0445-extension-trait-conventions.html
cargo:		https://rustwiki.org/en/cargo/reference/workspaces.html

# EXTENSION TRAITS PATTERN
https://stackoverflow.com/questions/72804119/how-can-i-extend-a-trait-in-rust-defined-somewhere-else

generic pick : https://stackoverflow.com/questions/28955563/why-does-rust-put-a-before-the-parameters-in-generics-sometimes
static https://doc.rust-lang.org/rust-by-example/scope/lifetime/static_lifetime.html

#set NIGHLTY: 
rustup toolchain list
rustup toolchain install nightly
rustup override set nightly

# when you swithc branch and it does not compile try 
cargo update
cargo update -p proc-macro2

#run a specific unit test //////// https://stackoverflow.com/questions/54585804/how-to-run-a-specific-unit-test-in-rust
	cargo test test_fn_name -- --exact
#Otherwise you need to provide test with full namespace:
	cargo test test_mod_name::test_fn_name -- --exact
	
	cargo test --package school_info repeat_students_should_not_get_full_marks -- --exact

# show stdout on ok test
	cargo test -- --nocapture

# DEPS 
#	To issue an update of a specific dependency, use the -p option. 
#   	https://stackoverflow.com/questions/71528386/how-do-i-update-git-dependencies-in-cargo
	cargo update -p rust_wheel

# How do you recompile a dependency ?
#  https://www.reddit.com/r/rust/comments/o6kahy/how_do_you_recompile_a_dependency/
	cargo clean -p <name> #, then rebuild
														  	#what is this
assert!(matches!(result.unwrap(), MaybePendingStateUpdate::Update{ .. }));


# EXPAND MACRO 
#https://stackoverflow.com/questions/28580386/how-do-i-see-the-expanded-macro-code-thats-causing-my-compile-error
# install -> https://github.com/dtolnay/cargo-expand
cargo expand -p pallet-flipper --lib --tests

RUST_LOG=debug


format!("{err:?}"
# sqlx 
# https://stackoverflow.com/questions/76257309/properly-dealing-with-hierarchies-in-rust-sqlx

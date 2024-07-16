use zed::LanguageServerId;
use zed_extension_api::{self as zed, Result};

struct ValaExtension;

impl ValaExtension {
    fn language_server_binary_path(
        &mut self,
        language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<String> {
        if let Some(path) = worktree.which("vala-language-server") {
            return Ok(path);
        }

        Err(format!("vala-language-server not installed"))

        // TODO: auto-download VLS from a precompiled binary; the official github repo currently doesn't have builds :/
    }
}

impl zed::Extension for ValaExtension {
    fn new() -> Self {
        Self {}
    }

    fn language_server_command(
        &mut self,
        language_server_id: &LanguageServerId,
        worktree: &zed::Worktree,
    ) -> Result<zed::Command> {
        Ok(zed::Command {
            command: self.language_server_binary_path(language_server_id, worktree)?,
            args: vec![],
            env: Default::default(),
        })
    }
}

zed::register_extension!(ValaExtension);

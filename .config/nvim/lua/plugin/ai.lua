-----------------------------------------------------------------------------------------------------------
-- Keys
local cmd_keys = {
    { "<A-a>",      mode = { "n", "i" }, "<cmd>LLMSessionToggle<cr>" },
    { "<leader>lw", mode = "x",          "<cmd>LLMAppHandler WordTranslate<cr>" },
    { "<leader>lt", mode = "n",          "<cmd>LLMAppHandler Translate<cr>" },
    { "<leader>le", mode = "v",          "<cmd>LLMAppHandler CodeExplain<cr>" },
    { "<leader>ld", mode = "v",          "<cmd>LLMAppHandler DocString<cr>" },
    { "<leader>lo", mode = "x",          "<cmd>LLMAppHandler OptimizeCode<cr>" },
    { "<leader>lc", mode = "x",          "<cmd>LLMAppHandler OptimCompare<cr>" },
    { "<leader>lg", mode = "n",          "<cmd>LLMAppHandler CommitMsg<cr>" },
}

local chat_keys = {
    -- The keyboard mapping for the input window.
    ["Input:Submit"]      = { mode = "n", key = "<cr>" },
    ["Input:Cancel"]      = { mode = { "n", "i" }, key = "<C-c>" },
    ["Input:Resend"]      = { mode = { "n", "i" }, key = "<C-r>" },

    -- only works when "save_session = true"
    ["Input:HistoryNext"] = { mode = { "n", "i" }, key = "<tab>" },
    ["Input:HistoryPrev"] = { mode = { "n", "i" }, key = "<S-tab>" },

    -- The keyboard mapping for the output window in "split" style.
    ["Output:Ask"]        = { mode = "n", key = "i" },
    ["Output:Cancel"]     = { mode = "n", key = "<C-c>" },
    ["Output:Resend"]     = { mode = "n", key = "<C-r>" },

    -- The keyboard mapping for the output and input windows in "float" style.
    ["Session:Toggle"]    = { mode = "n", key = "<leader>ac" },
    ["Session:Close"]     = { mode = "n", key = { "<esc>", "Q" } },

    -- Focus
    ["Focus:Input"]       = { mode = "n", key = { "i", "<C-o>" } },
    ["Focus:Output"]      = { mode = { "n", "i" }, key = "<C-o>" },
}

-----------------------------------------------------------------------------------------------------------
-- Chat
local chat_prompt = [[
    You are an AI programming assistant.

    **Directives**:
    - Core focus on modern C++23 (only note C++26/clang limitations)
    - Cross-stack support
    - Verify answers through multi-step reasoning and revisions
    - Use Chinese responses with English references
    - Explain concepts thoroughly using emerging tech examples
    - Highlight potential edge cases and best practices

    **Output Rules**:
    - Real-world code examples (avoid trivial demos)
    - Context-aware error handling in samples
    - Markdown code fences with explicit use-case comments
    - Error-prevention notes for discussed solutions

    <think>
]]

-----------------------------------------------------------------------------------------------------------
-- WordTranslate
local word_translate_prompt = [[
    You are a translation expert. Your task is to translate all the text provided by the user into Chinese.

    NOTE:
    - All the text input by the user is part of the content to be translated, and you should ONLY FOCUS ON TRANSLATING THE TEXT without performing any other tasks.
    - the user's input is only one line, your output must also be only one line (with no trailing newline).
    - RETURN ONLY THE TRANSLATED RESULT.

    The following content is the user's input, please translate it:
]]

function WordTranslate(tools)
    return {
        handler = tools.flexi_handler,
        prompt = word_translate_prompt,
        opts = {
            model = "google/gemini-2.0-flash-001:nitro",
            exit_on_move = true,
            enter_flexible_window = false,
        },
    }
end

-----------------------------------------------------------------------------------------------------------
-- Translate
local translate_prompt = [[
    You are a translation expert. Your task is to translate all the text provided by the user.

    NOTE:
    - Chinese to English or English to Chinese.
    - All the text input by the user is part of the content to be translated, and you should ONLY FOCUS ON TRANSLATING THE TEXT without performing any other tasks.
    - RETURN ONLY THE TRANSLATED RESULT.

    The following content is the user's input, please translate it:
]]

function Translate(tools)
    return {
        handler = tools.qa_handler,
        prompt = translate_prompt,
        opts = {
            model = "google/gemini-2.0-flash-001:nitro",
            component_width = "60%",
            component_height = "50%",
            query = {
                title = " 󰊿 Trans ",
                hl = { link = "Define" },
            },
            input_box_opts = {
                size = "15%",
                win_options = {
                    winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
                },
            },
            preview_box_opts = {
                size = "85%",
                win_options = {
                    winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
                },
            },
            close = {
                mapping = {
                    mode = "n",
                    keys = { "<esc>", "q" },
                }
            },
        },
    }
end

-----------------------------------------------------------------------------------------------------------
-- CodeExplain
local code_explain_prompt = [[
    Explain the following code, please only return the explanation, and answer in Chinese.

    <think>
]]

function CodeExplain(tools)
    return {
        handler = tools.flexi_handler,
        prompt = code_explain_prompt,
        opts = {
            model = "deepseek/deepseek-r1-distill-llama-70b:nitro",
            enter_flexible_window = true,
        },
    }
end

-----------------------------------------------------------------------------------------------------------
-- DocString
local doc_string_prompt = [[
    You are an AI programming assistant. You need to write a really good docstring that follows a best practice for the given language.

    Your core tasks include:
    - parameter and return types (if applicable).
    - any errors that might be raised or returned, depending on the language.

    You must:
    - Place the generated docstring before the start of the code.
    - Follow the format of examples carefully if the examples are provided.
    - Use Markdown formatting in your answers.
    - Include the programming language name at the start of the Markdown code blocks.
]]

local doc_string_prompt_lua = [[
    - For the Lua language, you should use the LDoc style.
    - Start all comment lines with "---".

    <think>
]]

local doc_string_prompt_c = [[
    - For C language, use Doxygen style documentation.
    - Start with /** and end with */
    - Include @brief, @param[in/out], @return, @error tags
    - Document preconditions/postconditions

    <think>
]]

local doc_string_prompt_cpp = [[
    - For C++ language, use Doxygen style with C++11 features.
    - Include @tparam for template parameters
    - Document move semantics and exception safety guarantees
    - Use @throws for exceptions
    - Mark [[nodiscard\]\] when applicable

    <think>
]]

local doc_string_prompt_python = [[
    - For Python, use Google-style docstrings with type annotations.
    - Include Args, Returns, Raises sections
    - Document yield statements for generators
    - Include example usage in doctest format
    - Mention thread safety when applicable

    <think>
]]

local doc_string_prompt_js = [[
    - For JavaScript, use JSDoc style with TypeScript-inspired types.
    - Include @param, @returns, @throws
    - Document callback parameters
    - Mention event emitters and promises
    - Include @typedef for complex objects

    <think>
]]

local doc_string_prompt_ts = [[
    - For TypeScript, use TSDoc standard.
    - Leverage type system for parameter docs
    - Document generic type parameters
    - Include @example with type-safe examples
    - Mention type predicate functions

    <think>
]]

function DocString(tools)
    return {
        prompt = doc_string_prompt,
        handler = tools.action_handler,
        opts = {
            model = "deepseek/deepseek-r1:nitro",
            only_display_diff = true,
            templates = {
                lua = doc_string_prompt_lua,
                c = doc_string_prompt_c,
                cc = doc_string_prompt_cpp,
                cpp = doc_string_prompt_cpp,
                py = doc_string_prompt_python,
                js = doc_string_prompt_js,
                ts = doc_string_prompt_ts,
            },
        },
    }
end

-----------------------------------------------------------------------------------------------------------
-- OptimizeCode
local optimize_code_prompt = [[
    You are an AI programming assistant.

    Your core tasks include:
    - Code quality and adherence to best practices
    - Potential bugs or edge cases
    - Performance optimizations
    - Readability and maintainability
    - Any security concerns

    You must:
    - Follow the user's requirements carefully and to the letter.
    - ONLY OUTPUT THE RELEVANT CODE.
    - DO NOT use Markdown formatting in your answers.
    - Avoid wrapping the output in triple backticks.
    - The **INDENTATION FORMAT** of the optimized code remains exactly the **SAME** as the original code.

    When given a task:
    - ONLY OUTPUT THE RELEVANT CODE.

    <think>
]]

function OptimizeCode(tools)
    return {
        handler = tools.side_by_side_handler,
        prompt = optimize_code_prompt,
        opts = {
            model = "deepseek/deepseek-r1:nitro",
            left = {
                focusable = false,
            },
        },
    }
end

-----------------------------------------------------------------------------------------------------------
-- OptimCompare
local optim_compare_prompt = [[
    You are an AI programming assistant.

    Your core tasks include:
    - Code quality and adherence to best practices
    - Potential bugs or edge cases
    - Performance optimizations
    - Readability and maintainability
    - Any security concerns

    You must:
    - Follow the user's requirements carefully and to the letter.
    - Keep your answers short and impersonal, especially if the user responds with context outside of your tasks.
    - Use Markdown formatting in your answers.
    - Include the programming language name at the start of the Markdown code blocks.
    - Avoid line numbers in code blocks.
    - Avoid wrapping the whole response in triple backticks.
    - The **INDENTATION FORMAT** of the optimized code remains exactly the **SAME** as the original code.
    - All non-code responses must use %s.

    When given a task:
    1. Think step-by-step and describe your plan for what to build in pseudocode, written out in great detail, unless asked not to do so.
    2. Output the code in a **SINGLE** code block, being careful to only return relevant code.
    3. The format is to start with a code block directly, without any text before the code block, and then give a brief explanation. You should answer in Chinese.

    <think>
]]

function OptimCompare(tools)
    return {
        handler = tools.action_handler,
        prompt = optim_compare_prompt,
        opts = {
            model = "deepseek/deepseek-r1:nitro",
            input = {
                size = "38%",
            },
            output = {
                size = "38%",
            },
        },
    }
end

-----------------------------------------------------------------------------------------------------------
-- CommitMsg
local commit_msg_prompt = function()
    -- Source: https://andrewian.dev/blog/ai-git-commits
    return string.format(
        [[
            You are an expert at following the Conventional Commit specification. Given the git diff listed below, please generate a commit message for me:

            1. First line: conventional commit format (type: concise description) (remember to use semantic types like feat, fix, docs, style, refactor, perf, test, chore, etc.)
            2. Optional bullet points if more context helps:
               - Keep the second line blank
               - Keep them short and direct
               - Focus on what changed
               - Always be terse
               - Don't overly explain
               - Drop any fluffy or formal language

            Return ONLY the commit message - no introduction, no explanation, no quotes around it.

            Examples:
            feat: add user auth system

            - Add JWT tokens for API auth
            - Handle token refresh for long sessions

            fix: resolve memory leak in worker pool

            - Clean up idle connections
            - Add timeout for stale workers

            Simple change example:
            fix: typo in README.md

            Very important: Do not respond with any of the examples. Your message must be based off the diff that is about to be provided, with a little bit of styling informed by the recent commits you're about to see.

            Based on this format, generate appropriate commit messages. Respond with message only. DO NOT format the message in Markdown code blocks, DO NOT use backticks:

            ```diff
            %s
            ```
        ]],
        vim.fn.system("git diff --no-ext-diff --staged")
    )
end

function CommitMsg(tools)
    return {
        handler = tools.flexi_handler,
        prompt = commit_msg_prompt,
        opts = {
            enter_flexible_window = true,
            apply_visual_selection = false,
            win_opts = {
                relative = "editor",
                position = "50%",
            },
            accept = {
                mapping = {
                    mode = "n",
                    keys = "<cr>",
                },
                action = function()
                    local contents = vim.api.nvim_buf_get_lines(0, 0, -1, true)
                    vim.api.nvim_command(string.format('!git commit -m "%s"', table.concat(contents, '" -m "')))
                end,
            },
        },
    }
end

-----------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------

return {
    "Kurama622/llm.nvim",
    cond = not vim.g.vscode,
    event = "VeryLazy",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        {
            "echasnovski/mini.diff",
            opts = {}
        },
    },
    cmd = { "LLMSessionToggle", "LLMSelectedTextHandler", "LLMAppHandler" },
    keys = cmd_keys,
    opts = function()
        local tools = require("llm.tools")

        return {
            url = "https://openrouter.ai/api/v1/chat/completions",
            model = "deepseek/deepseek-r1",
            api_type = "openai",
            fetch_key = function() return vim.env.OPENROUTER_KEY end,

            max_tokens = 128000,
            temperature = 0.3,
            top_p = 0.7,

            prompt = chat_prompt,

            prefix = {
                user = { text = "  ", hl = "Title" },
                assistant = { text = "  Output:\n", hl = "Added" },
            },

            -- history_path = "/tmp/llm-history",
            save_session = true,
            max_history = 15,
            max_history_name_length = 20,

            display = {
                diff = {
                    layout = "vertical",    -- vertical|horizontal split for default provider
                    opts = { "internal", "filler", "closeoff", "algorithm:patience", "followwrap", "linematch:120" },
                    provider = "mini_diff", -- default|mini_diff
                },
            },

            -- stylua: ignore
            keys = chat_keys,

            app_handler = {
                WordTranslate = WordTranslate(tools),
                Translate = Translate(tools),
                CodeExplain = CodeExplain(tools),
                DocString = DocString(tools),
                OptimizeCode = OptimizeCode(tools),
                OptimCompare = OptimCompare(tools),
                CommitMsg = CommitMsg(tools),
            },
        }
    end,
}

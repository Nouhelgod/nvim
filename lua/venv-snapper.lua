-- DEPRECATED


function get_python_path()
  -- Check for pyenv virtualenv in the current directory

  local cwd = vim.fn.getcwd()
  print("cwd = " .. cwd)

  local pyenv_virtualenv = vim.fn.glob(cwd .. "/.pyenv/versions/*/bin/python")
  if pyenv_virtualenv ~= "" then
    return pyenv_virtualenv
  end
 
  -- Check for .venv directory (common for virtualenv/venv)
  local venv_path = cwd .. "/.venv/bin/python"
  print("Searching for " .. venv_path)
  if vim.fn.executable(venv_path) == 1 then
    print("Found " .. venv_path)
    return venv_path
  end
 
  print("Not found " .. venv_path)
  -- Fallback: Use pyenv's global Python
  return vim.fn.system("pyenv which python"):gsub("%s+", "")
end

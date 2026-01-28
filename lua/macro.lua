local macro = {}

function macro.uv_run()
    vim.cmd('vsplit')
    vim.fn.termopen('uv run main.py', {
        on_exit = function(job_id, exit_code, event) 
            print('Terminal job done w/ code: ' .. exit_code)
        end
    })
end


return macro

local dap_install = require("dap-install")

dap_install.setup({
	installation_path = vim.fn.stdpath("data") .. "/dapinstall/",
})

local dap = require('dap')
    dap.adapters.python = {
      type = 'executable';
      command = os.getenv('HOME') .. '/.virtualenvs/debugpy/bin/python';
      args = { '-m', 'debugpy.adapter' };
}

dap.configurations.python = {
      {
        type = 'python';
        request = 'launch';
        name = "Launch file";
        program = "${file}";
        pythonPath = function()
          return '/usr/bin/python3'
        end;
      },
    }

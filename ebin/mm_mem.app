{application,mm_mem,
             [{description,"Memcache Tools App"},
              {vsn,"0.0.1"},
              {registered,[]},
              {applications,[kernel,stdlib,mm_config,mm_log]},
              {mod,{mm_mem_app,[]}},
              {env,[]},
              {modules,[mem_pool,mm_mem,mm_mem_app,mm_mem_sup]}]}.

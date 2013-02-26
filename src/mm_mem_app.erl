%%  Copyright (C) 2012 - Molchanov Maxim
-module(mm_mem_app).

-author('author Maxim Molchanov <elzor.job@gmail.com>').

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    mem_pool:start_link().

stop(_State) ->
    ok.

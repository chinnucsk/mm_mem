%%  Copyright (C) 2012 - Molchanov Maxim

-module(mm_mem).
-author('author Maxim Molchanov <elzor.job@gmail.com>').
-export([start/0, stop/0]).


%% @spec start() -> ok
%% @doc Start the webmachine server.
start() ->
    application:start(mm_mem).

%% @spec stop() -> ok
%% @doc Stop the webmachine server.
stop() ->
    application:stop(mm_mem).
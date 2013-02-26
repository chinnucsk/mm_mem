%%  Copyright (C) 2011 - Molchanov Maxim,
%% @author Maxim Molchanov <elzor.job@gmail.com>

-module(mem_pool).

-behaviour(supervisor).

%% API
-export([start_link/0]).
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

%% Helper macro for declaring children of supervisor
-define(CHILD(I, Type), {I, {I, start_link, []}, permanent, 5000, Type, [I]}).

%% ===================================================================
%% API functions
%% ===================================================================

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%% ===================================================================
%% Supervisor callbacks
%% ===================================================================

init([]) ->
	{ok, MemPool}  = config:get(mem_pool),
	Pool = lists:map(
			fun({Name, Params})->
				{ Name, { mcd_starter, start_link, [Name, Params]},
	    	    permanent, infinity, supervisor, [mcd_starter] }
			end,
			MemPool),
    {ok, {{one_for_one, 10, 10}, Pool}}.


%{ok, [42]} = mcd:set(mem_table, <<"bar">>, [42]).
%{ok, [42]} = mcd:set(hash_table, <<"bar">>, [42]).

%{ok, [42]} = mcd:get(mem_table, <<"bar">>).
%{ok, [42]} = mcd:get(hash_table, <<"bar">>).

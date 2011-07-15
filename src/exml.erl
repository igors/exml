%%%-------------------------------------------------------------------
%%% @author Michal Ptaszek <michal.ptaszek@erlang-solutions.com>
%%% @copyright (C) 2011, Erlang Solutions Ltd.
%%% @doc
%%%
%%% @end
%%% Created : 12 Jul 2011 by Michal Ptaszek <michal.ptaszek@erlang-solutions.com>
%%%-------------------------------------------------------------------
-module(exml).

-export([load/1]).
-export([new_parser/0, free_parser/1, parse/3]).

-spec load(string()) -> any().
load(Path) ->
    erlang:load_nif(Path, none).

-spec new_parser() -> term().
new_parser() ->
    throw({?MODULE, nif_not_loaded}).

-spec free_parser(term()) -> ok.
free_parser(_Parser) ->
    throw({?MODULE, nif_not_loaded}).

-spec parse(term(), binary(), boolean()) -> ok.
parse(_Parser, _Data, _Final) ->
    throw({?MODULE, nif_not_loaded}).
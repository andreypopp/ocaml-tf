(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type event_sources__amazon_code_guru_profiler

val event_sources__amazon_code_guru_profiler :
  status:string prop ->
  unit ->
  event_sources__amazon_code_guru_profiler

type event_sources

val event_sources :
  ?amazon_code_guru_profiler:
    event_sources__amazon_code_guru_profiler list ->
  unit ->
  event_sources

type aws_devopsguru_event_sources_config

val aws_devopsguru_event_sources_config :
  ?event_sources:event_sources list ->
  unit ->
  aws_devopsguru_event_sources_config

val yojson_of_aws_devopsguru_event_sources_config :
  aws_devopsguru_event_sources_config -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?event_sources:event_sources list ->
  string ->
  t

val make :
  ?event_sources:event_sources list -> string -> t Tf_core.resource

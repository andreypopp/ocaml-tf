(** Log Streams *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type settings

val settings : unit -> settings

type okta_log_stream

val okta_log_stream :
  ?id:string prop ->
  ?name:string prop ->
  settings:settings ->
  unit ->
  okta_log_stream

val yojson_of_okta_log_stream : okta_log_stream -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  name : string prop;
  status : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?name:string prop ->
  settings:settings ->
  string ->
  t

val make :
  ?id:string prop ->
  ?name:string prop ->
  settings:settings ->
  string ->
  t Tf_core.resource

(** Manages log streams *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type settings

val settings :
  ?account_id:string prop ->
  ?edition:string prop ->
  ?event_source_name:string prop ->
  ?host:string prop ->
  ?region:string prop ->
  ?token:string prop ->
  unit ->
  settings

type okta_log_stream

val okta_log_stream :
  ?status:string prop ->
  name:string prop ->
  type_:string prop ->
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
  ?status:string prop ->
  name:string prop ->
  type_:string prop ->
  settings:settings ->
  string ->
  t

val make :
  ?status:string prop ->
  name:string prop ->
  type_:string prop ->
  settings:settings ->
  string ->
  t Tf_core.resource

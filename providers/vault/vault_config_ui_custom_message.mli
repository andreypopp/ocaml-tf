(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type link

val link : href:string prop -> title:string prop -> unit -> link

type vault_config_ui_custom_message

val vault_config_ui_custom_message :
  ?authenticated:bool prop ->
  ?end_time:string prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?type_:string prop ->
  message_base64:string prop ->
  start_time:string prop ->
  title:string prop ->
  link:link list ->
  unit ->
  vault_config_ui_custom_message

val yojson_of_vault_config_ui_custom_message : vault_config_ui_custom_message -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  authenticated : bool prop;
  end_time : string prop;
  id : string prop;
  message_base64 : string prop;
  namespace : string prop;
  options : string Tf_core.assoc prop;
  start_time : string prop;
  title : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?authenticated:bool prop ->
  ?end_time:string prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?type_:string prop ->
  message_base64:string prop ->
  start_time:string prop ->
  title:string prop ->
  link:link list ->
  string ->
  t

val make :
  ?authenticated:bool prop ->
  ?end_time:string prop ->
  ?namespace:string prop ->
  ?options:string prop Tf_core.assoc ->
  ?type_:string prop ->
  message_base64:string prop ->
  start_time:string prop ->
  title:string prop ->
  link:link list ->
  string ->
  t Tf_core.resource

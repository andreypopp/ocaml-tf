(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_generic_endpoint

val vault_generic_endpoint :
  ?disable_delete:bool prop ->
  ?disable_read:bool prop ->
  ?id:string prop ->
  ?ignore_absent_fields:bool prop ->
  ?namespace:string prop ->
  ?write_fields:string prop list ->
  data_json:string prop ->
  path:string prop ->
  unit ->
  vault_generic_endpoint

val yojson_of_vault_generic_endpoint : vault_generic_endpoint -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  data_json : string prop;
  disable_delete : bool prop;
  disable_read : bool prop;
  id : string prop;
  ignore_absent_fields : bool prop;
  namespace : string prop;
  path : string prop;
  write_data : string Tf_core.assoc prop;
  write_data_json : string prop;
  write_fields : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?disable_delete:bool prop ->
  ?disable_read:bool prop ->
  ?id:string prop ->
  ?ignore_absent_fields:bool prop ->
  ?namespace:string prop ->
  ?write_fields:string prop list ->
  data_json:string prop ->
  path:string prop ->
  string ->
  t

val make :
  ?disable_delete:bool prop ->
  ?disable_read:bool prop ->
  ?id:string prop ->
  ?ignore_absent_fields:bool prop ->
  ?namespace:string prop ->
  ?write_fields:string prop list ->
  data_json:string prop ->
  path:string prop ->
  string ->
  t Tf_core.resource

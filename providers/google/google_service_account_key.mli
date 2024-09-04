(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type google_service_account_key

val google_service_account_key :
  ?id:string prop ->
  ?keepers:string prop Tf_core.assoc ->
  ?key_algorithm:string prop ->
  ?private_key_type:string prop ->
  ?public_key_data:string prop ->
  ?public_key_type:string prop ->
  service_account_id:string prop ->
  unit ->
  google_service_account_key

val yojson_of_google_service_account_key :
  google_service_account_key -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  keepers : string Tf_core.assoc prop;
  key_algorithm : string prop;
  name : string prop;
  private_key : string prop;
  private_key_type : string prop;
  public_key : string prop;
  public_key_data : string prop;
  public_key_type : string prop;
  service_account_id : string prop;
  valid_after : string prop;
  valid_before : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?keepers:string prop Tf_core.assoc ->
  ?key_algorithm:string prop ->
  ?private_key_type:string prop ->
  ?public_key_data:string prop ->
  ?public_key_type:string prop ->
  service_account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?keepers:string prop Tf_core.assoc ->
  ?key_algorithm:string prop ->
  ?private_key_type:string prop ->
  ?public_key_data:string prop ->
  ?public_key_type:string prop ->
  service_account_id:string prop ->
  string ->
  t Tf_core.resource

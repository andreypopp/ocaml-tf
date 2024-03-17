(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_service_account_key

type t = private {
  id : string prop;
  keepers : (string * string) list prop;
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

val google_service_account_key :
  ?id:string prop ->
  ?keepers:(string * string prop) list ->
  ?key_algorithm:string prop ->
  ?private_key_type:string prop ->
  ?public_key_data:string prop ->
  ?public_key_type:string prop ->
  service_account_id:string prop ->
  string ->
  t

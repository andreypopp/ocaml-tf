(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_service_account_key

val google_service_account_key :
  ?id:string ->
  ?keepers:(string * string) list ->
  ?key_algorithm:string ->
  ?private_key_type:string ->
  ?public_key_data:string ->
  ?public_key_type:string ->
  service_account_id:string ->
  string ->
  unit

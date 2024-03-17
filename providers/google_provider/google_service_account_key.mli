(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_service_account_key

val google_service_account_key :
  ?id:string prop ->
  ?keepers:(string * string prop) list ->
  ?key_algorithm:string prop ->
  ?private_key_type:string prop ->
  ?public_key_data:string prop ->
  ?public_key_type:string prop ->
  service_account_id:string prop ->
  string ->
  unit

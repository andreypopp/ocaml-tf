(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_service_account__timeouts
type google_service_account

val google_service_account :
  ?create_ignore_already_exists:bool ->
  ?description:string ->
  ?disabled:bool ->
  ?display_name:string ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_service_account__timeouts ->
  account_id:string ->
  string ->
  unit

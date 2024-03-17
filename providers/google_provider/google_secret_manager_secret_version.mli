(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secret_manager_secret_version__timeouts
type google_secret_manager_secret_version

val google_secret_manager_secret_version :
  ?deletion_policy:string ->
  ?enabled:bool ->
  ?id:string ->
  ?is_secret_data_base64:bool ->
  ?timeouts:google_secret_manager_secret_version__timeouts ->
  secret:string ->
  secret_data:string ->
  string ->
  unit

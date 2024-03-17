(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_secret_manager_secret_version__timeouts
type google_secret_manager_secret_version

val google_secret_manager_secret_version :
  ?deletion_policy:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?is_secret_data_base64:bool prop ->
  ?timeouts:google_secret_manager_secret_version__timeouts ->
  secret:string prop ->
  secret_data:string prop ->
  string ->
  unit

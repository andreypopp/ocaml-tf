(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_os_login_ssh_public_key__timeouts
type google_os_login_ssh_public_key

val google_os_login_ssh_public_key :
  ?expiration_time_usec:string ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_os_login_ssh_public_key__timeouts ->
  key:string ->
  user:string ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_os_login_ssh_public_key__timeouts
type google_os_login_ssh_public_key

type t = private {
  expiration_time_usec : string prop;
  fingerprint : string prop;
  id : string prop;
  key : string prop;
  project : string prop;
  user : string prop;
}

val google_os_login_ssh_public_key :
  ?expiration_time_usec:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_os_login_ssh_public_key__timeouts ->
  key:string prop ->
  user:string prop ->
  string ->
  t

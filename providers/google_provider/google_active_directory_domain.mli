(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_active_directory_domain__timeouts
type google_active_directory_domain

val google_active_directory_domain :
  ?admin:string prop ->
  ?authorized_networks:string prop list ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_active_directory_domain__timeouts ->
  domain_name:string prop ->
  locations:string prop list ->
  reserved_ip_range:string prop ->
  string ->
  unit

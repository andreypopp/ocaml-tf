(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_active_directory_domain__timeouts
type google_active_directory_domain

val google_active_directory_domain :
  ?admin:string ->
  ?authorized_networks:string list ->
  ?labels:(string * string) list ->
  ?timeouts:google_active_directory_domain__timeouts ->
  domain_name:string ->
  locations:string list ->
  reserved_ip_range:string ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_instance__timeouts
type google_apigee_instance

val google_apigee_instance :
  ?consumer_accept_list:string list ->
  ?description:string ->
  ?disk_encryption_key_name:string ->
  ?display_name:string ->
  ?id:string ->
  ?ip_range:string ->
  ?peering_cidr_range:string ->
  ?timeouts:google_apigee_instance__timeouts ->
  location:string ->
  name:string ->
  org_id:string ->
  string ->
  unit

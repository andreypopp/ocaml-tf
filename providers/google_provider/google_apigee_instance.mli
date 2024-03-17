(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_instance__timeouts
type google_apigee_instance

val google_apigee_instance :
  ?consumer_accept_list:string prop list ->
  ?description:string prop ->
  ?disk_encryption_key_name:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?ip_range:string prop ->
  ?peering_cidr_range:string prop ->
  ?timeouts:google_apigee_instance__timeouts ->
  location:string prop ->
  name:string prop ->
  org_id:string prop ->
  string ->
  unit

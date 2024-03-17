(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_instance__timeouts
type google_apigee_instance

type t = private {
  consumer_accept_list : string list prop;
  description : string prop;
  disk_encryption_key_name : string prop;
  display_name : string prop;
  host : string prop;
  id : string prop;
  ip_range : string prop;
  location : string prop;
  name : string prop;
  org_id : string prop;
  peering_cidr_range : string prop;
  port : string prop;
  service_attachment : string prop;
}

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
  t

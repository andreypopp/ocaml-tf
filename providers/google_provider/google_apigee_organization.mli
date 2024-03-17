(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_organization__properties__property
type google_apigee_organization__properties
type google_apigee_organization__timeouts
type google_apigee_organization

val google_apigee_organization :
  ?analytics_region:string prop ->
  ?authorized_network:string prop ->
  ?billing_type:string prop ->
  ?description:string prop ->
  ?disable_vpc_peering:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?retention:string prop ->
  ?runtime_database_encryption_key_name:string prop ->
  ?runtime_type:string prop ->
  ?timeouts:google_apigee_organization__timeouts ->
  project_id:string prop ->
  properties:google_apigee_organization__properties list ->
  string ->
  unit

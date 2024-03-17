(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_apigee_organization__properties__property
type google_apigee_organization__properties
type google_apigee_organization__timeouts
type google_apigee_organization

val google_apigee_organization :
  ?analytics_region:string ->
  ?authorized_network:string ->
  ?description:string ->
  ?disable_vpc_peering:bool ->
  ?display_name:string ->
  ?retention:string ->
  ?runtime_database_encryption_key_name:string ->
  ?runtime_type:string ->
  ?timeouts:google_apigee_organization__timeouts ->
  project_id:string ->
  properties:google_apigee_organization__properties list ->
  string ->
  unit

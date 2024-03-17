(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_identity_group__group_key
type google_cloud_identity_group__timeouts

type google_cloud_identity_group__additional_group_keys = {
  id : string;  (** id *)
  namespace : string;  (** namespace *)
}

type google_cloud_identity_group

val google_cloud_identity_group :
  ?description:string ->
  ?display_name:string ->
  ?id:string ->
  ?initial_group_config:string ->
  ?timeouts:google_cloud_identity_group__timeouts ->
  labels:(string * string) list ->
  parent:string ->
  group_key:google_cloud_identity_group__group_key list ->
  string ->
  unit

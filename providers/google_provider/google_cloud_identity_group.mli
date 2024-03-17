(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_identity_group__group_key
type google_cloud_identity_group__timeouts

type google_cloud_identity_group__additional_group_keys = {
  id : string prop;  (** id *)
  namespace : string prop;  (** namespace *)
}

type google_cloud_identity_group

val google_cloud_identity_group :
  ?description:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?initial_group_config:string prop ->
  ?timeouts:google_cloud_identity_group__timeouts ->
  labels:(string * string prop) list ->
  parent:string prop ->
  group_key:google_cloud_identity_group__group_key list ->
  string ->
  unit

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_identity_group__group_key
type google_cloud_identity_group__timeouts

type google_cloud_identity_group__additional_group_keys = {
  id : string prop;  (** id *)
  namespace : string prop;  (** namespace *)
}

type google_cloud_identity_group

type t = private {
  additional_group_keys :
    google_cloud_identity_group__additional_group_keys list prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  initial_group_config : string prop;
  labels : (string * string) list prop;
  name : string prop;
  parent : string prop;
  update_time : string prop;
}

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
  t

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_identity_group_membership__preferred_member_key
type google_cloud_identity_group_membership__roles__expiry_detail
type google_cloud_identity_group_membership__roles
type google_cloud_identity_group_membership__timeouts
type google_cloud_identity_group_membership

type t = private {
  create_time : string prop;
  group : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
  update_time : string prop;
}

val google_cloud_identity_group_membership :
  ?id:string prop ->
  ?timeouts:google_cloud_identity_group_membership__timeouts ->
  group:string prop ->
  preferred_member_key:
    google_cloud_identity_group_membership__preferred_member_key list ->
  roles:google_cloud_identity_group_membership__roles list ->
  string ->
  t

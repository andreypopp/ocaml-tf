(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_cloud_identity_group_membership__preferred_member_key
type google_cloud_identity_group_membership__roles__expiry_detail
type google_cloud_identity_group_membership__roles
type google_cloud_identity_group_membership__timeouts
type google_cloud_identity_group_membership

val google_cloud_identity_group_membership :
  ?timeouts:google_cloud_identity_group_membership__timeouts ->
  group:string ->
  preferred_member_key:
    google_cloud_identity_group_membership__preferred_member_key list ->
  roles:google_cloud_identity_group_membership__roles list ->
  string ->
  unit

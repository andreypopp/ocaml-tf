(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_cloud_identity_group_membership__preferred_member_key = {
  id : string;
      (** The ID of the entity.

For Google-managed entities, the id must be the email address of an existing
group or user.

For external-identity-mapped entities, the id must be a string conforming
to the Identity Source's requirements.

Must be unique within a namespace. *)
  namespace : string option; [@option]
      (** The namespace in which the entity exists.

If not specified, the EntityKey represents a Google-managed entity
such as a Google user or a Google Group.

If specified, the EntityKey represents an external-identity-mapped group.
The namespace must correspond to an identity source created in Admin Console
and must be in the form of 'identitysources/{identity_source_id}'. *)
}
[@@deriving yojson_of]
(** EntityKey of the member. *)

type google_cloud_identity_group_membership__roles__expiry_detail = {
  expire_time : string;
      (** The time at which the MembershipRole will expire.

A timestamp in RFC3339 UTC Zulu format, with nanosecond
resolution and up to nine fractional digits.

Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
}
[@@deriving yojson_of]
(** The MembershipRole expiry details, only supported for MEMBER role.
Other roles cannot be accompanied with MEMBER role having expiry. *)

type google_cloud_identity_group_membership__roles = {
  name : string;
      (** The name of the MembershipRole. Must be one of OWNER, MANAGER, MEMBER. Possible values: [OWNER, MANAGER, MEMBER] *)
  expiry_detail :
    google_cloud_identity_group_membership__roles__expiry_detail list;
}
[@@deriving yojson_of]
(** The MembershipRoles that apply to the Membership.
Must not contain duplicate MembershipRoles with the same name. *)

type google_cloud_identity_group_membership__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_cloud_identity_group_membership__timeouts *)

type google_cloud_identity_group_membership = {
  group : string;
      (** The name of the Group to create this membership in. *)
  preferred_member_key :
    google_cloud_identity_group_membership__preferred_member_key list;
  roles : google_cloud_identity_group_membership__roles list;
  timeouts : google_cloud_identity_group_membership__timeouts option;
}
[@@deriving yojson_of]
(** google_cloud_identity_group_membership *)

let google_cloud_identity_group_membership ?timeouts ~group
    ~preferred_member_key ~roles __resource_id =
  let __resource_type = "google_cloud_identity_group_membership" in
  let __resource =
    { group; preferred_member_key; roles; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_identity_group_membership __resource);
  ()
(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_cloud_identity_group__group_key = {
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
(** EntityKey of the Group. *)

type google_cloud_identity_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_cloud_identity_group__timeouts *)

type google_cloud_identity_group__additional_group_keys = {
  id : string;  (** id *)
  namespace : string;  (** namespace *)
}
[@@deriving yojson_of]

type google_cloud_identity_group = {
  description : string option; [@option]
      (** An extended description to help users determine the purpose of a Group.
Must not be longer than 4,096 characters. *)
  display_name : string option; [@option]
      (** The display name of the Group. *)
  initial_group_config : string option; [@option]
      (** The initial configuration options for creating a Group.

See the
[API reference](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups/create#initialgroupconfig)
for possible values. Default value: EMPTY Possible values: [INITIAL_GROUP_CONFIG_UNSPECIFIED, WITH_INITIAL_OWNER, EMPTY] *)
  labels : (string * string) list;
      (** One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.

Google Groups are the default type of group and have a label with a key of cloudidentity.googleapis.com/groups.discussion_forum and an empty value.

Existing Google Groups can have an additional label with a key of cloudidentity.googleapis.com/groups.security and an empty value added to them. This is an immutable change and the security label cannot be removed once added.

Dynamic groups have a label with a key of cloudidentity.googleapis.com/groups.dynamic.

Identity-mapped groups for Cloud Search have a label with a key of system/groups/external and an empty value. *)
  parent : string;
      (** The resource name of the entity under which this Group resides in the
Cloud Identity resource hierarchy.

Must be of the form identitysources/{identity_source_id} for external-identity-mapped
groups or customers/{customer_id} for Google Groups. *)
  group_key : google_cloud_identity_group__group_key list;
  timeouts : google_cloud_identity_group__timeouts option;
}
[@@deriving yojson_of]
(** google_cloud_identity_group *)

let google_cloud_identity_group ?description ?display_name
    ?initial_group_config ?timeouts ~labels ~parent ~group_key
    __resource_id =
  let __resource_type = "google_cloud_identity_group" in
  let __resource =
    {
      description;
      display_name;
      initial_group_config;
      labels;
      parent;
      group_key;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_identity_group __resource);
  ()

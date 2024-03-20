(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type group_key = {
  id : string prop;
      (** The ID of the entity.

For Google-managed entities, the id must be the email address of an existing
group or user.

For external-identity-mapped entities, the id must be a string conforming
to the Identity Source's requirements.

Must be unique within a namespace. *)
  namespace : string prop option; [@option]
      (** The namespace in which the entity exists.

If not specified, the EntityKey represents a Google-managed entity
such as a Google user or a Google Group.

If specified, the EntityKey represents an external-identity-mapped group.
The namespace must correspond to an identity source created in Admin Console
and must be in the form of 'identitysources/{identity_source_id}'. *)
}
[@@deriving yojson_of]
(** EntityKey of the Group. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type additional_group_keys = {
  id : string prop;  (** id *)
  namespace : string prop;  (** namespace *)
}
[@@deriving yojson_of]

type google_cloud_identity_group = {
  description : string prop option; [@option]
      (** An extended description to help users determine the purpose of a Group.
Must not be longer than 4,096 characters. *)
  display_name : string prop option; [@option]
      (** The display name of the Group. *)
  id : string prop option; [@option]  (** id *)
  initial_group_config : string prop option; [@option]
      (** The initial configuration options for creating a Group.

See the
[API reference](https://cloud.google.com/identity/docs/reference/rest/v1beta1/groups/create#initialgroupconfig)
for possible values. Default value: EMPTY Possible values: [INITIAL_GROUP_CONFIG_UNSPECIFIED, WITH_INITIAL_OWNER, EMPTY] *)
  labels : (string * string prop) list;
      (** One or more label entries that apply to the Group. Currently supported labels contain a key with an empty value.

Google Groups are the default type of group and have a label with a key of cloudidentity.googleapis.com/groups.discussion_forum and an empty value.

Existing Google Groups can have an additional label with a key of cloudidentity.googleapis.com/groups.security and an empty value added to them. This is an immutable change and the security label cannot be removed once added.

Dynamic groups have a label with a key of cloudidentity.googleapis.com/groups.dynamic.

Identity-mapped groups for Cloud Search have a label with a key of system/groups/external and an empty value. *)
  parent : string prop;
      (** The resource name of the entity under which this Group resides in the
Cloud Identity resource hierarchy.

Must be of the form identitysources/{identity_source_id} for external-identity-mapped
groups or customers/{customer_id} for Google Groups. *)
  group_key : group_key list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_cloud_identity_group *)

let group_key ?namespace ~id () : group_key = { id; namespace }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloud_identity_group ?description ?display_name ?id
    ?initial_group_config ?timeouts ~labels ~parent ~group_key () :
    google_cloud_identity_group =
  {
    description;
    display_name;
    id;
    initial_group_config;
    labels;
    parent;
    group_key;
    timeouts;
  }

type t = {
  additional_group_keys : additional_group_keys list prop;
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

let make ?description ?display_name ?id ?initial_group_config
    ?timeouts ~labels ~parent ~group_key __id =
  let __type = "google_cloud_identity_group" in
  let __attrs =
    ({
       additional_group_keys =
         Prop.computed __type __id "additional_group_keys";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       initial_group_config =
         Prop.computed __type __id "initial_group_config";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_identity_group
        (google_cloud_identity_group ?description ?display_name ?id
           ?initial_group_config ?timeouts ~labels ~parent ~group_key
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id
    ?initial_group_config ?timeouts ~labels ~parent ~group_key __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?initial_group_config
      ?timeouts ~labels ~parent ~group_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_tags_tag_key = {
  description : string prop option; [@option]
      (** User-assigned description of the TagKey. Must not exceed 256 characters. *)
  id : string prop option; [@option]  (** id *)
  parent : string prop;
      (** Input only. The resource name of the new TagKey's parent. Must be of the form organizations/{org_id} or projects/{project_id_or_number}. *)
  purpose : string prop option; [@option]
      (** Optional. A purpose cannot be changed once set.

A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. Possible values: [GCE_FIREWALL] *)
  purpose_data : (string * string prop) list option; [@option]
      (** Optional. Purpose data cannot be changed once set.

Purpose data corresponds to the policy system that the tag is intended for. For example, the GCE_FIREWALL purpose expects data in the following format: 'network = <project-name>/<vpc-name>'. *)
  short_name : string prop;
      (** Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.

The short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_tags_tag_key *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_tags_tag_key ?description ?id ?purpose ?purpose_data
    ?timeouts ~parent ~short_name () : google_tags_tag_key =
  {
    description;
    id;
    parent;
    purpose;
    purpose_data;
    short_name;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  namespaced_name : string prop;
  parent : string prop;
  purpose : string prop;
  purpose_data : (string * string) list prop;
  short_name : string prop;
  update_time : string prop;
}

let register ?tf_module ?description ?id ?purpose ?purpose_data
    ?timeouts ~parent ~short_name __resource_id =
  let __resource_type = "google_tags_tag_key" in
  let __resource =
    google_tags_tag_key ?description ?id ?purpose ?purpose_data
      ?timeouts ~parent ~short_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_tags_tag_key __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       namespaced_name =
         Prop.computed __resource_type __resource_id
           "namespaced_name";
       parent = Prop.computed __resource_type __resource_id "parent";
       purpose =
         Prop.computed __resource_type __resource_id "purpose";
       purpose_data =
         Prop.computed __resource_type __resource_id "purpose_data";
       short_name =
         Prop.computed __resource_type __resource_id "short_name";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes

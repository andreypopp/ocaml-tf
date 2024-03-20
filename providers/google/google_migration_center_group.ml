(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_migration_center_group = {
  description : string prop option; [@option]
      (** Optional. The description of the group. *)
  display_name : string prop option; [@option]
      (** Optional. User-friendly display name. *)
  group_id : string prop;
      (** Required. User specified ID for the group. It will become the last component of the group name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: '[a-z]([a-z0-9-]{0,61}[a-z0-9])?'. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Labels as key value pairs. 

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;  (** The location of the group. *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_migration_center_group *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_migration_center_group ?description ?display_name ?id
    ?labels ?project ?timeouts ~group_id ~location () :
    google_migration_center_group =
  {
    description;
    display_name;
    group_id;
    id;
    labels;
    location;
    project;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  group_id : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?display_name ?id ?labels ?project ?timeouts
    ~group_id ~location __id =
  let __type = "google_migration_center_group" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       group_id = Prop.computed __type __id "group_id";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_migration_center_group
        (google_migration_center_group ?description ?display_name ?id
           ?labels ?project ?timeouts ~group_id ~location ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?labels
    ?project ?timeouts ~group_id ~location __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?labels ?project ?timeouts
      ~group_id ~location __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_migration_center_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_migration_center_group__timeouts *)

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
  timeouts : google_migration_center_group__timeouts option;
}
[@@deriving yojson_of]
(** google_migration_center_group *)

let google_migration_center_group ?description ?display_name ?id
    ?labels ?project ?timeouts ~group_id ~location __resource_id =
  let __resource_type = "google_migration_center_group" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_migration_center_group __resource);
  ()

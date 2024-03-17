(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_migration_center_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_migration_center_group__timeouts *)

type google_migration_center_group = {
  description : string option; [@option]
      (** Optional. The description of the group. *)
  display_name : string option; [@option]
      (** Optional. User-friendly display name. *)
  group_id : string;
      (** Required. User specified ID for the group. It will become the last component of the group name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: '[a-z]([a-z0-9-]{0,61}[a-z0-9])?'. *)
  labels : (string * string) list option; [@option]
      (** Labels as key value pairs. 

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;  (** The location of the group. *)
  timeouts : google_migration_center_group__timeouts option;
}
[@@deriving yojson_of]
(** google_migration_center_group *)

let google_migration_center_group ?description ?display_name ?labels
    ?timeouts ~group_id ~location __resource_id =
  let __resource_type = "google_migration_center_group" in
  let __resource =
    {
      description;
      display_name;
      group_id;
      labels;
      location;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_migration_center_group __resource);
  ()

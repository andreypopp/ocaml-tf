(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_tags_tag_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_tags_tag_key__timeouts *)

type google_tags_tag_key = {
  description : string option; [@option]
      (** User-assigned description of the TagKey. Must not exceed 256 characters. *)
  parent : string;
      (** Input only. The resource name of the new TagKey's parent. Must be of the form organizations/{org_id} or projects/{project_id_or_number}. *)
  purpose : string option; [@option]
      (** Optional. A purpose cannot be changed once set.

A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. Possible values: [GCE_FIREWALL] *)
  purpose_data : (string * string) list option; [@option]
      (** Optional. Purpose data cannot be changed once set.

Purpose data corresponds to the policy system that the tag is intended for. For example, the GCE_FIREWALL purpose expects data in the following format: 'network = <project-name>/<vpc-name>'. *)
  short_name : string;
      (** Input only. The user friendly name for a TagKey. The short name should be unique for TagKeys within the same tag namespace.

The short name must be 1-63 characters, beginning and ending with an alphanumeric character ([a-z0-9A-Z]) with dashes (-), underscores (_), dots (.), and alphanumerics between. *)
  timeouts : google_tags_tag_key__timeouts option;
}
[@@deriving yojson_of]
(** google_tags_tag_key *)

let google_tags_tag_key ?description ?purpose ?purpose_data ?timeouts
    ~parent ~short_name __resource_id =
  let __resource_type = "google_tags_tag_key" in
  let __resource =
    {
      description;
      parent;
      purpose;
      purpose_data;
      short_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_tags_tag_key __resource);
  ()

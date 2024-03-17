(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_catalog_policy_tag__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_data_catalog_policy_tag__timeouts *)

type google_data_catalog_policy_tag = {
  description : string option; [@option]
      (** Description of this policy tag. It must: contain only unicode characters, tabs,
newlines, carriage returns and page breaks; and be at most 2000 bytes long when
encoded in UTF-8. If not set, defaults to an empty description.
If not set, defaults to an empty description. *)
  display_name : string;
      (** User defined name of this policy tag. It must: be unique within the parent
taxonomy; contain only unicode letters, numbers, underscores, dashes and spaces;
not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8. *)
  parent_policy_tag : string option; [@option]
      (** Resource name of this policy tag's parent policy tag.
If empty, it means this policy tag is a top level policy tag.
If not set, defaults to an empty string. *)
  taxonomy : string;
      (** Taxonomy the policy tag is associated with *)
  timeouts : google_data_catalog_policy_tag__timeouts option;
}
[@@deriving yojson_of]
(** google_data_catalog_policy_tag *)

let google_data_catalog_policy_tag ?description ?parent_policy_tag
    ?timeouts ~display_name ~taxonomy __resource_id =
  let __resource_type = "google_data_catalog_policy_tag" in
  let __resource =
    {
      description;
      display_name;
      parent_policy_tag;
      taxonomy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_policy_tag __resource);
  ()

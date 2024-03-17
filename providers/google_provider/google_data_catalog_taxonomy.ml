(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_catalog_taxonomy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_data_catalog_taxonomy__timeouts *)

type google_data_catalog_taxonomy = {
  activated_policy_types : string list option; [@option]
      (** A list of policy types that are activated for this taxonomy. If not set,
defaults to an empty list. Possible values: [POLICY_TYPE_UNSPECIFIED, FINE_GRAINED_ACCESS_CONTROL] *)
  description : string option; [@option]
      (** Description of this taxonomy. It must: contain only unicode characters,
tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes
long when encoded in UTF-8. If not set, defaults to an empty description. *)
  display_name : string;
      (** User defined name of this taxonomy.
The taxonomy display name must be unique within an organization.
It must: contain only unicode letters, numbers, underscores, dashes
and spaces; not start or end with spaces; and be at most 200 bytes
long when encoded in UTF-8. *)
  id : string option; [@option]  (** id *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]  (** Taxonomy location region. *)
  timeouts : google_data_catalog_taxonomy__timeouts option;
}
[@@deriving yojson_of]
(** google_data_catalog_taxonomy *)

let google_data_catalog_taxonomy ?activated_policy_types ?description
    ?id ?project ?region ?timeouts ~display_name __resource_id =
  let __resource_type = "google_data_catalog_taxonomy" in
  let __resource =
    {
      activated_policy_types;
      description;
      display_name;
      id;
      project;
      region;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_taxonomy __resource);
  ()

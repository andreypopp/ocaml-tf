(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_catalog_policy_tag__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_data_catalog_policy_tag__timeouts *)

type google_data_catalog_policy_tag = {
  description : string prop option; [@option]
      (** Description of this policy tag. It must: contain only unicode characters, tabs,
newlines, carriage returns and page breaks; and be at most 2000 bytes long when
encoded in UTF-8. If not set, defaults to an empty description.
If not set, defaults to an empty description. *)
  display_name : string prop;
      (** User defined name of this policy tag. It must: be unique within the parent
taxonomy; contain only unicode letters, numbers, underscores, dashes and spaces;
not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8. *)
  id : string prop option; [@option]  (** id *)
  parent_policy_tag : string prop option; [@option]
      (** Resource name of this policy tag's parent policy tag.
If empty, it means this policy tag is a top level policy tag.
If not set, defaults to an empty string. *)
  taxonomy : string prop;
      (** Taxonomy the policy tag is associated with *)
  timeouts : google_data_catalog_policy_tag__timeouts option;
}
[@@deriving yojson_of]
(** google_data_catalog_policy_tag *)

type t = {
  child_policy_tags : string list prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent_policy_tag : string prop;
  taxonomy : string prop;
}

let google_data_catalog_policy_tag ?description ?id
    ?parent_policy_tag ?timeouts ~display_name ~taxonomy
    __resource_id =
  let __resource_type = "google_data_catalog_policy_tag" in
  let __resource =
    ({
       description;
       display_name;
       id;
       parent_policy_tag;
       taxonomy;
       timeouts;
     }
      : google_data_catalog_policy_tag)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_policy_tag __resource);
  let __resource_attributes =
    ({
       child_policy_tags =
         Prop.computed __resource_type __resource_id
           "child_policy_tags";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       parent_policy_tag =
         Prop.computed __resource_type __resource_id
           "parent_policy_tag";
       taxonomy =
         Prop.computed __resource_type __resource_id "taxonomy";
     }
      : t)
  in
  __resource_attributes

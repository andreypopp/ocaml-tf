(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_data_catalog_entry_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_data_catalog_entry_group__timeouts *)

type google_data_catalog_entry_group = {
  description : string prop option; [@option]
      (** Entry group description, which can consist of several sentences or paragraphs that describe entry group contents. *)
  display_name : string prop option; [@option]
      (** A short name to identify the entry group, for example, analytics data - jan 2011. *)
  entry_group_id : string prop;
      (** The id of the entry group to create. The id must begin with a letter or underscore,
contain only English letters, numbers and underscores, and be at most 64 characters. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** EntryGroup location region. *)
  timeouts : google_data_catalog_entry_group__timeouts option;
}
[@@deriving yojson_of]
(** google_data_catalog_entry_group *)

type t = {
  description : string prop;
  display_name : string prop;
  entry_group_id : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
}

let google_data_catalog_entry_group ?description ?display_name ?id
    ?project ?region ?timeouts ~entry_group_id __resource_id =
  let __resource_type = "google_data_catalog_entry_group" in
  let __resource =
    ({
       description;
       display_name;
       entry_group_id;
       id;
       project;
       region;
       timeouts;
     }
      : google_data_catalog_entry_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_data_catalog_entry_group __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       entry_group_id =
         Prop.computed __resource_type __resource_id "entry_group_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
     }
      : t)
  in
  __resource_attributes

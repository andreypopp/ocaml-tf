(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_data_catalog_taxonomy = {
  activated_policy_types : string prop list option; [@option]
      (** A list of policy types that are activated for this taxonomy. If not set,
defaults to an empty list. Possible values: [POLICY_TYPE_UNSPECIFIED, FINE_GRAINED_ACCESS_CONTROL] *)
  description : string prop option; [@option]
      (** Description of this taxonomy. It must: contain only unicode characters,
tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes
long when encoded in UTF-8. If not set, defaults to an empty description. *)
  display_name : string prop;
      (** User defined name of this taxonomy.
The taxonomy display name must be unique within an organization.
It must: contain only unicode letters, numbers, underscores, dashes
and spaces; not start or end with spaces; and be at most 200 bytes
long when encoded in UTF-8. *)
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** Taxonomy location region. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_data_catalog_taxonomy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_data_catalog_taxonomy ?activated_policy_types ?description
    ?id ?project ?region ?timeouts ~display_name () :
    google_data_catalog_taxonomy =
  {
    activated_policy_types;
    description;
    display_name;
    id;
    project;
    region;
    timeouts;
  }

type t = {
  activated_policy_types : string list prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
}

let make ?activated_policy_types ?description ?id ?project ?region
    ?timeouts ~display_name __id =
  let __type = "google_data_catalog_taxonomy" in
  let __attrs =
    ({
       activated_policy_types =
         Prop.computed __type __id "activated_policy_types";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_taxonomy
        (google_data_catalog_taxonomy ?activated_policy_types
           ?description ?id ?project ?region ?timeouts ~display_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?activated_policy_types ?description ?id
    ?project ?region ?timeouts ~display_name __id =
  let (r : _ Tf_core.resource) =
    make ?activated_policy_types ?description ?id ?project ?region
      ?timeouts ~display_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

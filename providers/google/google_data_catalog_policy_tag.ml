(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_data_catalog_policy_tag *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_data_catalog_policy_tag ?description ?id
    ?parent_policy_tag ?timeouts ~display_name ~taxonomy () :
    google_data_catalog_policy_tag =
  {
    description;
    display_name;
    id;
    parent_policy_tag;
    taxonomy;
    timeouts;
  }

type t = {
  child_policy_tags : string list prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent_policy_tag : string prop;
  taxonomy : string prop;
}

let make ?description ?id ?parent_policy_tag ?timeouts ~display_name
    ~taxonomy __id =
  let __type = "google_data_catalog_policy_tag" in
  let __attrs =
    ({
       child_policy_tags =
         Prop.computed __type __id "child_policy_tags";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent_policy_tag =
         Prop.computed __type __id "parent_policy_tag";
       taxonomy = Prop.computed __type __id "taxonomy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_data_catalog_policy_tag
        (google_data_catalog_policy_tag ?description ?id
           ?parent_policy_tag ?timeouts ~display_name ~taxonomy ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?parent_policy_tag ?timeouts
    ~display_name ~taxonomy __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?parent_policy_tag ?timeouts ~display_name
      ~taxonomy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_data_catalog_entry_group *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_data_catalog_entry_group ?description ?display_name ?id
    ?project ?region ?timeouts ~entry_group_id () :
    google_data_catalog_entry_group =
  {
    description;
    display_name;
    entry_group_id;
    id;
    project;
    region;
    timeouts;
  }

type t = {
  description : string prop;
  display_name : string prop;
  entry_group_id : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
}

let make ?description ?display_name ?id ?project ?region ?timeouts
    ~entry_group_id __id =
  let __type = "google_data_catalog_entry_group" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       entry_group_id = Prop.computed __type __id "entry_group_id";
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
      yojson_of_google_data_catalog_entry_group
        (google_data_catalog_entry_group ?description ?display_name
           ?id ?project ?region ?timeouts ~entry_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?display_name ?id ?project
    ?region ?timeouts ~entry_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?description ?display_name ?id ?project ?region ?timeouts
      ~entry_group_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

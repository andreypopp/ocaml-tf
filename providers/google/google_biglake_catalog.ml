(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_biglake_catalog = {
  id : string prop option; [@option]  (** id *)
  location : string prop;
      (** The geographic location where the Catalog should reside. *)
  name : string prop;
      (** The name of the Catalog. Format:
projects/{project_id_or_number}/locations/{locationId}/catalogs/{catalogId} *)
  project : string prop option; [@option]  (** project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_biglake_catalog *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_biglake_catalog ?id ?project ?timeouts ~location ~name ()
    : google_biglake_catalog =
  { id; location; name; project; timeouts }

type t = {
  create_time : string prop;
  delete_time : string prop;
  expire_time : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
}

let make ?id ?project ?timeouts ~location ~name __id =
  let __type = "google_biglake_catalog" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       delete_time = Prop.computed __type __id "delete_time";
       expire_time = Prop.computed __type __id "expire_time";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_biglake_catalog
        (google_biglake_catalog ?id ?project ?timeouts ~location
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?timeouts ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?timeouts ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

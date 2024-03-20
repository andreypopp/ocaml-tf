(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_network_security_url_lists = {
  description : string prop option; [@option]
      (** Free-text description of the resource. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location of the url lists. *)
  name : string prop;
      (** Short name of the UrlList resource to be created.
This value should be 1-63 characters long, containing only letters, numbers, hyphens, and underscores, and should not start with a number. E.g. 'urlList'. *)
  project : string prop option; [@option]  (** project *)
  values : string prop list;  (** FQDNs and URLs. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_network_security_url_lists *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_security_url_lists ?description ?id ?project
    ?timeouts ~location ~name ~values () :
    google_network_security_url_lists =
  { description; id; location; name; project; values; timeouts }

type t = {
  create_time : string prop;
  description : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  project : string prop;
  update_time : string prop;
  values : string list prop;
}

let make ?description ?id ?project ?timeouts ~location ~name ~values
    __id =
  let __type = "google_network_security_url_lists" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       update_time = Prop.computed __type __id "update_time";
       values = Prop.computed __type __id "values";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_network_security_url_lists
        (google_network_security_url_lists ?description ?id ?project
           ?timeouts ~location ~name ~values ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?timeouts ~location
    ~name ~values __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?timeouts ~location ~name ~values
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

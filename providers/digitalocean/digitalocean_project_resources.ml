(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_project_resources = {
  id : string prop option; [@option]  (** id *)
  project : string prop;  (** project ID *)
  resources : string prop list;
      (** the resources associated with the project *)
}
[@@deriving yojson_of]
(** digitalocean_project_resources *)

let digitalocean_project_resources ?id ~project ~resources () :
    digitalocean_project_resources =
  { id; project; resources }

type t = {
  id : string prop;
  project : string prop;
  resources : string list prop;
}

let make ?id ~project ~resources __id =
  let __type = "digitalocean_project_resources" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       project = Prop.computed __type __id "project";
       resources = Prop.computed __type __id "resources";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_project_resources
        (digitalocean_project_resources ?id ~project ~resources ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~project ~resources __id =
  let (r : _ Tf_core.resource) = make ?id ~project ~resources __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

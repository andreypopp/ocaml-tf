(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type digitalocean_project = {
  description : string prop option; [@option]
      (** the description of the project *)
  environment : string prop option; [@option]
      (** the environment of the project's resources *)
  id : string prop option; [@option]  (** id *)
  is_default : bool prop option; [@option]
      (** determine if the project is the default or not. *)
  name : string prop;  (** the human-readable name for the project *)
  purpose : string prop option; [@option]
      (** the purpose of the project *)
  resources : string prop list option; [@option]
      (** the resources associated with the project *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_project *)

let timeouts ?delete () : timeouts = { delete }

let digitalocean_project ?description ?environment ?id ?is_default
    ?purpose ?resources ?timeouts ~name () : digitalocean_project =
  {
    description;
    environment;
    id;
    is_default;
    name;
    purpose;
    resources;
    timeouts;
  }

type t = {
  created_at : string prop;
  description : string prop;
  environment : string prop;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  owner_id : float prop;
  owner_uuid : string prop;
  purpose : string prop;
  resources : string list prop;
  updated_at : string prop;
}

let make ?description ?environment ?id ?is_default ?purpose
    ?resources ?timeouts ~name __id =
  let __type = "digitalocean_project" in
  let __attrs =
    ({
       created_at = Prop.computed __type __id "created_at";
       description = Prop.computed __type __id "description";
       environment = Prop.computed __type __id "environment";
       id = Prop.computed __type __id "id";
       is_default = Prop.computed __type __id "is_default";
       name = Prop.computed __type __id "name";
       owner_id = Prop.computed __type __id "owner_id";
       owner_uuid = Prop.computed __type __id "owner_uuid";
       purpose = Prop.computed __type __id "purpose";
       resources = Prop.computed __type __id "resources";
       updated_at = Prop.computed __type __id "updated_at";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_project
        (digitalocean_project ?description ?environment ?id
           ?is_default ?purpose ?resources ?timeouts ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?environment ?id ?is_default
    ?purpose ?resources ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?environment ?id ?is_default ?purpose
      ?resources ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

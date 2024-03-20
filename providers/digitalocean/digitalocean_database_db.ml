(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_database_db = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** digitalocean_database_db *)

let digitalocean_database_db ?id ~cluster_id ~name () :
    digitalocean_database_db =
  { cluster_id; id; name }

type t = {
  cluster_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~cluster_id ~name __id =
  let __type = "digitalocean_database_db" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_db
        (digitalocean_database_db ?id ~cluster_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~cluster_id ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

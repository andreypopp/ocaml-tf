(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_database_db = {
  cluster_id : string prop;
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_database_db) -> ()

let yojson_of_digitalocean_database_db =
  (function
   | { cluster_id = v_cluster_id; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_database_db -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_database_db

[@@@deriving.end]

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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_database_connection_pool = {
  cluster_id : string prop;
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_database_connection_pool) -> ()

let yojson_of_digitalocean_database_connection_pool =
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
    : digitalocean_database_connection_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_database_connection_pool

[@@@deriving.end]

let digitalocean_database_connection_pool ?id ~cluster_id ~name () :
    digitalocean_database_connection_pool =
  { cluster_id; id; name }

type t = {
  cluster_id : string prop;
  db_name : string prop;
  host : string prop;
  id : string prop;
  mode : string prop;
  name : string prop;
  password : string prop;
  port : float prop;
  private_host : string prop;
  private_uri : string prop;
  size : float prop;
  uri : string prop;
  user : string prop;
}

let make ?id ~cluster_id ~name __id =
  let __type = "digitalocean_database_connection_pool" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       db_name = Prop.computed __type __id "db_name";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       port = Prop.computed __type __id "port";
       private_host = Prop.computed __type __id "private_host";
       private_uri = Prop.computed __type __id "private_uri";
       size = Prop.computed __type __id "size";
       uri = Prop.computed __type __id "uri";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_connection_pool
        (digitalocean_database_connection_pool ?id ~cluster_id ~name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~cluster_id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

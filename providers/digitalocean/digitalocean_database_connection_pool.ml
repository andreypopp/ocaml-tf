(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_database_connection_pool = {
  cluster_id : string prop;
  db_name : string prop;
  id : string prop option; [@option]
  mode : string prop;
  name : string prop;
  size : float prop;
  user : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_database_connection_pool) -> ()

let yojson_of_digitalocean_database_connection_pool =
  (function
   | {
       cluster_id = v_cluster_id;
       db_name = v_db_name;
       id = v_id;
       mode = v_mode;
       name = v_name;
       size = v_size;
       user = v_user;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_user with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_size in
         ("size", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_db_name in
         ("db_name", arg) :: bnds
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

let digitalocean_database_connection_pool ?id ?user ~cluster_id
    ~db_name ~mode ~name ~size () :
    digitalocean_database_connection_pool =
  { cluster_id; db_name; id; mode; name; size; user }

type t = {
  tf_name : string;
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

let make ?id ?user ~cluster_id ~db_name ~mode ~name ~size __id =
  let __type = "digitalocean_database_connection_pool" in
  let __attrs =
    ({
       tf_name = __id;
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
        (digitalocean_database_connection_pool ?id ?user ~cluster_id
           ~db_name ~mode ~name ~size ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?user ~cluster_id ~db_name ~mode ~name
    ~size __id =
  let (r : _ Tf_core.resource) =
    make ?id ?user ~cluster_id ~db_name ~mode ~name ~size __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

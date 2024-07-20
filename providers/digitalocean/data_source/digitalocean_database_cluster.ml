(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type maintenance_window = { day : string prop; hour : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : maintenance_window) -> ()

let yojson_of_maintenance_window =
  (function
   | { day = v_day; hour = v_hour } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hour in
         ("hour", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_day in
         ("day", arg) :: bnds
       in
       `Assoc bnds
    : maintenance_window -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maintenance_window

[@@@deriving.end]

type digitalocean_database_cluster = {
  id : string prop option; [@option]
  name : string prop;
  tags : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_database_cluster) -> ()

let yojson_of_digitalocean_database_cluster =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
       `Assoc bnds
    : digitalocean_database_cluster ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_database_cluster

[@@@deriving.end]

let digitalocean_database_cluster ?id ?tags ~name () :
    digitalocean_database_cluster =
  { id; name; tags }

type t = {
  tf_name : string;
  database : string prop;
  engine : string prop;
  host : string prop;
  id : string prop;
  maintenance_window : maintenance_window list prop;
  name : string prop;
  node_count : float prop;
  password : string prop;
  port : float prop;
  private_host : string prop;
  private_network_uuid : string prop;
  private_uri : string prop;
  project_id : string prop;
  region : string prop;
  size : string prop;
  storage_size_mib : string prop;
  tags : string list prop;
  ui_database : string prop;
  ui_host : string prop;
  ui_password : string prop;
  ui_port : float prop;
  ui_uri : string prop;
  ui_user : string prop;
  uri : string prop;
  urn : string prop;
  user : string prop;
  version : string prop;
}

let make ?id ?tags ~name __id =
  let __type = "digitalocean_database_cluster" in
  let __attrs =
    ({
       tf_name = __id;
       database = Prop.computed __type __id "database";
       engine = Prop.computed __type __id "engine";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       maintenance_window =
         Prop.computed __type __id "maintenance_window";
       name = Prop.computed __type __id "name";
       node_count = Prop.computed __type __id "node_count";
       password = Prop.computed __type __id "password";
       port = Prop.computed __type __id "port";
       private_host = Prop.computed __type __id "private_host";
       private_network_uuid =
         Prop.computed __type __id "private_network_uuid";
       private_uri = Prop.computed __type __id "private_uri";
       project_id = Prop.computed __type __id "project_id";
       region = Prop.computed __type __id "region";
       size = Prop.computed __type __id "size";
       storage_size_mib =
         Prop.computed __type __id "storage_size_mib";
       tags = Prop.computed __type __id "tags";
       ui_database = Prop.computed __type __id "ui_database";
       ui_host = Prop.computed __type __id "ui_host";
       ui_password = Prop.computed __type __id "ui_password";
       ui_port = Prop.computed __type __id "ui_port";
       ui_uri = Prop.computed __type __id "ui_uri";
       ui_user = Prop.computed __type __id "ui_user";
       uri = Prop.computed __type __id "uri";
       urn = Prop.computed __type __id "urn";
       user = Prop.computed __type __id "user";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_cluster
        (digitalocean_database_cluster ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

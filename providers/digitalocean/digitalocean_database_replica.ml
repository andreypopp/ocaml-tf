(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_database_replica = {
  cluster_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  private_network_uuid : string prop option; [@option]
  region : string prop option; [@option]
  size : string prop option; [@option]
  storage_size_mib : string prop option; [@option]
  tags : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_database_replica) -> ()

let yojson_of_digitalocean_database_replica =
  (function
   | {
       cluster_id = v_cluster_id;
       id = v_id;
       name = v_name;
       private_network_uuid = v_private_network_uuid;
       region = v_region;
       size = v_size;
       storage_size_mib = v_storage_size_mib;
       tags = v_tags;
     } ->
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
         match v_storage_size_mib with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_size_mib", arg in
             bnd :: bnds
       in
       let bnds =
         match v_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_private_network_uuid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "private_network_uuid", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_database_replica ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_database_replica

[@@@deriving.end]

let digitalocean_database_replica ?id ?private_network_uuid ?region
    ?size ?storage_size_mib ?tags ~cluster_id ~name () :
    digitalocean_database_replica =
  {
    cluster_id;
    id;
    name;
    private_network_uuid;
    region;
    size;
    storage_size_mib;
    tags;
  }

type t = {
  tf_name : string;
  cluster_id : string prop;
  database : string prop;
  host : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  port : float prop;
  private_host : string prop;
  private_network_uuid : string prop;
  private_uri : string prop;
  region : string prop;
  size : string prop;
  storage_size_mib : string prop;
  tags : string list prop;
  uri : string prop;
  user : string prop;
  uuid : string prop;
}

let make ?id ?private_network_uuid ?region ?size ?storage_size_mib
    ?tags ~cluster_id ~name __id =
  let __type = "digitalocean_database_replica" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_id = Prop.computed __type __id "cluster_id";
       database = Prop.computed __type __id "database";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       port = Prop.computed __type __id "port";
       private_host = Prop.computed __type __id "private_host";
       private_network_uuid =
         Prop.computed __type __id "private_network_uuid";
       private_uri = Prop.computed __type __id "private_uri";
       region = Prop.computed __type __id "region";
       size = Prop.computed __type __id "size";
       storage_size_mib =
         Prop.computed __type __id "storage_size_mib";
       tags = Prop.computed __type __id "tags";
       uri = Prop.computed __type __id "uri";
       user = Prop.computed __type __id "user";
       uuid = Prop.computed __type __id "uuid";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_replica
        (digitalocean_database_replica ?id ?private_network_uuid
           ?region ?size ?storage_size_mib ?tags ~cluster_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?private_network_uuid ?region ?size
    ?storage_size_mib ?tags ~cluster_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?private_network_uuid ?region ?size ?storage_size_mib
      ?tags ~cluster_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

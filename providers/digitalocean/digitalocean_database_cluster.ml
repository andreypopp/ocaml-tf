(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type backup_restore = {
  backup_created_at : string prop option; [@option]
      (** backup_created_at *)
  database_name : string prop;  (** database_name *)
}
[@@deriving yojson_of]
(** backup_restore *)

type maintenance_window = {
  day : string prop;  (** day *)
  hour : string prop;  (** hour *)
}
[@@deriving yojson_of]
(** maintenance_window *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type digitalocean_database_cluster = {
  engine : string prop;  (** engine *)
  eviction_policy : string prop option; [@option]
      (** eviction_policy *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  node_count : float prop;  (** node_count *)
  private_network_uuid : string prop option; [@option]
      (** private_network_uuid *)
  project_id : string prop option; [@option]  (** project_id *)
  region : string prop;  (** region *)
  size : string prop;  (** size *)
  sql_mode : string prop option; [@option]  (** sql_mode *)
  storage_size_mib : string prop option; [@option]
      (** storage_size_mib *)
  tags : string prop list option; [@option]  (** tags *)
  version : string prop option; [@option]  (** version *)
  backup_restore : backup_restore list;
  maintenance_window : maintenance_window list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_database_cluster *)

let backup_restore ?backup_created_at ~database_name () :
    backup_restore =
  { backup_created_at; database_name }

let maintenance_window ~day ~hour () : maintenance_window =
  { day; hour }

let timeouts ?create () : timeouts = { create }

let digitalocean_database_cluster ?eviction_policy ?id
    ?private_network_uuid ?project_id ?sql_mode ?storage_size_mib
    ?tags ?version ?timeouts ~engine ~name ~node_count ~region ~size
    ~backup_restore ~maintenance_window () :
    digitalocean_database_cluster =
  {
    engine;
    eviction_policy;
    id;
    name;
    node_count;
    private_network_uuid;
    project_id;
    region;
    size;
    sql_mode;
    storage_size_mib;
    tags;
    version;
    backup_restore;
    maintenance_window;
    timeouts;
  }

type t = {
  database : string prop;
  engine : string prop;
  eviction_policy : string prop;
  host : string prop;
  id : string prop;
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
  sql_mode : string prop;
  storage_size_mib : string prop;
  tags : string list prop;
  uri : string prop;
  urn : string prop;
  user : string prop;
  version : string prop;
}

let make ?eviction_policy ?id ?private_network_uuid ?project_id
    ?sql_mode ?storage_size_mib ?tags ?version ?timeouts ~engine
    ~name ~node_count ~region ~size ~backup_restore
    ~maintenance_window __id =
  let __type = "digitalocean_database_cluster" in
  let __attrs =
    ({
       database = Prop.computed __type __id "database";
       engine = Prop.computed __type __id "engine";
       eviction_policy = Prop.computed __type __id "eviction_policy";
       host = Prop.computed __type __id "host";
       id = Prop.computed __type __id "id";
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
       sql_mode = Prop.computed __type __id "sql_mode";
       storage_size_mib =
         Prop.computed __type __id "storage_size_mib";
       tags = Prop.computed __type __id "tags";
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
        (digitalocean_database_cluster ?eviction_policy ?id
           ?private_network_uuid ?project_id ?sql_mode
           ?storage_size_mib ?tags ?version ?timeouts ~engine ~name
           ~node_count ~region ~size ~backup_restore
           ~maintenance_window ());
    attrs = __attrs;
  }

let register ?tf_module ?eviction_policy ?id ?private_network_uuid
    ?project_id ?sql_mode ?storage_size_mib ?tags ?version ?timeouts
    ~engine ~name ~node_count ~region ~size ~backup_restore
    ~maintenance_window __id =
  let (r : _ Tf_core.resource) =
    make ?eviction_policy ?id ?private_network_uuid ?project_id
      ?sql_mode ?storage_size_mib ?tags ?version ?timeouts ~engine
      ~name ~node_count ~region ~size ~backup_restore
      ~maintenance_window __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_cluster__backup_restore = {
  backup_created_at : string prop option; [@option]
      (** backup_created_at *)
  database_name : string prop;  (** database_name *)
}
[@@deriving yojson_of]
(** digitalocean_database_cluster__backup_restore *)

type digitalocean_database_cluster__maintenance_window = {
  day : string prop;  (** day *)
  hour : string prop;  (** hour *)
}
[@@deriving yojson_of]
(** digitalocean_database_cluster__maintenance_window *)

type digitalocean_database_cluster__timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** digitalocean_database_cluster__timeouts *)

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
  backup_restore :
    digitalocean_database_cluster__backup_restore list;
  maintenance_window :
    digitalocean_database_cluster__maintenance_window list;
  timeouts : digitalocean_database_cluster__timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_database_cluster *)

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

let digitalocean_database_cluster ?eviction_policy ?id
    ?private_network_uuid ?project_id ?sql_mode ?storage_size_mib
    ?tags ?version ?timeouts ~engine ~name ~node_count ~region ~size
    ~backup_restore ~maintenance_window __resource_id =
  let __resource_type = "digitalocean_database_cluster" in
  let __resource =
    ({
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
      : digitalocean_database_cluster)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_cluster __resource);
  let __resource_attributes =
    ({
       database =
         Prop.computed __resource_type __resource_id "database";
       engine = Prop.computed __resource_type __resource_id "engine";
       eviction_policy =
         Prop.computed __resource_type __resource_id
           "eviction_policy";
       host = Prop.computed __resource_type __resource_id "host";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       node_count =
         Prop.computed __resource_type __resource_id "node_count";
       password =
         Prop.computed __resource_type __resource_id "password";
       port = Prop.computed __resource_type __resource_id "port";
       private_host =
         Prop.computed __resource_type __resource_id "private_host";
       private_network_uuid =
         Prop.computed __resource_type __resource_id
           "private_network_uuid";
       private_uri =
         Prop.computed __resource_type __resource_id "private_uri";
       project_id =
         Prop.computed __resource_type __resource_id "project_id";
       region = Prop.computed __resource_type __resource_id "region";
       size = Prop.computed __resource_type __resource_id "size";
       sql_mode =
         Prop.computed __resource_type __resource_id "sql_mode";
       storage_size_mib =
         Prop.computed __resource_type __resource_id
           "storage_size_mib";
       tags = Prop.computed __resource_type __resource_id "tags";
       uri = Prop.computed __resource_type __resource_id "uri";
       urn = Prop.computed __resource_type __resource_id "urn";
       user = Prop.computed __resource_type __resource_id "user";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes

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

let digitalocean_database_cluster ?eviction_policy ?id
    ?private_network_uuid ?project_id ?sql_mode ?storage_size_mib
    ?tags ?version ?timeouts ~engine ~name ~node_count ~region ~size
    ~backup_restore ~maintenance_window __resource_id =
  let __resource_type = "digitalocean_database_cluster" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_cluster __resource);
  ()

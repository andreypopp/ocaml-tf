(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_cluster__backup_restore = {
  backup_created_at : string option; [@option]
      (** backup_created_at *)
  database_name : string;  (** database_name *)
}
[@@deriving yojson_of]
(** digitalocean_database_cluster__backup_restore *)

type digitalocean_database_cluster__maintenance_window = {
  day : string;  (** day *)
  hour : string;  (** hour *)
}
[@@deriving yojson_of]
(** digitalocean_database_cluster__maintenance_window *)

type digitalocean_database_cluster__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** digitalocean_database_cluster__timeouts *)

type digitalocean_database_cluster = {
  engine : string;  (** engine *)
  eviction_policy : string option; [@option]  (** eviction_policy *)
  name : string;  (** name *)
  node_count : float;  (** node_count *)
  region : string;  (** region *)
  size : string;  (** size *)
  sql_mode : string option; [@option]  (** sql_mode *)
  tags : string list option; [@option]  (** tags *)
  version : string option; [@option]  (** version *)
  backup_restore :
    digitalocean_database_cluster__backup_restore list;
  maintenance_window :
    digitalocean_database_cluster__maintenance_window list;
  timeouts : digitalocean_database_cluster__timeouts option;
}
[@@deriving yojson_of]
(** digitalocean_database_cluster *)

let digitalocean_database_cluster ?eviction_policy ?sql_mode ?tags
    ?version ?timeouts ~engine ~name ~node_count ~region ~size
    ~backup_restore ~maintenance_window __resource_id =
  let __resource_type = "digitalocean_database_cluster" in
  let __resource =
    {
      engine;
      eviction_policy;
      name;
      node_count;
      region;
      size;
      sql_mode;
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

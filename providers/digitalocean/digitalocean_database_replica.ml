(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_replica = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  private_network_uuid : string prop option; [@option]
      (** private_network_uuid *)
  region : string prop option; [@option]  (** region *)
  size : string prop option; [@option]  (** size *)
  storage_size_mib : string prop option; [@option]
      (** storage_size_mib *)
  tags : string prop list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** digitalocean_database_replica *)

type t = {
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

let digitalocean_database_replica ?id ?private_network_uuid ?region
    ?size ?storage_size_mib ?tags ~cluster_id ~name __resource_id =
  let __resource_type = "digitalocean_database_replica" in
  let __resource =
    ({
       cluster_id;
       id;
       name;
       private_network_uuid;
       region;
       size;
       storage_size_mib;
       tags;
     }
      : digitalocean_database_replica)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_replica __resource);
  let __resource_attributes =
    ({
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       database =
         Prop.computed __resource_type __resource_id "database";
       host = Prop.computed __resource_type __resource_id "host";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
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
       region = Prop.computed __resource_type __resource_id "region";
       size = Prop.computed __resource_type __resource_id "size";
       storage_size_mib =
         Prop.computed __resource_type __resource_id
           "storage_size_mib";
       tags = Prop.computed __resource_type __resource_id "tags";
       uri = Prop.computed __resource_type __resource_id "uri";
       user = Prop.computed __resource_type __resource_id "user";
       uuid = Prop.computed __resource_type __resource_id "uuid";
     }
      : t)
  in
  __resource_attributes

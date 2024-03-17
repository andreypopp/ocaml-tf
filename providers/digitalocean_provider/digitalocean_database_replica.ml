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

let digitalocean_database_replica ?id ?private_network_uuid ?region
    ?size ?storage_size_mib ?tags ~cluster_id ~name __resource_id =
  let __resource_type = "digitalocean_database_replica" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_replica __resource);
  ()

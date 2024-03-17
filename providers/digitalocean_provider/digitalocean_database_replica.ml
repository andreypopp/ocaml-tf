(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_replica = {
  cluster_id : string;  (** cluster_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  private_network_uuid : string option; [@option]
      (** private_network_uuid *)
  region : string option; [@option]  (** region *)
  size : string option; [@option]  (** size *)
  storage_size_mib : string option; [@option]
      (** storage_size_mib *)
  tags : string list option; [@option]  (** tags *)
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

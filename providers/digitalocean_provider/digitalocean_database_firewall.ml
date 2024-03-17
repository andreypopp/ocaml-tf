(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type digitalocean_database_firewall__rule = {
  created_at : string;  (** created_at *)
  type_ : string; [@key "type"]  (** type *)
  uuid : string;  (** uuid *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** digitalocean_database_firewall__rule *)

type digitalocean_database_firewall = {
  cluster_id : string;  (** cluster_id *)
  rule : digitalocean_database_firewall__rule list;
}
[@@deriving yojson_of]
(** digitalocean_database_firewall *)

let digitalocean_database_firewall ~cluster_id ~rule __resource_id =
  let __resource_type = "digitalocean_database_firewall" in
  let __resource = { cluster_id; rule } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_firewall __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_firewall__rule = {
  created_at : string prop;  (** created_at *)
  type_ : string prop; [@key "type"]  (** type *)
  uuid : string prop;  (** uuid *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** digitalocean_database_firewall__rule *)

type digitalocean_database_firewall = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  rule : digitalocean_database_firewall__rule list;
}
[@@deriving yojson_of]
(** digitalocean_database_firewall *)

let digitalocean_database_firewall ?id ~cluster_id ~rule
    __resource_id =
  let __resource_type = "digitalocean_database_firewall" in
  let __resource = { cluster_id; id; rule } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_firewall __resource);
  ()

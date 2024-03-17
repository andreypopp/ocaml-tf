(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_db = {
  cluster_id : string;  (** cluster_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** digitalocean_database_db *)

let digitalocean_database_db ?id ~cluster_id ~name __resource_id =
  let __resource_type = "digitalocean_database_db" in
  let __resource = { cluster_id; id; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_db __resource);
  ()

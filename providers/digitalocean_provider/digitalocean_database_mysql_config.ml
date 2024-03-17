(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type digitalocean_database_mysql_config = {
  cluster_id : string;  (** cluster_id *)
}
[@@deriving yojson_of]
(** digitalocean_database_mysql_config *)

let digitalocean_database_mysql_config ~cluster_id __resource_id =
  let __resource_type = "digitalocean_database_mysql_config" in
  let __resource = { cluster_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_mysql_config __resource);
  ()

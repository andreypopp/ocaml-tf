(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_connection_pool = {
  cluster_id : string;  (** cluster_id *)
  db_name : string;  (** db_name *)
  mode : string;  (** mode *)
  name : string;  (** name *)
  size : float;  (** size *)
  user : string option; [@option]  (** user *)
}
[@@deriving yojson_of]
(** digitalocean_database_connection_pool *)

let digitalocean_database_connection_pool ?user ~cluster_id ~db_name
    ~mode ~name ~size __resource_id =
  let __resource_type = "digitalocean_database_connection_pool" in
  let __resource = { cluster_id; db_name; mode; name; size; user } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_connection_pool __resource);
  ()

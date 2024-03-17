(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_connection_pool = {
  cluster_id : string prop;  (** cluster_id *)
  db_name : string prop;  (** db_name *)
  id : string prop option; [@option]  (** id *)
  mode : string prop;  (** mode *)
  name : string prop;  (** name *)
  size : float prop;  (** size *)
  user : string prop option; [@option]  (** user *)
}
[@@deriving yojson_of]
(** digitalocean_database_connection_pool *)

let digitalocean_database_connection_pool ?id ?user ~cluster_id
    ~db_name ~mode ~name ~size __resource_id =
  let __resource_type = "digitalocean_database_connection_pool" in
  let __resource =
    { cluster_id; db_name; id; mode; name; size; user }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_connection_pool __resource);
  ()

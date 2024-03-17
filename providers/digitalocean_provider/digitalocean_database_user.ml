(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_database_user__settings__acl = {
  id : string prop;  (** id *)
  permission : string prop;  (** permission *)
  topic : string prop;  (** topic *)
}
[@@deriving yojson_of]
(** digitalocean_database_user__settings__acl *)

type digitalocean_database_user__settings = {
  acl : digitalocean_database_user__settings__acl list;
}
[@@deriving yojson_of]
(** digitalocean_database_user__settings *)

type digitalocean_database_user = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  mysql_auth_plugin : string prop option; [@option]
      (** mysql_auth_plugin *)
  name : string prop;  (** name *)
  settings : digitalocean_database_user__settings list;
}
[@@deriving yojson_of]
(** digitalocean_database_user *)

let digitalocean_database_user ?id ?mysql_auth_plugin ~cluster_id
    ~name ~settings __resource_id =
  let __resource_type = "digitalocean_database_user" in
  let __resource =
    { cluster_id; id; mysql_auth_plugin; name; settings }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_user __resource);
  ()

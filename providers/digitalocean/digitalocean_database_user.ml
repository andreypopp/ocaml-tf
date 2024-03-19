(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type settings__acl = {
  permission : string prop;  (** permission *)
  topic : string prop;  (** topic *)
}
[@@deriving yojson_of]
(** settings__acl *)

type settings = { acl : settings__acl list } [@@deriving yojson_of]
(** settings *)

type digitalocean_database_user = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  mysql_auth_plugin : string prop option; [@option]
      (** mysql_auth_plugin *)
  name : string prop;  (** name *)
  settings : settings list;
}
[@@deriving yojson_of]
(** digitalocean_database_user *)

let settings__acl ~permission ~topic () : settings__acl =
  { permission; topic }

let settings ~acl () : settings = { acl }

let digitalocean_database_user ?id ?mysql_auth_plugin ~cluster_id
    ~name ~settings () : digitalocean_database_user =
  { cluster_id; id; mysql_auth_plugin; name; settings }

type t = {
  access_cert : string prop;
  access_key : string prop;
  cluster_id : string prop;
  id : string prop;
  mysql_auth_plugin : string prop;
  name : string prop;
  password : string prop;
  role : string prop;
}

let register ?tf_module ?id ?mysql_auth_plugin ~cluster_id ~name
    ~settings __resource_id =
  let __resource_type = "digitalocean_database_user" in
  let __resource =
    digitalocean_database_user ?id ?mysql_auth_plugin ~cluster_id
      ~name ~settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_database_user __resource);
  let __resource_attributes =
    ({
       access_cert =
         Prop.computed __resource_type __resource_id "access_cert";
       access_key =
         Prop.computed __resource_type __resource_id "access_key";
       cluster_id =
         Prop.computed __resource_type __resource_id "cluster_id";
       id = Prop.computed __resource_type __resource_id "id";
       mysql_auth_plugin =
         Prop.computed __resource_type __resource_id
           "mysql_auth_plugin";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       role = Prop.computed __resource_type __resource_id "role";
     }
      : t)
  in
  __resource_attributes

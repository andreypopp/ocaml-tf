(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?mysql_auth_plugin ~cluster_id ~name ~settings __id =
  let __type = "digitalocean_database_user" in
  let __attrs =
    ({
       access_cert = Prop.computed __type __id "access_cert";
       access_key = Prop.computed __type __id "access_key";
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
       mysql_auth_plugin =
         Prop.computed __type __id "mysql_auth_plugin";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       role = Prop.computed __type __id "role";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_user
        (digitalocean_database_user ?id ?mysql_auth_plugin
           ~cluster_id ~name ~settings ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mysql_auth_plugin ~cluster_id ~name
    ~settings __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mysql_auth_plugin ~cluster_id ~name ~settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

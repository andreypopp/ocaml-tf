(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type settings__acl = {
  id : string prop;
  permission : string prop;
  topic : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings__acl) -> ()

let yojson_of_settings__acl =
  (function
   | { id = v_id; permission = v_permission; topic = v_topic } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_permission in
         ("permission", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : settings__acl -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings__acl

[@@@deriving.end]

type settings = {
  acl : settings__acl list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : settings) -> ()

let yojson_of_settings =
  (function
   | { acl = v_acl } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_acl then bnds
         else
           let arg =
             (yojson_of_list yojson_of_settings__acl) v_acl
           in
           let bnd = "acl", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings

[@@@deriving.end]

type digitalocean_database_user = {
  cluster_id : string prop;
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : digitalocean_database_user) -> ()

let yojson_of_digitalocean_database_user =
  (function
   | { cluster_id = v_cluster_id; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : digitalocean_database_user -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_digitalocean_database_user

[@@@deriving.end]

let digitalocean_database_user ?id ~cluster_id ~name () :
    digitalocean_database_user =
  { cluster_id; id; name }

type t = {
  tf_name : string;
  access_cert : string prop;
  access_key : string prop;
  cluster_id : string prop;
  id : string prop;
  mysql_auth_plugin : string prop;
  name : string prop;
  password : string prop;
  role : string prop;
  settings : settings list prop;
}

let make ?id ~cluster_id ~name __id =
  let __type = "digitalocean_database_user" in
  let __attrs =
    ({
       tf_name = __id;
       access_cert = Prop.computed __type __id "access_cert";
       access_key = Prop.computed __type __id "access_key";
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
       mysql_auth_plugin =
         Prop.computed __type __id "mysql_auth_plugin";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       role = Prop.computed __type __id "role";
       settings = Prop.computed __type __id "settings";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_database_user
        (digitalocean_database_user ?id ~cluster_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~cluster_id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

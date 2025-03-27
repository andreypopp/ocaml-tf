(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_rabbitmq_secret_backend = {
  connection_uri : string prop;
  default_lease_ttl_seconds : float prop option; [@option]
  description : string prop option; [@option]
  disable_remount : bool prop option; [@option]
  id : string prop option; [@option]
  max_lease_ttl_seconds : float prop option; [@option]
  namespace : string prop option; [@option]
  password : string prop;
  password_policy : string prop option; [@option]
  path : string prop option; [@option]
  username : string prop;
  username_template : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_rabbitmq_secret_backend) -> ()

let yojson_of_vault_rabbitmq_secret_backend =
  (function
   | {
       connection_uri = v_connection_uri;
       default_lease_ttl_seconds = v_default_lease_ttl_seconds;
       description = v_description;
       disable_remount = v_disable_remount;
       id = v_id;
       max_lease_ttl_seconds = v_max_lease_ttl_seconds;
       namespace = v_namespace;
       password = v_password;
       password_policy = v_password_policy;
       path = v_path;
       username = v_username;
       username_template = v_username_template;
       verify_connection = v_verify_connection;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_verify_connection with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "verify_connection", arg in
         bnd :: bnds
     in
     let bnds =
       match v_username_template with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username_template", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_username in
       ("username", arg) :: bnds
     in
     let bnds =
       match v_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "path", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password_policy with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password_policy", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_password in
       ("password", arg) :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_lease_ttl_seconds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_lease_ttl_seconds", arg in
         bnd :: bnds
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
       match v_disable_remount with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_remount", arg in
         bnd :: bnds
     in
     let bnds =
       match v_description with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "description", arg in
         bnd :: bnds
     in
     let bnds =
       match v_default_lease_ttl_seconds with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "default_lease_ttl_seconds", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_connection_uri in
       ("connection_uri", arg) :: bnds
     in
     `Assoc bnds
    : vault_rabbitmq_secret_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_rabbitmq_secret_backend

[@@@deriving.end]

let vault_rabbitmq_secret_backend ?default_lease_ttl_seconds ?description ?disable_remount ?id ?max_lease_ttl_seconds
  ?namespace ?password_policy ?path ?username_template ?verify_connection ~connection_uri ~password ~username () =
  ({
     connection_uri;
     default_lease_ttl_seconds;
     description;
     disable_remount;
     id;
     max_lease_ttl_seconds;
     namespace;
     password;
     password_policy;
     path;
     username;
     username_template;
     verify_connection;
   }
    : vault_rabbitmq_secret_backend)

type t = {
  tf_name : string;
  connection_uri : string prop;
  default_lease_ttl_seconds : float prop;
  description : string prop;
  disable_remount : bool prop;
  id : string prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  password : string prop;
  password_policy : string prop;
  path : string prop;
  username : string prop;
  username_template : string prop;
  verify_connection : bool prop;
}

let make ?default_lease_ttl_seconds ?description ?disable_remount ?id ?max_lease_ttl_seconds ?namespace ?password_policy
  ?path ?username_template ?verify_connection ~connection_uri ~password ~username __id =
  let __type = "vault_rabbitmq_secret_backend" in
  let __attrs =
    ({
       tf_name = __id;
       connection_uri = Prop.computed __type __id "connection_uri";
       default_lease_ttl_seconds = Prop.computed __type __id "default_lease_ttl_seconds";
       description = Prop.computed __type __id "description";
       disable_remount = Prop.computed __type __id "disable_remount";
       id = Prop.computed __type __id "id";
       max_lease_ttl_seconds = Prop.computed __type __id "max_lease_ttl_seconds";
       namespace = Prop.computed __type __id "namespace";
       password = Prop.computed __type __id "password";
       password_policy = Prop.computed __type __id "password_policy";
       path = Prop.computed __type __id "path";
       username = Prop.computed __type __id "username";
       username_template = Prop.computed __type __id "username_template";
       verify_connection = Prop.computed __type __id "verify_connection";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_rabbitmq_secret_backend
        (vault_rabbitmq_secret_backend ?default_lease_ttl_seconds ?description ?disable_remount ?id
           ?max_lease_ttl_seconds ?namespace ?password_policy ?path ?username_template ?verify_connection
           ~connection_uri ~password ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?default_lease_ttl_seconds ?description ?disable_remount ?id ?max_lease_ttl_seconds ?namespace
  ?password_policy ?path ?username_template ?verify_connection ~connection_uri ~password ~username __id =
  let (r : _ Tf_core.resource) =
    make ?default_lease_ttl_seconds ?description ?disable_remount ?id ?max_lease_ttl_seconds ?namespace ?password_policy
      ?path ?username_template ?verify_connection ~connection_uri ~password ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

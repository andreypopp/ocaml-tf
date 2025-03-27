(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cassandra = {
  allowed_roles : string prop list option; [@option]
  connect_timeout : float prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  hosts : string prop list option; [@option]
  insecure_tls : bool prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  pem_bundle : string prop option; [@option]
  pem_json : string prop option; [@option]
  plugin_name : string prop option; [@option]
  port : float prop option; [@option]
  protocol_version : float prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  skip_verification : bool prop option; [@option]
  tls : bool prop option; [@option]
  username : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cassandra) -> ()

let yojson_of_cassandra =
  (function
   | {
       allowed_roles = v_allowed_roles;
       connect_timeout = v_connect_timeout;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       hosts = v_hosts;
       insecure_tls = v_insecure_tls;
       name = v_name;
       password = v_password;
       pem_bundle = v_pem_bundle;
       pem_json = v_pem_json;
       plugin_name = v_plugin_name;
       port = v_port;
       protocol_version = v_protocol_version;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       skip_verification = v_skip_verification;
       tls = v_tls;
       username = v_username;
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
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "tls", arg in
         bnd :: bnds
     in
     let bnds =
       match v_skip_verification with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "skip_verification", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_protocol_version with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "protocol_version", arg in
         bnd :: bnds
     in
     let bnds =
       match v_port with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "port", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_pem_json with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "pem_json", arg in
         bnd :: bnds
     in
     let bnds =
       match v_pem_bundle with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "pem_bundle", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_insecure_tls with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "insecure_tls", arg in
         bnd :: bnds
     in
     let bnds =
       match v_hosts with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "hosts", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_connect_timeout with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "connect_timeout", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : cassandra -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cassandra

[@@@deriving.end]

type couchbase = {
  allowed_roles : string prop list option; [@option]
  base64_pem : string prop option; [@option]
  bucket_name : string prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  hosts : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  insecure_tls : bool prop option; [@option]
  name : string prop;
  password : string prop;
  plugin_name : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  tls : bool prop option; [@option]
  username : string prop;
  username_template : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : couchbase) -> ()

let yojson_of_couchbase =
  (function
   | {
       allowed_roles = v_allowed_roles;
       base64_pem = v_base64_pem;
       bucket_name = v_bucket_name;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       hosts = v_hosts;
       insecure_tls = v_insecure_tls;
       name = v_name;
       password = v_password;
       plugin_name = v_plugin_name;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       tls = v_tls;
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
       match v_tls with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "tls", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_password in
       ("password", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_insecure_tls with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "insecure_tls", arg in
         bnd :: bnds
     in
     let bnds =
       if Stdlib.( = ) [] v_hosts then bnds
       else (
         let arg = (yojson_of_list (yojson_of_prop yojson_of_string)) v_hosts in
         let bnd = "hosts", arg in
         bnd :: bnds)
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_bucket_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "bucket_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_base64_pem with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "base64_pem", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : couchbase -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_couchbase

[@@@deriving.end]

type elasticsearch = {
  allowed_roles : string prop list option; [@option]
  ca_cert : string prop option; [@option]
  ca_path : string prop option; [@option]
  client_cert : string prop option; [@option]
  client_key : string prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  insecure : bool prop option; [@option]
  name : string prop;
  password : string prop;
  plugin_name : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  tls_server_name : string prop option; [@option]
  url : string prop;
  username : string prop;
  username_template : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elasticsearch) -> ()

let yojson_of_elasticsearch =
  (function
   | {
       allowed_roles = v_allowed_roles;
       ca_cert = v_ca_cert;
       ca_path = v_ca_path;
       client_cert = v_client_cert;
       client_key = v_client_key;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       insecure = v_insecure;
       name = v_name;
       password = v_password;
       plugin_name = v_plugin_name;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       tls_server_name = v_tls_server_name;
       url = v_url;
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
       let arg = yojson_of_prop yojson_of_string v_url in
       ("url", arg) :: bnds
     in
     let bnds =
       match v_tls_server_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_server_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_password in
       ("password", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_insecure with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "insecure", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_client_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "client_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_client_cert with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "client_cert", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ca_path with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ca_path", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ca_cert with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ca_cert", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : elasticsearch -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elasticsearch

[@@@deriving.end]

type hana = {
  allowed_roles : string prop list option; [@option]
  connection_url : string prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  disable_escaping : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  plugin_name : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  username : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hana) -> ()

let yojson_of_hana =
  (function
   | {
       allowed_roles = v_allowed_roles;
       connection_url = v_connection_url;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       disable_escaping = v_disable_escaping;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       name = v_name;
       password = v_password;
       plugin_name = v_plugin_name;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       username = v_username;
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
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_open_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_open_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_idle_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_idle_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_connection_lifetime with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_connection_lifetime", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_escaping with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_escaping", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : hana -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hana

[@@@deriving.end]

type influxdb = {
  allowed_roles : string prop list option; [@option]
  connect_timeout : float prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  host : string prop;
  insecure_tls : bool prop option; [@option]
  name : string prop;
  password : string prop;
  pem_bundle : string prop option; [@option]
  pem_json : string prop option; [@option]
  plugin_name : string prop option; [@option]
  port : float prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  tls : bool prop option; [@option]
  username : string prop;
  username_template : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : influxdb) -> ()

let yojson_of_influxdb =
  (function
   | {
       allowed_roles = v_allowed_roles;
       connect_timeout = v_connect_timeout;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       host = v_host;
       insecure_tls = v_insecure_tls;
       name = v_name;
       password = v_password;
       pem_bundle = v_pem_bundle;
       pem_json = v_pem_json;
       plugin_name = v_plugin_name;
       port = v_port;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       tls = v_tls;
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
       match v_tls with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "tls", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_port with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "port", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_pem_json with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "pem_json", arg in
         bnd :: bnds
     in
     let bnds =
       match v_pem_bundle with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "pem_bundle", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_password in
       ("password", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_insecure_tls with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "insecure_tls", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_host in
       ("host", arg) :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_connect_timeout with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "connect_timeout", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : influxdb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_influxdb

[@@@deriving.end]

type mongodb = {
  allowed_roles : string prop list option; [@option]
  connection_url : string prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  plugin_name : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mongodb) -> ()

let yojson_of_mongodb =
  (function
   | {
       allowed_roles = v_allowed_roles;
       connection_url = v_connection_url;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       name = v_name;
       password = v_password;
       plugin_name = v_plugin_name;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
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
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_open_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_open_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_idle_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_idle_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_connection_lifetime with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_connection_lifetime", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : mongodb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mongodb

[@@@deriving.end]

type mongodbatlas = {
  allowed_roles : string prop list option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  name : string prop;
  plugin_name : string prop option; [@option]
  private_key : string prop;
  project_id : string prop;
  public_key : string prop;
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mongodbatlas) -> ()

let yojson_of_mongodbatlas =
  (function
   | {
       allowed_roles = v_allowed_roles;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       name = v_name;
       plugin_name = v_plugin_name;
       private_key = v_private_key;
       project_id = v_project_id;
       public_key = v_public_key;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
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
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_public_key in
       ("public_key", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_project_id in
       ("project_id", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_private_key in
       ("private_key", arg) :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : mongodbatlas -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mongodbatlas

[@@@deriving.end]

type mssql = {
  allowed_roles : string prop list option; [@option]
  connection_url : string prop option; [@option]
  contained_db : bool prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  disable_escaping : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  plugin_name : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mssql) -> ()

let yojson_of_mssql =
  (function
   | {
       allowed_roles = v_allowed_roles;
       connection_url = v_connection_url;
       contained_db = v_contained_db;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       disable_escaping = v_disable_escaping;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       name = v_name;
       password = v_password;
       plugin_name = v_plugin_name;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
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
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_open_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_open_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_idle_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_idle_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_connection_lifetime with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_connection_lifetime", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_escaping with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_escaping", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_contained_db with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "contained_db", arg in
         bnd :: bnds
     in
     let bnds =
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : mssql -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mssql

[@@@deriving.end]

type mysql = {
  allowed_roles : string prop list option; [@option]
  auth_type : string prop option; [@option]
  connection_url : string prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  plugin_name : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  service_account_json : string prop option; [@option]
  tls_ca : string prop option; [@option]
  tls_certificate_key : string prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mysql) -> ()

let yojson_of_mysql =
  (function
   | {
       allowed_roles = v_allowed_roles;
       auth_type = v_auth_type;
       connection_url = v_connection_url;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       name = v_name;
       password = v_password;
       plugin_name = v_plugin_name;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       service_account_json = v_service_account_json;
       tls_ca = v_tls_ca;
       tls_certificate_key = v_tls_certificate_key;
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
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_certificate_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_certificate_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_ca with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_ca", arg in
         bnd :: bnds
     in
     let bnds =
       match v_service_account_json with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "service_account_json", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_open_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_open_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_idle_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_idle_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_connection_lifetime with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_connection_lifetime", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_auth_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "auth_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : mysql -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mysql

[@@@deriving.end]

type mysql_aurora = {
  allowed_roles : string prop list option; [@option]
  auth_type : string prop option; [@option]
  connection_url : string prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  plugin_name : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  service_account_json : string prop option; [@option]
  tls_ca : string prop option; [@option]
  tls_certificate_key : string prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mysql_aurora) -> ()

let yojson_of_mysql_aurora =
  (function
   | {
       allowed_roles = v_allowed_roles;
       auth_type = v_auth_type;
       connection_url = v_connection_url;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       name = v_name;
       password = v_password;
       plugin_name = v_plugin_name;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       service_account_json = v_service_account_json;
       tls_ca = v_tls_ca;
       tls_certificate_key = v_tls_certificate_key;
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
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_certificate_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_certificate_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_ca with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_ca", arg in
         bnd :: bnds
     in
     let bnds =
       match v_service_account_json with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "service_account_json", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_open_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_open_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_idle_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_idle_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_connection_lifetime with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_connection_lifetime", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_auth_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "auth_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : mysql_aurora -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mysql_aurora

[@@@deriving.end]

type mysql_legacy = {
  allowed_roles : string prop list option; [@option]
  auth_type : string prop option; [@option]
  connection_url : string prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  plugin_name : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  service_account_json : string prop option; [@option]
  tls_ca : string prop option; [@option]
  tls_certificate_key : string prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mysql_legacy) -> ()

let yojson_of_mysql_legacy =
  (function
   | {
       allowed_roles = v_allowed_roles;
       auth_type = v_auth_type;
       connection_url = v_connection_url;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       name = v_name;
       password = v_password;
       plugin_name = v_plugin_name;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       service_account_json = v_service_account_json;
       tls_ca = v_tls_ca;
       tls_certificate_key = v_tls_certificate_key;
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
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_certificate_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_certificate_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_ca with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_ca", arg in
         bnd :: bnds
     in
     let bnds =
       match v_service_account_json with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "service_account_json", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_open_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_open_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_idle_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_idle_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_connection_lifetime with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_connection_lifetime", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_auth_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "auth_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : mysql_legacy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mysql_legacy

[@@@deriving.end]

type mysql_rds = {
  allowed_roles : string prop list option; [@option]
  auth_type : string prop option; [@option]
  connection_url : string prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  plugin_name : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  service_account_json : string prop option; [@option]
  tls_ca : string prop option; [@option]
  tls_certificate_key : string prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mysql_rds) -> ()

let yojson_of_mysql_rds =
  (function
   | {
       allowed_roles = v_allowed_roles;
       auth_type = v_auth_type;
       connection_url = v_connection_url;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       name = v_name;
       password = v_password;
       plugin_name = v_plugin_name;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       service_account_json = v_service_account_json;
       tls_ca = v_tls_ca;
       tls_certificate_key = v_tls_certificate_key;
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
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_certificate_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_certificate_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_ca with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_ca", arg in
         bnd :: bnds
     in
     let bnds =
       match v_service_account_json with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "service_account_json", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_open_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_open_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_idle_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_idle_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_connection_lifetime with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_connection_lifetime", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_auth_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "auth_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : mysql_rds -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mysql_rds

[@@@deriving.end]

type oracle = {
  allowed_roles : string prop list option; [@option]
  connection_url : string prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  disconnect_sessions : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  plugin_name : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  split_statements : bool prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oracle) -> ()

let yojson_of_oracle =
  (function
   | {
       allowed_roles = v_allowed_roles;
       connection_url = v_connection_url;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       disconnect_sessions = v_disconnect_sessions;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       name = v_name;
       password = v_password;
       plugin_name = v_plugin_name;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       split_statements = v_split_statements;
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
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
         bnd :: bnds
     in
     let bnds =
       match v_split_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "split_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_open_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_open_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_idle_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_idle_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_connection_lifetime with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_connection_lifetime", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disconnect_sessions with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disconnect_sessions", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : oracle -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oracle

[@@@deriving.end]

type postgresql = {
  allowed_roles : string prop list option; [@option]
  auth_type : string prop option; [@option]
  connection_url : string prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  disable_escaping : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  password_authentication : string prop option; [@option]
  plugin_name : string prop option; [@option]
  private_key : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  self_managed : bool prop option; [@option]
  service_account_json : string prop option; [@option]
  tls_ca : string prop option; [@option]
  tls_certificate : string prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : postgresql) -> ()

let yojson_of_postgresql =
  (function
   | {
       allowed_roles = v_allowed_roles;
       auth_type = v_auth_type;
       connection_url = v_connection_url;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       disable_escaping = v_disable_escaping;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       name = v_name;
       password = v_password;
       password_authentication = v_password_authentication;
       plugin_name = v_plugin_name;
       private_key = v_private_key;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       self_managed = v_self_managed;
       service_account_json = v_service_account_json;
       tls_ca = v_tls_ca;
       tls_certificate = v_tls_certificate;
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
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_certificate with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_certificate", arg in
         bnd :: bnds
     in
     let bnds =
       match v_tls_ca with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "tls_ca", arg in
         bnd :: bnds
     in
     let bnds =
       match v_service_account_json with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "service_account_json", arg in
         bnd :: bnds
     in
     let bnds =
       match v_self_managed with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "self_managed", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_private_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "private_key", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password_authentication with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password_authentication", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_open_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_open_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_idle_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_idle_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_connection_lifetime with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_connection_lifetime", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_escaping with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_escaping", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_auth_type with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "auth_type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : postgresql -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_postgresql

[@@@deriving.end]

type redis = {
  allowed_roles : string prop list option; [@option]
  ca_cert : string prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  host : string prop;
  insecure_tls : bool prop option; [@option]
  name : string prop;
  password : string prop;
  plugin_name : string prop option; [@option]
  port : float prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  tls : bool prop option; [@option]
  username : string prop;
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redis) -> ()

let yojson_of_redis =
  (function
   | {
       allowed_roles = v_allowed_roles;
       ca_cert = v_ca_cert;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       host = v_host;
       insecure_tls = v_insecure_tls;
       name = v_name;
       password = v_password;
       plugin_name = v_plugin_name;
       port = v_port;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       tls = v_tls;
       username = v_username;
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
       let arg = yojson_of_prop yojson_of_string v_username in
       ("username", arg) :: bnds
     in
     let bnds =
       match v_tls with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "tls", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_port with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "port", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_password in
       ("password", arg) :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_insecure_tls with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "insecure_tls", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_host in
       ("host", arg) :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_ca_cert with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ca_cert", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : redis -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redis

[@@@deriving.end]

type redis_elasticache = {
  allowed_roles : string prop list option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  plugin_name : string prop option; [@option]
  region : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  url : string prop;
  username : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redis_elasticache) -> ()

let yojson_of_redis_elasticache =
  (function
   | {
       allowed_roles = v_allowed_roles;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       name = v_name;
       password = v_password;
       plugin_name = v_plugin_name;
       region = v_region;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       url = v_url;
       username = v_username;
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
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_url in
       ("url", arg) :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_region with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "region", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : redis_elasticache -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redis_elasticache

[@@@deriving.end]

type redshift = {
  allowed_roles : string prop list option; [@option]
  connection_url : string prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  disable_escaping : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  plugin_name : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redshift) -> ()

let yojson_of_redshift =
  (function
   | {
       allowed_roles = v_allowed_roles;
       connection_url = v_connection_url;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       disable_escaping = v_disable_escaping;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       name = v_name;
       password = v_password;
       plugin_name = v_plugin_name;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
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
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_open_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_open_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_idle_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_idle_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_connection_lifetime with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_connection_lifetime", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_escaping with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_escaping", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : redshift -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redshift

[@@@deriving.end]

type snowflake = {
  allowed_roles : string prop list option; [@option]
  connection_url : string prop option; [@option]
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  name : string prop;
  password : string prop option; [@option]
  plugin_name : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
  verify_connection : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snowflake) -> ()

let yojson_of_snowflake =
  (function
   | {
       allowed_roles = v_allowed_roles;
       connection_url = v_connection_url;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       name = v_name;
       password = v_password;
       plugin_name = v_plugin_name;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
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
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_window with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_window", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_schedule with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "rotation_schedule", arg in
         bnd :: bnds
     in
     let bnds =
       match v_rotation_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "rotation_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_root_rotation_statements with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "root_rotation_statements", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
         bnd :: bnds
     in
     let bnds =
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_max_open_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_open_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_idle_connections with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_idle_connections", arg in
         bnd :: bnds
     in
     let bnds =
       match v_max_connection_lifetime with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "max_connection_lifetime", arg in
         bnd :: bnds
     in
     let bnds =
       match v_disable_automated_rotation with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "disable_automated_rotation", arg in
         bnd :: bnds
     in
     let bnds =
       match v_data with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "data", arg in
         bnd :: bnds
     in
     let bnds =
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_roles with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_roles", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : snowflake -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snowflake

[@@@deriving.end]

type vault_database_secrets_mount = {
  allowed_managed_keys : string prop list option; [@option]
  allowed_response_headers : string prop list option; [@option]
  audit_non_hmac_request_keys : string prop list option; [@option]
  audit_non_hmac_response_keys : string prop list option; [@option]
  default_lease_ttl_seconds : float prop option; [@option]
  delegated_auth_accessors : string prop list option; [@option]
  description : string prop option; [@option]
  external_entropy_access : bool prop option; [@option]
  id : string prop option; [@option]
  identity_token_key : string prop option; [@option]
  listing_visibility : string prop option; [@option]
  local : bool prop option; [@option]
  max_lease_ttl_seconds : float prop option; [@option]
  namespace : string prop option; [@option]
  options : string prop Tf_core.assoc option; [@option]
  passthrough_request_headers : string prop list option; [@option]
  path : string prop;
  plugin_version : string prop option; [@option]
  seal_wrap : bool prop option; [@option]
  cassandra : cassandra list; [@default []] [@yojson_drop_default Stdlib.( = )]
  couchbase : couchbase list; [@default []] [@yojson_drop_default Stdlib.( = )]
  elasticsearch : elasticsearch list; [@default []] [@yojson_drop_default Stdlib.( = )]
  hana : hana list; [@default []] [@yojson_drop_default Stdlib.( = )]
  influxdb : influxdb list; [@default []] [@yojson_drop_default Stdlib.( = )]
  mongodb : mongodb list; [@default []] [@yojson_drop_default Stdlib.( = )]
  mongodbatlas : mongodbatlas list; [@default []] [@yojson_drop_default Stdlib.( = )]
  mssql : mssql list; [@default []] [@yojson_drop_default Stdlib.( = )]
  mysql : mysql list; [@default []] [@yojson_drop_default Stdlib.( = )]
  mysql_aurora : mysql_aurora list; [@default []] [@yojson_drop_default Stdlib.( = )]
  mysql_legacy : mysql_legacy list; [@default []] [@yojson_drop_default Stdlib.( = )]
  mysql_rds : mysql_rds list; [@default []] [@yojson_drop_default Stdlib.( = )]
  oracle : oracle list; [@default []] [@yojson_drop_default Stdlib.( = )]
  postgresql : postgresql list; [@default []] [@yojson_drop_default Stdlib.( = )]
  redis : redis list; [@default []] [@yojson_drop_default Stdlib.( = )]
  redis_elasticache : redis_elasticache list; [@default []] [@yojson_drop_default Stdlib.( = )]
  redshift : redshift list; [@default []] [@yojson_drop_default Stdlib.( = )]
  snowflake : snowflake list; [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_database_secrets_mount) -> ()

let yojson_of_vault_database_secrets_mount =
  (function
   | {
       allowed_managed_keys = v_allowed_managed_keys;
       allowed_response_headers = v_allowed_response_headers;
       audit_non_hmac_request_keys = v_audit_non_hmac_request_keys;
       audit_non_hmac_response_keys = v_audit_non_hmac_response_keys;
       default_lease_ttl_seconds = v_default_lease_ttl_seconds;
       delegated_auth_accessors = v_delegated_auth_accessors;
       description = v_description;
       external_entropy_access = v_external_entropy_access;
       id = v_id;
       identity_token_key = v_identity_token_key;
       listing_visibility = v_listing_visibility;
       local = v_local;
       max_lease_ttl_seconds = v_max_lease_ttl_seconds;
       namespace = v_namespace;
       options = v_options;
       passthrough_request_headers = v_passthrough_request_headers;
       path = v_path;
       plugin_version = v_plugin_version;
       seal_wrap = v_seal_wrap;
       cassandra = v_cassandra;
       couchbase = v_couchbase;
       elasticsearch = v_elasticsearch;
       hana = v_hana;
       influxdb = v_influxdb;
       mongodb = v_mongodb;
       mongodbatlas = v_mongodbatlas;
       mssql = v_mssql;
       mysql = v_mysql;
       mysql_aurora = v_mysql_aurora;
       mysql_legacy = v_mysql_legacy;
       mysql_rds = v_mysql_rds;
       oracle = v_oracle;
       postgresql = v_postgresql;
       redis = v_redis;
       redis_elasticache = v_redis_elasticache;
       redshift = v_redshift;
       snowflake = v_snowflake;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       if Stdlib.( = ) [] v_snowflake then bnds
       else (
         let arg = (yojson_of_list yojson_of_snowflake) v_snowflake in
         let bnd = "snowflake", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_redshift then bnds
       else (
         let arg = (yojson_of_list yojson_of_redshift) v_redshift in
         let bnd = "redshift", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_redis_elasticache then bnds
       else (
         let arg = (yojson_of_list yojson_of_redis_elasticache) v_redis_elasticache in
         let bnd = "redis_elasticache", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_redis then bnds
       else (
         let arg = (yojson_of_list yojson_of_redis) v_redis in
         let bnd = "redis", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_postgresql then bnds
       else (
         let arg = (yojson_of_list yojson_of_postgresql) v_postgresql in
         let bnd = "postgresql", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_oracle then bnds
       else (
         let arg = (yojson_of_list yojson_of_oracle) v_oracle in
         let bnd = "oracle", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_mysql_rds then bnds
       else (
         let arg = (yojson_of_list yojson_of_mysql_rds) v_mysql_rds in
         let bnd = "mysql_rds", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_mysql_legacy then bnds
       else (
         let arg = (yojson_of_list yojson_of_mysql_legacy) v_mysql_legacy in
         let bnd = "mysql_legacy", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_mysql_aurora then bnds
       else (
         let arg = (yojson_of_list yojson_of_mysql_aurora) v_mysql_aurora in
         let bnd = "mysql_aurora", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_mysql then bnds
       else (
         let arg = (yojson_of_list yojson_of_mysql) v_mysql in
         let bnd = "mysql", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_mssql then bnds
       else (
         let arg = (yojson_of_list yojson_of_mssql) v_mssql in
         let bnd = "mssql", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_mongodbatlas then bnds
       else (
         let arg = (yojson_of_list yojson_of_mongodbatlas) v_mongodbatlas in
         let bnd = "mongodbatlas", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_mongodb then bnds
       else (
         let arg = (yojson_of_list yojson_of_mongodb) v_mongodb in
         let bnd = "mongodb", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_influxdb then bnds
       else (
         let arg = (yojson_of_list yojson_of_influxdb) v_influxdb in
         let bnd = "influxdb", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_hana then bnds
       else (
         let arg = (yojson_of_list yojson_of_hana) v_hana in
         let bnd = "hana", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_elasticsearch then bnds
       else (
         let arg = (yojson_of_list yojson_of_elasticsearch) v_elasticsearch in
         let bnd = "elasticsearch", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_couchbase then bnds
       else (
         let arg = (yojson_of_list yojson_of_couchbase) v_couchbase in
         let bnd = "couchbase", arg in
         bnd :: bnds)
     in
     let bnds =
       if Stdlib.( = ) [] v_cassandra then bnds
       else (
         let arg = (yojson_of_list yojson_of_cassandra) v_cassandra in
         let bnd = "cassandra", arg in
         bnd :: bnds)
     in
     let bnds =
       match v_seal_wrap with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "seal_wrap", arg in
         bnd :: bnds
     in
     let bnds =
       match v_plugin_version with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_version", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_path in
       ("path", arg) :: bnds
     in
     let bnds =
       match v_passthrough_request_headers with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "passthrough_request_headers", arg in
         bnd :: bnds
     in
     let bnds =
       match v_options with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = Tf_core.yojson_of_assoc (yojson_of_prop yojson_of_string) v in
         let bnd = "options", arg in
         bnd :: bnds
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
       match v_local with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "local", arg in
         bnd :: bnds
     in
     let bnds =
       match v_listing_visibility with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "listing_visibility", arg in
         bnd :: bnds
     in
     let bnds =
       match v_identity_token_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "identity_token_key", arg in
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
       match v_external_entropy_access with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "external_entropy_access", arg in
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
       match v_delegated_auth_accessors with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "delegated_auth_accessors", arg in
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
       match v_audit_non_hmac_response_keys with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "audit_non_hmac_response_keys", arg in
         bnd :: bnds
     in
     let bnds =
       match v_audit_non_hmac_request_keys with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "audit_non_hmac_request_keys", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_response_headers with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_response_headers", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allowed_managed_keys with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_list (yojson_of_prop yojson_of_string) v in
         let bnd = "allowed_managed_keys", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_database_secrets_mount -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_database_secrets_mount

[@@@deriving.end]

let cassandra ?allowed_roles ?connect_timeout ?data ?disable_automated_rotation ?hosts ?insecure_tls ?password
  ?pem_bundle ?pem_json ?plugin_name ?port ?protocol_version ?root_rotation_statements ?rotation_period
  ?rotation_schedule ?rotation_window ?skip_verification ?tls ?username ?verify_connection ~name () =
  ({
     allowed_roles;
     connect_timeout;
     data;
     disable_automated_rotation;
     hosts;
     insecure_tls;
     name;
     password;
     pem_bundle;
     pem_json;
     plugin_name;
     port;
     protocol_version;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     skip_verification;
     tls;
     username;
     verify_connection;
   }
    : cassandra)

let couchbase ?allowed_roles ?base64_pem ?bucket_name ?data ?disable_automated_rotation ?insecure_tls ?plugin_name
  ?root_rotation_statements ?rotation_period ?rotation_schedule ?rotation_window ?tls ?username_template
  ?verify_connection ~hosts ~name ~password ~username () =
  ({
     allowed_roles;
     base64_pem;
     bucket_name;
     data;
     disable_automated_rotation;
     hosts;
     insecure_tls;
     name;
     password;
     plugin_name;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     tls;
     username;
     username_template;
     verify_connection;
   }
    : couchbase)

let elasticsearch ?allowed_roles ?ca_cert ?ca_path ?client_cert ?client_key ?data ?disable_automated_rotation ?insecure
  ?plugin_name ?root_rotation_statements ?rotation_period ?rotation_schedule ?rotation_window ?tls_server_name
  ?username_template ?verify_connection ~name ~password ~url ~username () =
  ({
     allowed_roles;
     ca_cert;
     ca_path;
     client_cert;
     client_key;
     data;
     disable_automated_rotation;
     insecure;
     name;
     password;
     plugin_name;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     tls_server_name;
     url;
     username;
     username_template;
     verify_connection;
   }
    : elasticsearch)

let hana ?allowed_roles ?connection_url ?data ?disable_automated_rotation ?disable_escaping ?max_connection_lifetime
  ?max_idle_connections ?max_open_connections ?password ?plugin_name ?root_rotation_statements ?rotation_period
  ?rotation_schedule ?rotation_window ?username ?verify_connection ~name () =
  ({
     allowed_roles;
     connection_url;
     data;
     disable_automated_rotation;
     disable_escaping;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     name;
     password;
     plugin_name;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     username;
     verify_connection;
   }
    : hana)

let influxdb ?allowed_roles ?connect_timeout ?data ?disable_automated_rotation ?insecure_tls ?pem_bundle ?pem_json
  ?plugin_name ?port ?root_rotation_statements ?rotation_period ?rotation_schedule ?rotation_window ?tls
  ?username_template ?verify_connection ~host ~name ~password ~username () =
  ({
     allowed_roles;
     connect_timeout;
     data;
     disable_automated_rotation;
     host;
     insecure_tls;
     name;
     password;
     pem_bundle;
     pem_json;
     plugin_name;
     port;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     tls;
     username;
     username_template;
     verify_connection;
   }
    : influxdb)

let mongodb ?allowed_roles ?connection_url ?data ?disable_automated_rotation ?max_connection_lifetime
  ?max_idle_connections ?max_open_connections ?password ?plugin_name ?root_rotation_statements ?rotation_period
  ?rotation_schedule ?rotation_window ?username ?username_template ?verify_connection ~name () =
  ({
     allowed_roles;
     connection_url;
     data;
     disable_automated_rotation;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     name;
     password;
     plugin_name;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     username;
     username_template;
     verify_connection;
   }
    : mongodb)

let mongodbatlas ?allowed_roles ?data ?disable_automated_rotation ?plugin_name ?root_rotation_statements
  ?rotation_period ?rotation_schedule ?rotation_window ?verify_connection ~name ~private_key ~project_id ~public_key ()
    =
  ({
     allowed_roles;
     data;
     disable_automated_rotation;
     name;
     plugin_name;
     private_key;
     project_id;
     public_key;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     verify_connection;
   }
    : mongodbatlas)

let mssql ?allowed_roles ?connection_url ?contained_db ?data ?disable_automated_rotation ?disable_escaping
  ?max_connection_lifetime ?max_idle_connections ?max_open_connections ?password ?plugin_name ?root_rotation_statements
  ?rotation_period ?rotation_schedule ?rotation_window ?username ?username_template ?verify_connection ~name () =
  ({
     allowed_roles;
     connection_url;
     contained_db;
     data;
     disable_automated_rotation;
     disable_escaping;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     name;
     password;
     plugin_name;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     username;
     username_template;
     verify_connection;
   }
    : mssql)

let mysql ?allowed_roles ?auth_type ?connection_url ?data ?disable_automated_rotation ?max_connection_lifetime
  ?max_idle_connections ?max_open_connections ?password ?plugin_name ?root_rotation_statements ?rotation_period
  ?rotation_schedule ?rotation_window ?service_account_json ?tls_ca ?tls_certificate_key ?username ?username_template
  ?verify_connection ~name () =
  ({
     allowed_roles;
     auth_type;
     connection_url;
     data;
     disable_automated_rotation;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     name;
     password;
     plugin_name;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     service_account_json;
     tls_ca;
     tls_certificate_key;
     username;
     username_template;
     verify_connection;
   }
    : mysql)

let mysql_aurora ?allowed_roles ?auth_type ?connection_url ?data ?disable_automated_rotation ?max_connection_lifetime
  ?max_idle_connections ?max_open_connections ?password ?plugin_name ?root_rotation_statements ?rotation_period
  ?rotation_schedule ?rotation_window ?service_account_json ?tls_ca ?tls_certificate_key ?username ?username_template
  ?verify_connection ~name () =
  ({
     allowed_roles;
     auth_type;
     connection_url;
     data;
     disable_automated_rotation;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     name;
     password;
     plugin_name;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     service_account_json;
     tls_ca;
     tls_certificate_key;
     username;
     username_template;
     verify_connection;
   }
    : mysql_aurora)

let mysql_legacy ?allowed_roles ?auth_type ?connection_url ?data ?disable_automated_rotation ?max_connection_lifetime
  ?max_idle_connections ?max_open_connections ?password ?plugin_name ?root_rotation_statements ?rotation_period
  ?rotation_schedule ?rotation_window ?service_account_json ?tls_ca ?tls_certificate_key ?username ?username_template
  ?verify_connection ~name () =
  ({
     allowed_roles;
     auth_type;
     connection_url;
     data;
     disable_automated_rotation;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     name;
     password;
     plugin_name;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     service_account_json;
     tls_ca;
     tls_certificate_key;
     username;
     username_template;
     verify_connection;
   }
    : mysql_legacy)

let mysql_rds ?allowed_roles ?auth_type ?connection_url ?data ?disable_automated_rotation ?max_connection_lifetime
  ?max_idle_connections ?max_open_connections ?password ?plugin_name ?root_rotation_statements ?rotation_period
  ?rotation_schedule ?rotation_window ?service_account_json ?tls_ca ?tls_certificate_key ?username ?username_template
  ?verify_connection ~name () =
  ({
     allowed_roles;
     auth_type;
     connection_url;
     data;
     disable_automated_rotation;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     name;
     password;
     plugin_name;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     service_account_json;
     tls_ca;
     tls_certificate_key;
     username;
     username_template;
     verify_connection;
   }
    : mysql_rds)

let oracle ?allowed_roles ?connection_url ?data ?disable_automated_rotation ?disconnect_sessions
  ?max_connection_lifetime ?max_idle_connections ?max_open_connections ?password ?plugin_name ?root_rotation_statements
  ?rotation_period ?rotation_schedule ?rotation_window ?split_statements ?username ?username_template ?verify_connection
  ~name () =
  ({
     allowed_roles;
     connection_url;
     data;
     disable_automated_rotation;
     disconnect_sessions;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     name;
     password;
     plugin_name;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     split_statements;
     username;
     username_template;
     verify_connection;
   }
    : oracle)

let postgresql ?allowed_roles ?auth_type ?connection_url ?data ?disable_automated_rotation ?disable_escaping
  ?max_connection_lifetime ?max_idle_connections ?max_open_connections ?password ?password_authentication ?plugin_name
  ?private_key ?root_rotation_statements ?rotation_period ?rotation_schedule ?rotation_window ?self_managed
  ?service_account_json ?tls_ca ?tls_certificate ?username ?username_template ?verify_connection ~name () =
  ({
     allowed_roles;
     auth_type;
     connection_url;
     data;
     disable_automated_rotation;
     disable_escaping;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     name;
     password;
     password_authentication;
     plugin_name;
     private_key;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     self_managed;
     service_account_json;
     tls_ca;
     tls_certificate;
     username;
     username_template;
     verify_connection;
   }
    : postgresql)

let redis ?allowed_roles ?ca_cert ?data ?disable_automated_rotation ?insecure_tls ?plugin_name ?port
  ?root_rotation_statements ?rotation_period ?rotation_schedule ?rotation_window ?tls ?verify_connection ~host ~name
  ~password ~username () =
  ({
     allowed_roles;
     ca_cert;
     data;
     disable_automated_rotation;
     host;
     insecure_tls;
     name;
     password;
     plugin_name;
     port;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     tls;
     username;
     verify_connection;
   }
    : redis)

let redis_elasticache ?allowed_roles ?data ?disable_automated_rotation ?password ?plugin_name ?region
  ?root_rotation_statements ?rotation_period ?rotation_schedule ?rotation_window ?username ?verify_connection ~name ~url
  () =
  ({
     allowed_roles;
     data;
     disable_automated_rotation;
     name;
     password;
     plugin_name;
     region;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     url;
     username;
     verify_connection;
   }
    : redis_elasticache)

let redshift ?allowed_roles ?connection_url ?data ?disable_automated_rotation ?disable_escaping ?max_connection_lifetime
  ?max_idle_connections ?max_open_connections ?password ?plugin_name ?root_rotation_statements ?rotation_period
  ?rotation_schedule ?rotation_window ?username ?username_template ?verify_connection ~name () =
  ({
     allowed_roles;
     connection_url;
     data;
     disable_automated_rotation;
     disable_escaping;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     name;
     password;
     plugin_name;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     username;
     username_template;
     verify_connection;
   }
    : redshift)

let snowflake ?allowed_roles ?connection_url ?data ?disable_automated_rotation ?max_connection_lifetime
  ?max_idle_connections ?max_open_connections ?password ?plugin_name ?root_rotation_statements ?rotation_period
  ?rotation_schedule ?rotation_window ?username ?username_template ?verify_connection ~name () =
  ({
     allowed_roles;
     connection_url;
     data;
     disable_automated_rotation;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     name;
     password;
     plugin_name;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     username;
     username_template;
     verify_connection;
   }
    : snowflake)

let vault_database_secrets_mount ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys
  ?audit_non_hmac_response_keys ?default_lease_ttl_seconds ?delegated_auth_accessors ?description
  ?external_entropy_access ?id ?identity_token_key ?listing_visibility ?local ?max_lease_ttl_seconds ?namespace ?options
  ?passthrough_request_headers ?plugin_version ?seal_wrap ?(cassandra = []) ?(couchbase = []) ?(elasticsearch = [])
  ?(hana = []) ?(influxdb = []) ?(mongodb = []) ?(mongodbatlas = []) ?(mssql = []) ?(mysql = []) ?(mysql_aurora = [])
  ?(mysql_legacy = []) ?(mysql_rds = []) ?(oracle = []) ?(postgresql = []) ?(redis = []) ?(redis_elasticache = [])
  ?(redshift = []) ?(snowflake = []) ~path () =
  ({
     allowed_managed_keys;
     allowed_response_headers;
     audit_non_hmac_request_keys;
     audit_non_hmac_response_keys;
     default_lease_ttl_seconds;
     delegated_auth_accessors;
     description;
     external_entropy_access;
     id;
     identity_token_key;
     listing_visibility;
     local;
     max_lease_ttl_seconds;
     namespace;
     options;
     passthrough_request_headers;
     path;
     plugin_version;
     seal_wrap;
     cassandra;
     couchbase;
     elasticsearch;
     hana;
     influxdb;
     mongodb;
     mongodbatlas;
     mssql;
     mysql;
     mysql_aurora;
     mysql_legacy;
     mysql_rds;
     oracle;
     postgresql;
     redis;
     redis_elasticache;
     redshift;
     snowflake;
   }
    : vault_database_secrets_mount)

type t = {
  tf_name : string;
  accessor : string prop;
  allowed_managed_keys : string list prop;
  allowed_response_headers : string list prop;
  audit_non_hmac_request_keys : string list prop;
  audit_non_hmac_response_keys : string list prop;
  default_lease_ttl_seconds : float prop;
  delegated_auth_accessors : string list prop;
  description : string prop;
  engine_count : float prop;
  external_entropy_access : bool prop;
  id : string prop;
  identity_token_key : string prop;
  listing_visibility : string prop;
  local : bool prop;
  max_lease_ttl_seconds : float prop;
  namespace : string prop;
  options : string Tf_core.assoc prop;
  passthrough_request_headers : string list prop;
  path : string prop;
  plugin_version : string prop;
  seal_wrap : bool prop;
}

let make ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys ?audit_non_hmac_response_keys
  ?default_lease_ttl_seconds ?delegated_auth_accessors ?description ?external_entropy_access ?id ?identity_token_key
  ?listing_visibility ?local ?max_lease_ttl_seconds ?namespace ?options ?passthrough_request_headers ?plugin_version
  ?seal_wrap ?(cassandra = []) ?(couchbase = []) ?(elasticsearch = []) ?(hana = []) ?(influxdb = []) ?(mongodb = [])
  ?(mongodbatlas = []) ?(mssql = []) ?(mysql = []) ?(mysql_aurora = []) ?(mysql_legacy = []) ?(mysql_rds = [])
  ?(oracle = []) ?(postgresql = []) ?(redis = []) ?(redis_elasticache = []) ?(redshift = []) ?(snowflake = []) ~path
  __id =
  let __type = "vault_database_secrets_mount" in
  let __attrs =
    ({
       tf_name = __id;
       accessor = Prop.computed __type __id "accessor";
       allowed_managed_keys = Prop.computed __type __id "allowed_managed_keys";
       allowed_response_headers = Prop.computed __type __id "allowed_response_headers";
       audit_non_hmac_request_keys = Prop.computed __type __id "audit_non_hmac_request_keys";
       audit_non_hmac_response_keys = Prop.computed __type __id "audit_non_hmac_response_keys";
       default_lease_ttl_seconds = Prop.computed __type __id "default_lease_ttl_seconds";
       delegated_auth_accessors = Prop.computed __type __id "delegated_auth_accessors";
       description = Prop.computed __type __id "description";
       engine_count = Prop.computed __type __id "engine_count";
       external_entropy_access = Prop.computed __type __id "external_entropy_access";
       id = Prop.computed __type __id "id";
       identity_token_key = Prop.computed __type __id "identity_token_key";
       listing_visibility = Prop.computed __type __id "listing_visibility";
       local = Prop.computed __type __id "local";
       max_lease_ttl_seconds = Prop.computed __type __id "max_lease_ttl_seconds";
       namespace = Prop.computed __type __id "namespace";
       options = Prop.computed __type __id "options";
       passthrough_request_headers = Prop.computed __type __id "passthrough_request_headers";
       path = Prop.computed __type __id "path";
       plugin_version = Prop.computed __type __id "plugin_version";
       seal_wrap = Prop.computed __type __id "seal_wrap";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_database_secrets_mount
        (vault_database_secrets_mount ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys
           ?audit_non_hmac_response_keys ?default_lease_ttl_seconds ?delegated_auth_accessors ?description
           ?external_entropy_access ?id ?identity_token_key ?listing_visibility ?local ?max_lease_ttl_seconds ?namespace
           ?options ?passthrough_request_headers ?plugin_version ?seal_wrap ~cassandra ~couchbase ~elasticsearch ~hana
           ~influxdb ~mongodb ~mongodbatlas ~mssql ~mysql ~mysql_aurora ~mysql_legacy ~mysql_rds ~oracle ~postgresql
           ~redis ~redis_elasticache ~redshift ~snowflake ~path ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys
  ?audit_non_hmac_response_keys ?default_lease_ttl_seconds ?delegated_auth_accessors ?description
  ?external_entropy_access ?id ?identity_token_key ?listing_visibility ?local ?max_lease_ttl_seconds ?namespace ?options
  ?passthrough_request_headers ?plugin_version ?seal_wrap ?(cassandra = []) ?(couchbase = []) ?(elasticsearch = [])
  ?(hana = []) ?(influxdb = []) ?(mongodb = []) ?(mongodbatlas = []) ?(mssql = []) ?(mysql = []) ?(mysql_aurora = [])
  ?(mysql_legacy = []) ?(mysql_rds = []) ?(oracle = []) ?(postgresql = []) ?(redis = []) ?(redis_elasticache = [])
  ?(redshift = []) ?(snowflake = []) ~path __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_managed_keys ?allowed_response_headers ?audit_non_hmac_request_keys ?audit_non_hmac_response_keys
      ?default_lease_ttl_seconds ?delegated_auth_accessors ?description ?external_entropy_access ?id ?identity_token_key
      ?listing_visibility ?local ?max_lease_ttl_seconds ?namespace ?options ?passthrough_request_headers ?plugin_version
      ?seal_wrap ~cassandra ~couchbase ~elasticsearch ~hana ~influxdb ~mongodb ~mongodbatlas ~mssql ~mysql ~mysql_aurora
      ~mysql_legacy ~mysql_rds ~oracle ~postgresql ~redis ~redis_elasticache ~redshift ~snowflake ~path __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

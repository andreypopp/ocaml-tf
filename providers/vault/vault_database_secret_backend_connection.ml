(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cassandra = {
  connect_timeout : float prop option; [@option]
  hosts : string prop list option; [@option]
  insecure_tls : bool prop option; [@option]
  password : string prop option; [@option]
  pem_bundle : string prop option; [@option]
  pem_json : string prop option; [@option]
  port : float prop option; [@option]
  protocol_version : float prop option; [@option]
  skip_verification : bool prop option; [@option]
  tls : bool prop option; [@option]
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cassandra) -> ()

let yojson_of_cassandra =
  (function
   | {
       connect_timeout = v_connect_timeout;
       hosts = v_hosts;
       insecure_tls = v_insecure_tls;
       password = v_password;
       pem_bundle = v_pem_bundle;
       pem_json = v_pem_json;
       port = v_port;
       protocol_version = v_protocol_version;
       skip_verification = v_skip_verification;
       tls = v_tls;
       username = v_username;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_connect_timeout with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "connect_timeout", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : cassandra -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cassandra

[@@@deriving.end]

type couchbase = {
  base64_pem : string prop option; [@option]
  bucket_name : string prop option; [@option]
  hosts : string prop list; [@default []] [@yojson_drop_default Stdlib.( = )]
  insecure_tls : bool prop option; [@option]
  password : string prop;
  tls : bool prop option; [@option]
  username : string prop;
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : couchbase) -> ()

let yojson_of_couchbase =
  (function
   | {
       base64_pem = v_base64_pem;
       bucket_name = v_bucket_name;
       hosts = v_hosts;
       insecure_tls = v_insecure_tls;
       password = v_password;
       tls = v_tls;
       username = v_username;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       let arg = yojson_of_prop yojson_of_string v_password in
       ("password", arg) :: bnds
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
     `Assoc bnds
    : couchbase -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_couchbase

[@@@deriving.end]

type elasticsearch = {
  ca_cert : string prop option; [@option]
  ca_path : string prop option; [@option]
  client_cert : string prop option; [@option]
  client_key : string prop option; [@option]
  insecure : bool prop option; [@option]
  password : string prop;
  tls_server_name : string prop option; [@option]
  url : string prop;
  username : string prop;
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : elasticsearch) -> ()

let yojson_of_elasticsearch =
  (function
   | {
       ca_cert = v_ca_cert;
       ca_path = v_ca_path;
       client_cert = v_client_cert;
       client_key = v_client_key;
       insecure = v_insecure;
       password = v_password;
       tls_server_name = v_tls_server_name;
       url = v_url;
       username = v_username;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       let arg = yojson_of_prop yojson_of_string v_password in
       ("password", arg) :: bnds
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
     `Assoc bnds
    : elasticsearch -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_elasticsearch

[@@@deriving.end]

type hana = {
  connection_url : string prop option; [@option]
  disable_escaping : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  password : string prop option; [@option]
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hana) -> ()

let yojson_of_hana =
  (function
   | {
       connection_url = v_connection_url;
       disable_escaping = v_disable_escaping;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       password = v_password;
       username = v_username;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_username with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "username", arg in
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
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : hana -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hana

[@@@deriving.end]

type influxdb = {
  connect_timeout : float prop option; [@option]
  host : string prop;
  insecure_tls : bool prop option; [@option]
  password : string prop;
  pem_bundle : string prop option; [@option]
  pem_json : string prop option; [@option]
  port : float prop option; [@option]
  tls : bool prop option; [@option]
  username : string prop;
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : influxdb) -> ()

let yojson_of_influxdb =
  (function
   | {
       connect_timeout = v_connect_timeout;
       host = v_host;
       insecure_tls = v_insecure_tls;
       password = v_password;
       pem_bundle = v_pem_bundle;
       pem_json = v_pem_json;
       port = v_port;
       tls = v_tls;
       username = v_username;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_port with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "port", arg in
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
       match v_connect_timeout with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "connect_timeout", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : influxdb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_influxdb

[@@@deriving.end]

type mongodb = {
  connection_url : string prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  password : string prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mongodb) -> ()

let yojson_of_mongodb =
  (function
   | {
       connection_url = v_connection_url;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       password = v_password;
       username = v_username;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
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
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : mongodb -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mongodb

[@@@deriving.end]

type mongodbatlas = {
  private_key : string prop;
  project_id : string prop;
  public_key : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mongodbatlas) -> ()

let yojson_of_mongodbatlas =
  (function
   | { private_key = v_private_key; project_id = v_project_id; public_key = v_public_key } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
     `Assoc bnds
    : mongodbatlas -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mongodbatlas

[@@@deriving.end]

type mssql = {
  connection_url : string prop option; [@option]
  contained_db : bool prop option; [@option]
  disable_escaping : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  password : string prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mssql) -> ()

let yojson_of_mssql =
  (function
   | {
       connection_url = v_connection_url;
       contained_db = v_contained_db;
       disable_escaping = v_disable_escaping;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       password = v_password;
       username = v_username;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
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
     `Assoc bnds
    : mssql -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mssql

[@@@deriving.end]

type mysql = {
  auth_type : string prop option; [@option]
  connection_url : string prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  password : string prop option; [@option]
  service_account_json : string prop option; [@option]
  tls_ca : string prop option; [@option]
  tls_certificate_key : string prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mysql) -> ()

let yojson_of_mysql =
  (function
   | {
       auth_type = v_auth_type;
       connection_url = v_connection_url;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       password = v_password;
       service_account_json = v_service_account_json;
       tls_ca = v_tls_ca;
       tls_certificate_key = v_tls_certificate_key;
       username = v_username;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
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
     `Assoc bnds
    : mysql -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mysql

[@@@deriving.end]

type mysql_aurora = {
  auth_type : string prop option; [@option]
  connection_url : string prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  password : string prop option; [@option]
  service_account_json : string prop option; [@option]
  tls_ca : string prop option; [@option]
  tls_certificate_key : string prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mysql_aurora) -> ()

let yojson_of_mysql_aurora =
  (function
   | {
       auth_type = v_auth_type;
       connection_url = v_connection_url;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       password = v_password;
       service_account_json = v_service_account_json;
       tls_ca = v_tls_ca;
       tls_certificate_key = v_tls_certificate_key;
       username = v_username;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
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
     `Assoc bnds
    : mysql_aurora -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mysql_aurora

[@@@deriving.end]

type mysql_legacy = {
  auth_type : string prop option; [@option]
  connection_url : string prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  password : string prop option; [@option]
  service_account_json : string prop option; [@option]
  tls_ca : string prop option; [@option]
  tls_certificate_key : string prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mysql_legacy) -> ()

let yojson_of_mysql_legacy =
  (function
   | {
       auth_type = v_auth_type;
       connection_url = v_connection_url;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       password = v_password;
       service_account_json = v_service_account_json;
       tls_ca = v_tls_ca;
       tls_certificate_key = v_tls_certificate_key;
       username = v_username;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
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
     `Assoc bnds
    : mysql_legacy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mysql_legacy

[@@@deriving.end]

type mysql_rds = {
  auth_type : string prop option; [@option]
  connection_url : string prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  password : string prop option; [@option]
  service_account_json : string prop option; [@option]
  tls_ca : string prop option; [@option]
  tls_certificate_key : string prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : mysql_rds) -> ()

let yojson_of_mysql_rds =
  (function
   | {
       auth_type = v_auth_type;
       connection_url = v_connection_url;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       password = v_password;
       service_account_json = v_service_account_json;
       tls_ca = v_tls_ca;
       tls_certificate_key = v_tls_certificate_key;
       username = v_username;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
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
     `Assoc bnds
    : mysql_rds -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_mysql_rds

[@@@deriving.end]

type oracle = {
  connection_url : string prop option; [@option]
  disconnect_sessions : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  password : string prop option; [@option]
  split_statements : bool prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : oracle) -> ()

let yojson_of_oracle =
  (function
   | {
       connection_url = v_connection_url;
       disconnect_sessions = v_disconnect_sessions;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       password = v_password;
       split_statements = v_split_statements;
       username = v_username;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
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
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : oracle -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_oracle

[@@@deriving.end]

type postgresql = {
  auth_type : string prop option; [@option]
  connection_url : string prop option; [@option]
  disable_escaping : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  password : string prop option; [@option]
  password_authentication : string prop option; [@option]
  private_key : string prop option; [@option]
  self_managed : bool prop option; [@option]
  service_account_json : string prop option; [@option]
  tls_ca : string prop option; [@option]
  tls_certificate : string prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : postgresql) -> ()

let yojson_of_postgresql =
  (function
   | {
       auth_type = v_auth_type;
       connection_url = v_connection_url;
       disable_escaping = v_disable_escaping;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       password = v_password;
       password_authentication = v_password_authentication;
       private_key = v_private_key;
       self_managed = v_self_managed;
       service_account_json = v_service_account_json;
       tls_ca = v_tls_ca;
       tls_certificate = v_tls_certificate;
       username = v_username;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_private_key with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "private_key", arg in
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
     `Assoc bnds
    : postgresql -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_postgresql

[@@@deriving.end]

type redis = {
  ca_cert : string prop option; [@option]
  host : string prop;
  insecure_tls : bool prop option; [@option]
  password : string prop;
  port : float prop option; [@option]
  tls : bool prop option; [@option]
  username : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redis) -> ()

let yojson_of_redis =
  (function
   | {
       ca_cert = v_ca_cert;
       host = v_host;
       insecure_tls = v_insecure_tls;
       password = v_password;
       port = v_port;
       tls = v_tls;
       username = v_username;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_port with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "port", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_password in
       ("password", arg) :: bnds
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
       match v_ca_cert with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "ca_cert", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : redis -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redis

[@@@deriving.end]

type redis_elasticache = {
  password : string prop option; [@option]
  region : string prop option; [@option]
  url : string prop;
  username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redis_elasticache) -> ()

let yojson_of_redis_elasticache =
  (function
   | { password = v_password; region = v_region; url = v_url; username = v_username } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_region with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "region", arg in
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
     `Assoc bnds
    : redis_elasticache -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redis_elasticache

[@@@deriving.end]

type redshift = {
  connection_url : string prop option; [@option]
  disable_escaping : bool prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  password : string prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : redshift) -> ()

let yojson_of_redshift =
  (function
   | {
       connection_url = v_connection_url;
       disable_escaping = v_disable_escaping;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       password = v_password;
       username = v_username;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
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
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : redshift -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_redshift

[@@@deriving.end]

type snowflake = {
  connection_url : string prop option; [@option]
  max_connection_lifetime : float prop option; [@option]
  max_idle_connections : float prop option; [@option]
  max_open_connections : float prop option; [@option]
  password : string prop option; [@option]
  username : string prop option; [@option]
  username_template : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : snowflake) -> ()

let yojson_of_snowflake =
  (function
   | {
       connection_url = v_connection_url;
       max_connection_lifetime = v_max_connection_lifetime;
       max_idle_connections = v_max_idle_connections;
       max_open_connections = v_max_open_connections;
       password = v_password;
       username = v_username;
       username_template = v_username_template;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
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
       match v_password with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "password", arg in
         bnd :: bnds
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
       match v_connection_url with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "connection_url", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : snowflake -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_snowflake

[@@@deriving.end]

type vault_database_secret_backend_connection = {
  allowed_roles : string prop list option; [@option]
  backend : string prop;
  data : string prop Tf_core.assoc option; [@option]
  disable_automated_rotation : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  plugin_name : string prop option; [@option]
  root_rotation_statements : string prop list option; [@option]
  rotation_period : float prop option; [@option]
  rotation_schedule : string prop option; [@option]
  rotation_window : float prop option; [@option]
  verify_connection : bool prop option; [@option]
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

let _ = fun (_ : vault_database_secret_backend_connection) -> ()

let yojson_of_vault_database_secret_backend_connection =
  (function
   | {
       allowed_roles = v_allowed_roles;
       backend = v_backend;
       data = v_data;
       disable_automated_rotation = v_disable_automated_rotation;
       id = v_id;
       name = v_name;
       namespace = v_namespace;
       plugin_name = v_plugin_name;
       root_rotation_statements = v_root_rotation_statements;
       rotation_period = v_rotation_period;
       rotation_schedule = v_rotation_schedule;
       rotation_window = v_rotation_window;
       verify_connection = v_verify_connection;
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
       match v_plugin_name with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "plugin_name", arg in
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
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
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
    : vault_database_secret_backend_connection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_database_secret_backend_connection

[@@@deriving.end]

let cassandra ?connect_timeout ?hosts ?insecure_tls ?password ?pem_bundle ?pem_json ?port ?protocol_version
  ?skip_verification ?tls ?username () =
  ({
     connect_timeout;
     hosts;
     insecure_tls;
     password;
     pem_bundle;
     pem_json;
     port;
     protocol_version;
     skip_verification;
     tls;
     username;
   }
    : cassandra)

let couchbase ?base64_pem ?bucket_name ?insecure_tls ?tls ?username_template ~hosts ~password ~username () =
  ({ base64_pem; bucket_name; hosts; insecure_tls; password; tls; username; username_template } : couchbase)

let elasticsearch ?ca_cert ?ca_path ?client_cert ?client_key ?insecure ?tls_server_name ?username_template ~password
  ~url ~username () =
  ({ ca_cert; ca_path; client_cert; client_key; insecure; password; tls_server_name; url; username; username_template }
    : elasticsearch)

let hana ?connection_url ?disable_escaping ?max_connection_lifetime ?max_idle_connections ?max_open_connections
  ?password ?username () =
  ({
     connection_url;
     disable_escaping;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     password;
     username;
   }
    : hana)

let influxdb ?connect_timeout ?insecure_tls ?pem_bundle ?pem_json ?port ?tls ?username_template ~host ~password
  ~username () =
  ({ connect_timeout; host; insecure_tls; password; pem_bundle; pem_json; port; tls; username; username_template }
    : influxdb)

let mongodb ?connection_url ?max_connection_lifetime ?max_idle_connections ?max_open_connections ?password ?username
  ?username_template () =
  ({
     connection_url;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     password;
     username;
     username_template;
   }
    : mongodb)

let mongodbatlas ~private_key ~project_id ~public_key () = ({ private_key; project_id; public_key } : mongodbatlas)

let mssql ?connection_url ?contained_db ?disable_escaping ?max_connection_lifetime ?max_idle_connections
  ?max_open_connections ?password ?username ?username_template () =
  ({
     connection_url;
     contained_db;
     disable_escaping;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     password;
     username;
     username_template;
   }
    : mssql)

let mysql ?auth_type ?connection_url ?max_connection_lifetime ?max_idle_connections ?max_open_connections ?password
  ?service_account_json ?tls_ca ?tls_certificate_key ?username ?username_template () =
  ({
     auth_type;
     connection_url;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     password;
     service_account_json;
     tls_ca;
     tls_certificate_key;
     username;
     username_template;
   }
    : mysql)

let mysql_aurora ?auth_type ?connection_url ?max_connection_lifetime ?max_idle_connections ?max_open_connections
  ?password ?service_account_json ?tls_ca ?tls_certificate_key ?username ?username_template () =
  ({
     auth_type;
     connection_url;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     password;
     service_account_json;
     tls_ca;
     tls_certificate_key;
     username;
     username_template;
   }
    : mysql_aurora)

let mysql_legacy ?auth_type ?connection_url ?max_connection_lifetime ?max_idle_connections ?max_open_connections
  ?password ?service_account_json ?tls_ca ?tls_certificate_key ?username ?username_template () =
  ({
     auth_type;
     connection_url;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     password;
     service_account_json;
     tls_ca;
     tls_certificate_key;
     username;
     username_template;
   }
    : mysql_legacy)

let mysql_rds ?auth_type ?connection_url ?max_connection_lifetime ?max_idle_connections ?max_open_connections ?password
  ?service_account_json ?tls_ca ?tls_certificate_key ?username ?username_template () =
  ({
     auth_type;
     connection_url;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     password;
     service_account_json;
     tls_ca;
     tls_certificate_key;
     username;
     username_template;
   }
    : mysql_rds)

let oracle ?connection_url ?disconnect_sessions ?max_connection_lifetime ?max_idle_connections ?max_open_connections
  ?password ?split_statements ?username ?username_template () =
  ({
     connection_url;
     disconnect_sessions;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     password;
     split_statements;
     username;
     username_template;
   }
    : oracle)

let postgresql ?auth_type ?connection_url ?disable_escaping ?max_connection_lifetime ?max_idle_connections
  ?max_open_connections ?password ?password_authentication ?private_key ?self_managed ?service_account_json ?tls_ca
  ?tls_certificate ?username ?username_template () =
  ({
     auth_type;
     connection_url;
     disable_escaping;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     password;
     password_authentication;
     private_key;
     self_managed;
     service_account_json;
     tls_ca;
     tls_certificate;
     username;
     username_template;
   }
    : postgresql)

let redis ?ca_cert ?insecure_tls ?port ?tls ~host ~password ~username () =
  ({ ca_cert; host; insecure_tls; password; port; tls; username } : redis)

let redis_elasticache ?password ?region ?username ~url () = ({ password; region; url; username } : redis_elasticache)

let redshift ?connection_url ?disable_escaping ?max_connection_lifetime ?max_idle_connections ?max_open_connections
  ?password ?username ?username_template () =
  ({
     connection_url;
     disable_escaping;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     password;
     username;
     username_template;
   }
    : redshift)

let snowflake ?connection_url ?max_connection_lifetime ?max_idle_connections ?max_open_connections ?password ?username
  ?username_template () =
  ({
     connection_url;
     max_connection_lifetime;
     max_idle_connections;
     max_open_connections;
     password;
     username;
     username_template;
   }
    : snowflake)

let vault_database_secret_backend_connection ?allowed_roles ?data ?disable_automated_rotation ?id ?namespace
  ?plugin_name ?root_rotation_statements ?rotation_period ?rotation_schedule ?rotation_window ?verify_connection
  ?(cassandra = []) ?(couchbase = []) ?(elasticsearch = []) ?(hana = []) ?(influxdb = []) ?(mongodb = [])
  ?(mongodbatlas = []) ?(mssql = []) ?(mysql = []) ?(mysql_aurora = []) ?(mysql_legacy = []) ?(mysql_rds = [])
  ?(oracle = []) ?(postgresql = []) ?(redis = []) ?(redis_elasticache = []) ?(redshift = []) ?(snowflake = []) ~backend
  ~name () =
  ({
     allowed_roles;
     backend;
     data;
     disable_automated_rotation;
     id;
     name;
     namespace;
     plugin_name;
     root_rotation_statements;
     rotation_period;
     rotation_schedule;
     rotation_window;
     verify_connection;
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
    : vault_database_secret_backend_connection)

type t = {
  tf_name : string;
  allowed_roles : string list prop;
  backend : string prop;
  data : string Tf_core.assoc prop;
  disable_automated_rotation : bool prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  plugin_name : string prop;
  root_rotation_statements : string list prop;
  rotation_period : float prop;
  rotation_schedule : string prop;
  rotation_window : float prop;
  verify_connection : bool prop;
}

let make ?allowed_roles ?data ?disable_automated_rotation ?id ?namespace ?plugin_name ?root_rotation_statements
  ?rotation_period ?rotation_schedule ?rotation_window ?verify_connection ?(cassandra = []) ?(couchbase = [])
  ?(elasticsearch = []) ?(hana = []) ?(influxdb = []) ?(mongodb = []) ?(mongodbatlas = []) ?(mssql = []) ?(mysql = [])
  ?(mysql_aurora = []) ?(mysql_legacy = []) ?(mysql_rds = []) ?(oracle = []) ?(postgresql = []) ?(redis = [])
  ?(redis_elasticache = []) ?(redshift = []) ?(snowflake = []) ~backend ~name __id =
  let __type = "vault_database_secret_backend_connection" in
  let __attrs =
    ({
       tf_name = __id;
       allowed_roles = Prop.computed __type __id "allowed_roles";
       backend = Prop.computed __type __id "backend";
       data = Prop.computed __type __id "data";
       disable_automated_rotation = Prop.computed __type __id "disable_automated_rotation";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       plugin_name = Prop.computed __type __id "plugin_name";
       root_rotation_statements = Prop.computed __type __id "root_rotation_statements";
       rotation_period = Prop.computed __type __id "rotation_period";
       rotation_schedule = Prop.computed __type __id "rotation_schedule";
       rotation_window = Prop.computed __type __id "rotation_window";
       verify_connection = Prop.computed __type __id "verify_connection";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_database_secret_backend_connection
        (vault_database_secret_backend_connection ?allowed_roles ?data ?disable_automated_rotation ?id ?namespace
           ?plugin_name ?root_rotation_statements ?rotation_period ?rotation_schedule ?rotation_window
           ?verify_connection ~cassandra ~couchbase ~elasticsearch ~hana ~influxdb ~mongodb ~mongodbatlas ~mssql ~mysql
           ~mysql_aurora ~mysql_legacy ~mysql_rds ~oracle ~postgresql ~redis ~redis_elasticache ~redshift ~snowflake
           ~backend ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_roles ?data ?disable_automated_rotation ?id ?namespace ?plugin_name
  ?root_rotation_statements ?rotation_period ?rotation_schedule ?rotation_window ?verify_connection ?(cassandra = [])
  ?(couchbase = []) ?(elasticsearch = []) ?(hana = []) ?(influxdb = []) ?(mongodb = []) ?(mongodbatlas = [])
  ?(mssql = []) ?(mysql = []) ?(mysql_aurora = []) ?(mysql_legacy = []) ?(mysql_rds = []) ?(oracle = [])
  ?(postgresql = []) ?(redis = []) ?(redis_elasticache = []) ?(redshift = []) ?(snowflake = []) ~backend ~name __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_roles ?data ?disable_automated_rotation ?id ?namespace ?plugin_name ?root_rotation_statements
      ?rotation_period ?rotation_schedule ?rotation_window ?verify_connection ~cassandra ~couchbase ~elasticsearch ~hana
      ~influxdb ~mongodb ~mongodbatlas ~mssql ~mysql ~mysql_aurora ~mysql_legacy ~mysql_rds ~oracle ~postgresql ~redis
      ~redis_elasticache ~redshift ~snowflake ~backend ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

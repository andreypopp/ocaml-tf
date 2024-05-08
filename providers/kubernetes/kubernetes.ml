(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type exec = {
  api_version : string prop;
  args : string prop list option; [@option]
  command : string prop;
  env : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : exec) -> ()

let yojson_of_exec =
  (function
   | {
       api_version = v_api_version;
       args = v_args;
       command = v_command;
       env = v_env;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_env with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "env", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_command in
         ("command", arg) :: bnds
       in
       let bnds =
         match v_args with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "args", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_version in
         ("api_version", arg) :: bnds
       in
       `Assoc bnds
    : exec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_exec

[@@@deriving.end]

type experiments = { manifest_resource : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : experiments) -> ()

let yojson_of_experiments =
  (function
   | { manifest_resource = v_manifest_resource } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_manifest_resource with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "manifest_resource", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : experiments -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_experiments

[@@@deriving.end]

type kubernetes = {
  client_certificate : string prop option; [@option]
  client_key : string prop option; [@option]
  cluster_ca_certificate : string prop option; [@option]
  config_context : string prop option; [@option]
  config_context_auth_info : string prop option; [@option]
  config_context_cluster : string prop option; [@option]
  config_path : string prop option; [@option]
  config_paths : string prop list option; [@option]
  host : string prop option; [@option]
  ignore_annotations : string prop list option; [@option]
  ignore_labels : string prop list option; [@option]
  insecure : bool prop option; [@option]
  password : string prop option; [@option]
  proxy_url : string prop option; [@option]
  tls_server_name : string prop option; [@option]
  token : string prop option; [@option]
  username : string prop option; [@option]
  exec : exec list; [@default []] [@yojson_drop_default Stdlib.( = )]
  experiments : experiments list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes) -> ()

let yojson_of_kubernetes =
  (function
   | {
       client_certificate = v_client_certificate;
       client_key = v_client_key;
       cluster_ca_certificate = v_cluster_ca_certificate;
       config_context = v_config_context;
       config_context_auth_info = v_config_context_auth_info;
       config_context_cluster = v_config_context_cluster;
       config_path = v_config_path;
       config_paths = v_config_paths;
       host = v_host;
       ignore_annotations = v_ignore_annotations;
       ignore_labels = v_ignore_labels;
       insecure = v_insecure;
       password = v_password;
       proxy_url = v_proxy_url;
       tls_server_name = v_tls_server_name;
       token = v_token;
       username = v_username;
       exec = v_exec;
       experiments = v_experiments;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_experiments then bnds
         else
           let arg =
             (yojson_of_list yojson_of_experiments) v_experiments
           in
           let bnd = "experiments", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_exec then bnds
         else
           let arg = (yojson_of_list yojson_of_exec) v_exec in
           let bnd = "exec", arg in
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
         match v_token with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token", arg in
             bnd :: bnds
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
         match v_proxy_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proxy_url", arg in
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
         match v_insecure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "insecure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ignore_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ignore_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "ignore_annotations", arg in
             bnd :: bnds
       in
       let bnds =
         match v_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host", arg in
             bnd :: bnds
       in
       let bnds =
         match v_config_paths with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "config_paths", arg in
             bnd :: bnds
       in
       let bnds =
         match v_config_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "config_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_config_context_cluster with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "config_context_cluster", arg in
             bnd :: bnds
       in
       let bnds =
         match v_config_context_auth_info with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "config_context_auth_info", arg in
             bnd :: bnds
       in
       let bnds =
         match v_config_context with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "config_context", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cluster_ca_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cluster_ca_certificate", arg in
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
         match v_client_certificate with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "client_certificate", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kubernetes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes

[@@@deriving.end]

let exec ?args ?env ~api_version ~command () : exec =
  { api_version; args; command; env }

let experiments ?manifest_resource () : experiments =
  { manifest_resource }

let kubernetes ?client_certificate ?client_key
    ?cluster_ca_certificate ?config_context ?config_context_auth_info
    ?config_context_cluster ?config_path ?config_paths ?host
    ?ignore_annotations ?ignore_labels ?insecure ?password ?proxy_url
    ?tls_server_name ?token ?username ?(exec = [])
    ?(experiments = []) () : kubernetes =
  {
    client_certificate;
    client_key;
    cluster_ca_certificate;
    config_context;
    config_context_auth_info;
    config_context_cluster;
    config_path;
    config_paths;
    host;
    ignore_annotations;
    ignore_labels;
    insecure;
    password;
    proxy_url;
    tls_server_name;
    token;
    username;
    exec;
    experiments;
  }

let make ?client_certificate ?client_key ?cluster_ca_certificate
    ?config_context ?config_context_auth_info ?config_context_cluster
    ?config_path ?config_paths ?host ?ignore_annotations
    ?ignore_labels ?insecure ?password ?proxy_url ?tls_server_name
    ?token ?username ?(exec = []) ?(experiments = []) () =
  {
    Tf_core.id = "kubernetes";
    json =
      yojson_of_kubernetes
        (kubernetes ?client_certificate ?client_key
           ?cluster_ca_certificate ?config_context
           ?config_context_auth_info ?config_context_cluster
           ?config_path ?config_paths ?host ?ignore_annotations
           ?ignore_labels ?insecure ?password ?proxy_url
           ?tls_server_name ?token ?username ~exec ~experiments ());
  }

let register ?tf_module ?client_certificate ?client_key
    ?cluster_ca_certificate ?config_context ?config_context_auth_info
    ?config_context_cluster ?config_path ?config_paths ?host
    ?ignore_annotations ?ignore_labels ?insecure ?password ?proxy_url
    ?tls_server_name ?token ?username ?(exec = [])
    ?(experiments = []) ~version () =
  let (p : Tf_core.provider) =
    make ?client_certificate ?client_key ?cluster_ca_certificate
      ?config_context ?config_context_auth_info
      ?config_context_cluster ?config_path ?config_paths ?host
      ?ignore_annotations ?ignore_labels ?insecure ?password
      ?proxy_url ?tls_server_name ?token ?username ~exec ~experiments
      ()
  in
  Provider.add ?tf_module ~id:p.id p.json;
  Required_providers.add ?tf_module ~id:p.id
    (`Assoc
      [
        ( "source",
          `String "registry.terraform.io/hashicorp/kubernetes" );
        "version", `String version;
      ]);
  ()

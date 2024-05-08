(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
  generate_name : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
  namespace : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : metadata) -> ()

let yojson_of_metadata =
  (function
   | {
       annotations = v_annotations;
       generate_name = v_generate_name;
       labels = v_labels;
       name = v_name;
       namespace = v_namespace;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_labels with
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
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_generate_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "generate_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
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
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_metadata

[@@@deriving.end]

type spec__default_backend__resource = {
  api_group : string prop;
  kind : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__default_backend__resource) -> ()

let yojson_of_spec__default_backend__resource =
  (function
   | { api_group = v_api_group; kind = v_kind; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_group in
         ("api_group", arg) :: bnds
       in
       `Assoc bnds
    : spec__default_backend__resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__default_backend__resource

[@@@deriving.end]

type spec__default_backend__service__port = {
  name : string prop option; [@option]
  number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__default_backend__service__port) -> ()

let yojson_of_spec__default_backend__service__port =
  (function
   | { name = v_name; number = v_number } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__default_backend__service__port ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__default_backend__service__port

[@@@deriving.end]

type spec__default_backend__service = {
  name : string prop;
  port : spec__default_backend__service__port list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__default_backend__service) -> ()

let yojson_of_spec__default_backend__service =
  (function
   | { name = v_name; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_port then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__default_backend__service__port)
               v_port
           in
           let bnd = "port", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__default_backend__service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__default_backend__service

[@@@deriving.end]

type spec__default_backend = {
  resource : spec__default_backend__resource list;
      [@default []] [@yojson_drop_default ( = )]
  service : spec__default_backend__service list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__default_backend) -> ()

let yojson_of_spec__default_backend =
  (function
   | { resource = v_resource; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_service then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__default_backend__service)
               v_service
           in
           let bnd = "service", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_resource then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__default_backend__resource)
               v_resource
           in
           let bnd = "resource", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__default_backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__default_backend

[@@@deriving.end]

type spec__rule__http__path__backend__resource = {
  api_group : string prop;
  kind : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__rule__http__path__backend__resource) -> ()

let yojson_of_spec__rule__http__path__backend__resource =
  (function
   | { api_group = v_api_group; kind = v_kind; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_api_group in
         ("api_group", arg) :: bnds
       in
       `Assoc bnds
    : spec__rule__http__path__backend__resource ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rule__http__path__backend__resource

[@@@deriving.end]

type spec__rule__http__path__backend__service__port = {
  name : string prop option; [@option]
  number : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__rule__http__path__backend__service__port) -> ()

let yojson_of_spec__rule__http__path__backend__service__port =
  (function
   | { name = v_name; number = v_number } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_number with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "number", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__rule__http__path__backend__service__port ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rule__http__path__backend__service__port

[@@@deriving.end]

type spec__rule__http__path__backend__service = {
  name : string prop;
  port : spec__rule__http__path__backend__service__port list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__rule__http__path__backend__service) -> ()

let yojson_of_spec__rule__http__path__backend__service =
  (function
   | { name = v_name; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_port then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__rule__http__path__backend__service__port)
               v_port
           in
           let bnd = "port", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : spec__rule__http__path__backend__service ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rule__http__path__backend__service

[@@@deriving.end]

type spec__rule__http__path__backend = {
  resource : spec__rule__http__path__backend__resource list;
      [@default []] [@yojson_drop_default ( = )]
  service : spec__rule__http__path__backend__service list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__rule__http__path__backend) -> ()

let yojson_of_spec__rule__http__path__backend =
  (function
   | { resource = v_resource; service = v_service } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_service then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__rule__http__path__backend__service)
               v_service
           in
           let bnd = "service", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_resource then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__rule__http__path__backend__resource)
               v_resource
           in
           let bnd = "resource", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__rule__http__path__backend ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rule__http__path__backend

[@@@deriving.end]

type spec__rule__http__path = {
  path : string prop option; [@option]
  path_type : string prop option; [@option]
  backend : spec__rule__http__path__backend list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__rule__http__path) -> ()

let yojson_of_spec__rule__http__path =
  (function
   | { path = v_path; path_type = v_path_type; backend = v_backend }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_backend then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_spec__rule__http__path__backend)
               v_backend
           in
           let bnd = "backend", arg in
           bnd :: bnds
       in
       let bnds =
         match v_path_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__rule__http__path -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rule__http__path

[@@@deriving.end]

type spec__rule__http = {
  path : spec__rule__http__path list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__rule__http) -> ()

let yojson_of_spec__rule__http =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_path then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__rule__http__path) v_path
           in
           let bnd = "path", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__rule__http -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rule__http

[@@@deriving.end]

type spec__rule = {
  host : string prop option; [@option]
  http : spec__rule__http list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__rule) -> ()

let yojson_of_spec__rule =
  (function
   | { host = v_host; http = v_http } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_http then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__rule__http) v_http
           in
           let bnd = "http", arg in
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
       `Assoc bnds
    : spec__rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rule

[@@@deriving.end]

type spec__tls = {
  hosts : string prop list option; [@option]
  secret_name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__tls) -> ()

let yojson_of_spec__tls =
  (function
   | { hosts = v_hosts; secret_name = v_secret_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_secret_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "secret_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_hosts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "hosts", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__tls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__tls

[@@@deriving.end]

type spec = {
  ingress_class_name : string prop option; [@option]
  default_backend : spec__default_backend list;
      [@default []] [@yojson_drop_default ( = )]
  rule : spec__rule list; [@default []] [@yojson_drop_default ( = )]
  tls : spec__tls list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       ingress_class_name = v_ingress_class_name;
       default_backend = v_default_backend;
       rule = v_rule;
       tls = v_tls;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_tls then bnds
         else
           let arg = (yojson_of_list yojson_of_spec__tls) v_tls in
           let bnd = "tls", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_rule then bnds
         else
           let arg = (yojson_of_list yojson_of_spec__rule) v_rule in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_default_backend then bnds
         else
           let arg =
             (yojson_of_list yojson_of_spec__default_backend)
               v_default_backend
           in
           let bnd = "default_backend", arg in
           bnd :: bnds
       in
       let bnds =
         match v_ingress_class_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ingress_class_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type status__load_balancer__ingress = {
  hostname : string prop;
  ip : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__load_balancer__ingress) -> ()

let yojson_of_status__load_balancer__ingress =
  (function
   | { hostname = v_hostname; ip = v_ip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_hostname in
         ("hostname", arg) :: bnds
       in
       `Assoc bnds
    : status__load_balancer__ingress ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__load_balancer__ingress

[@@@deriving.end]

type status__load_balancer = {
  ingress : status__load_balancer__ingress list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__load_balancer) -> ()

let yojson_of_status__load_balancer =
  (function
   | { ingress = v_ingress } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_ingress then bnds
         else
           let arg =
             (yojson_of_list yojson_of_status__load_balancer__ingress)
               v_ingress
           in
           let bnd = "ingress", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : status__load_balancer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__load_balancer

[@@@deriving.end]

type status = {
  load_balancer : status__load_balancer list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | { load_balancer = v_load_balancer } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_load_balancer then bnds
         else
           let arg =
             (yojson_of_list yojson_of_status__load_balancer)
               v_load_balancer
           in
           let bnd = "load_balancer", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type kubernetes_ingress_v1 = {
  id : string prop option; [@option]
  wait_for_load_balancer : bool prop option; [@option]
  metadata : metadata list;
      [@default []] [@yojson_drop_default ( = )]
  spec : spec list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_ingress_v1) -> ()

let yojson_of_kubernetes_ingress_v1 =
  (function
   | {
       id = v_id;
       wait_for_load_balancer = v_wait_for_load_balancer;
       metadata = v_metadata;
       spec = v_spec;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if [] = v_spec then bnds
         else
           let arg = (yojson_of_list yojson_of_spec) v_spec in
           let bnd = "spec", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_metadata then bnds
         else
           let arg =
             (yojson_of_list yojson_of_metadata) v_metadata
           in
           let bnd = "metadata", arg in
           bnd :: bnds
       in
       let bnds =
         match v_wait_for_load_balancer with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "wait_for_load_balancer", arg in
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
       `Assoc bnds
    : kubernetes_ingress_v1 -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_ingress_v1

[@@@deriving.end]

let metadata ?annotations ?generate_name ?labels ?name ?namespace ()
    : metadata =
  { annotations; generate_name; labels; name; namespace }

let spec__default_backend__resource ~api_group ~kind ~name () :
    spec__default_backend__resource =
  { api_group; kind; name }

let spec__default_backend__service__port ?name ?number () :
    spec__default_backend__service__port =
  { name; number }

let spec__default_backend__service ~name ~port () :
    spec__default_backend__service =
  { name; port }

let spec__default_backend ?(resource = []) ?(service = []) () :
    spec__default_backend =
  { resource; service }

let spec__rule__http__path__backend__resource ~api_group ~kind ~name
    () : spec__rule__http__path__backend__resource =
  { api_group; kind; name }

let spec__rule__http__path__backend__service__port ?name ?number () :
    spec__rule__http__path__backend__service__port =
  { name; number }

let spec__rule__http__path__backend__service ~name ~port () :
    spec__rule__http__path__backend__service =
  { name; port }

let spec__rule__http__path__backend ?(resource = []) ?(service = [])
    () : spec__rule__http__path__backend =
  { resource; service }

let spec__rule__http__path ?path ?path_type ?(backend = []) () :
    spec__rule__http__path =
  { path; path_type; backend }

let spec__rule__http ~path () : spec__rule__http = { path }
let spec__rule ?host ?(http = []) () : spec__rule = { host; http }

let spec__tls ?hosts ?secret_name () : spec__tls =
  { hosts; secret_name }

let spec ?ingress_class_name ?(default_backend = []) ?(rule = [])
    ?(tls = []) () : spec =
  { ingress_class_name; default_backend; rule; tls }

let timeouts ?create ?delete () : timeouts = { create; delete }

let kubernetes_ingress_v1 ?id ?wait_for_load_balancer ?timeouts
    ~metadata ~spec () : kubernetes_ingress_v1 =
  { id; wait_for_load_balancer; metadata; spec; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  status : status list prop;
  wait_for_load_balancer : bool prop;
}

let make ?id ?wait_for_load_balancer ?timeouts ~metadata ~spec __id =
  let __type = "kubernetes_ingress_v1" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       status = Prop.computed __type __id "status";
       wait_for_load_balancer =
         Prop.computed __type __id "wait_for_load_balancer";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_ingress_v1
        (kubernetes_ingress_v1 ?id ?wait_for_load_balancer ?timeouts
           ~metadata ~spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?wait_for_load_balancer ?timeouts
    ~metadata ~spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?wait_for_load_balancer ?timeouts ~metadata ~spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

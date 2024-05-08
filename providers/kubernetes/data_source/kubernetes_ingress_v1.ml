(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type metadata = {
  annotations : (string * string prop) list option; [@option]
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

type spec__tls = {
  hosts : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  secret_name : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_secret_name in
         ("secret_name", arg) :: bnds
       in
       let bnds =
         if [] = v_hosts then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_hosts
           in
           let bnd = "hosts", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : spec__tls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__tls

[@@@deriving.end]

type spec__rule__http__path__backend__service__port = {
  name : string prop;
  number : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_number in
         ("number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
  backend : spec__rule__http__path__backend list;
      [@default []] [@yojson_drop_default ( = )]
  path : string prop;
  path_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__rule__http__path) -> ()

let yojson_of_spec__rule__http__path =
  (function
   | { backend = v_backend; path = v_path; path_type = v_path_type }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path_type in
         ("path_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
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
  host : string prop;
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
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : spec__rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rule

[@@@deriving.end]

type spec__default_backend__service__port = {
  name : string prop;
  number : float prop;
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
         let arg = yojson_of_prop yojson_of_float v_number in
         ("number", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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

type spec = {
  default_backend : spec__default_backend list;
      [@default []] [@yojson_drop_default ( = )]
  ingress_class_name : string prop;
  rule : spec__rule list; [@default []] [@yojson_drop_default ( = )]
  tls : spec__tls list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       default_backend = v_default_backend;
       ingress_class_name = v_ingress_class_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_ingress_class_name
         in
         ("ingress_class_name", arg) :: bnds
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
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

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
  metadata : metadata list; [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_ingress_v1) -> ()

let yojson_of_kubernetes_ingress_v1 =
  (function
   | { id = v_id; metadata = v_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

let metadata ?annotations ?labels ?name ?namespace () : metadata =
  { annotations; labels; name; namespace }

let kubernetes_ingress_v1 ?id ~metadata () : kubernetes_ingress_v1 =
  { id; metadata }

type t = {
  tf_name : string;
  id : string prop;
  spec : spec list prop;
  status : status list prop;
}

let make ?id ~metadata __id =
  let __type = "kubernetes_ingress_v1" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       spec = Prop.computed __type __id "spec";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_kubernetes_ingress_v1
        (kubernetes_ingress_v1 ?id ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

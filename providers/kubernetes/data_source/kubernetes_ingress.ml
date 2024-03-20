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
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_hosts
         in
         ("hosts", arg) :: bnds
       in
       `Assoc bnds
    : spec__tls -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__tls

[@@@deriving.end]

type spec__rule__http__path__backend = {
  service_name : string prop;
  service_port : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__rule__http__path__backend) -> ()

let yojson_of_spec__rule__http__path__backend =
  (function
   | { service_name = v_service_name; service_port = v_service_port }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_port in
         ("service_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__rule__http__path__backend ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rule__http__path__backend

[@@@deriving.end]

type spec__rule__http__path = {
  backend : spec__rule__http__path__backend list;
  path : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__rule__http__path) -> ()

let yojson_of_spec__rule__http__path =
  (function
   | { backend = v_backend; path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__rule__http__path__backend
             v_backend
         in
         ("backend", arg) :: bnds
       in
       `Assoc bnds
    : spec__rule__http__path -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rule__http__path

[@@@deriving.end]

type spec__rule__http = { path : spec__rule__http__path list }
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__rule__http) -> ()

let yojson_of_spec__rule__http =
  (function
   | { path = v_path } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__rule__http__path v_path
         in
         ("path", arg) :: bnds
       in
       `Assoc bnds
    : spec__rule__http -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rule__http

[@@@deriving.end]

type spec__rule = {
  host : string prop;
  http : spec__rule__http list;
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
         let arg =
           yojson_of_list yojson_of_spec__rule__http v_http
         in
         ("http", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_host in
         ("host", arg) :: bnds
       in
       `Assoc bnds
    : spec__rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__rule

[@@@deriving.end]

type spec__backend = {
  service_name : string prop;
  service_port : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__backend) -> ()

let yojson_of_spec__backend =
  (function
   | { service_name = v_service_name; service_port = v_service_port }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_port in
         ("service_port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service_name in
         ("service_name", arg) :: bnds
       in
       `Assoc bnds
    : spec__backend -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__backend

[@@@deriving.end]

type spec = {
  backend : spec__backend list;
  ingress_class_name : string prop;
  rule : spec__rule list;
  tls : spec__tls list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       backend = v_backend;
       ingress_class_name = v_ingress_class_name;
       rule = v_rule;
       tls = v_tls;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec__tls v_tls in
         ("tls", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec__rule v_rule in
         ("rule", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ingress_class_name
         in
         ("ingress_class_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__backend v_backend
         in
         ("backend", arg) :: bnds
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
         let arg =
           yojson_of_list yojson_of_status__load_balancer__ingress
             v_ingress
         in
         ("ingress", arg) :: bnds
       in
       `Assoc bnds
    : status__load_balancer -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__load_balancer

[@@@deriving.end]

type status = { load_balancer : status__load_balancer list }
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | { load_balancer = v_load_balancer } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_status__load_balancer
             v_load_balancer
         in
         ("load_balancer", arg) :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type kubernetes_ingress = {
  id : string prop option; [@option]
  metadata : metadata list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubernetes_ingress) -> ()

let yojson_of_kubernetes_ingress =
  (function
   | { id = v_id; metadata = v_metadata } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_metadata v_metadata in
         ("metadata", arg) :: bnds
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
    : kubernetes_ingress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubernetes_ingress

[@@@deriving.end]

let metadata ?annotations ?labels ?name ?namespace () : metadata =
  { annotations; labels; name; namespace }

let kubernetes_ingress ?id ~metadata () : kubernetes_ingress =
  { id; metadata }

type t = {
  id : string prop;
  spec : spec list prop;
  status : status list prop;
}

let make ?id ~metadata __id =
  let __type = "kubernetes_ingress" in
  let __attrs =
    ({
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
      yojson_of_kubernetes_ingress
        (kubernetes_ingress ?id ~metadata ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~metadata __id =
  let (r : _ Tf_core.resource) = make ?id ~metadata __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

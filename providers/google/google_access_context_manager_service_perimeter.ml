(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type spec__egress_policies__egress_from__sources = {
  access_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__egress_policies__egress_from__sources) -> ()

let yojson_of_spec__egress_policies__egress_from__sources =
  (function
   | { access_level = v_access_level } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_access_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__egress_policies__egress_from__sources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__egress_policies__egress_from__sources

[@@@deriving.end]

type spec__egress_policies__egress_from = {
  identities : string prop list option; [@option]
  identity_type : string prop option; [@option]
  source_restriction : string prop option; [@option]
  sources : spec__egress_policies__egress_from__sources list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__egress_policies__egress_from) -> ()

let yojson_of_spec__egress_policies__egress_from =
  (function
   | {
       identities = v_identities;
       identity_type = v_identity_type;
       source_restriction = v_source_restriction;
       sources = v_sources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__egress_policies__egress_from__sources
             v_sources
         in
         ("sources", arg) :: bnds
       in
       let bnds =
         match v_source_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identities", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__egress_policies__egress_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__egress_policies__egress_from

[@@@deriving.end]

type spec__egress_policies__egress_to__operations__method_selectors = {
  method_ : string prop option; [@option] [@key "method"]
  permission : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__egress_policies__egress_to__operations__method_selectors) ->
  ()

let yojson_of_spec__egress_policies__egress_to__operations__method_selectors
    =
  (function
   | { method_ = v_method_; permission = v_permission } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_permission with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "permission", arg in
             bnd :: bnds
       in
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__egress_policies__egress_to__operations__method_selectors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__egress_policies__egress_to__operations__method_selectors

[@@@deriving.end]

type spec__egress_policies__egress_to__operations = {
  service_name : string prop option; [@option]
  method_selectors :
    spec__egress_policies__egress_to__operations__method_selectors
    list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__egress_policies__egress_to__operations) -> ()

let yojson_of_spec__egress_policies__egress_to__operations =
  (function
   | {
       service_name = v_service_name;
       method_selectors = v_method_selectors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__egress_policies__egress_to__operations__method_selectors
             v_method_selectors
         in
         ("method_selectors", arg) :: bnds
       in
       let bnds =
         match v_service_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__egress_policies__egress_to__operations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__egress_policies__egress_to__operations

[@@@deriving.end]

type spec__egress_policies__egress_to = {
  external_resources : string prop list option; [@option]
  resources : string prop list option; [@option]
  operations : spec__egress_policies__egress_to__operations list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__egress_policies__egress_to) -> ()

let yojson_of_spec__egress_policies__egress_to =
  (function
   | {
       external_resources = v_external_resources;
       resources = v_resources;
       operations = v_operations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__egress_policies__egress_to__operations
             v_operations
         in
         ("operations", arg) :: bnds
       in
       let bnds =
         match v_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resources", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "external_resources", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__egress_policies__egress_to ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__egress_policies__egress_to

[@@@deriving.end]

type spec__egress_policies = {
  egress_from : spec__egress_policies__egress_from list;
  egress_to : spec__egress_policies__egress_to list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__egress_policies) -> ()

let yojson_of_spec__egress_policies =
  (function
   | { egress_from = v_egress_from; egress_to = v_egress_to } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__egress_policies__egress_to
             v_egress_to
         in
         ("egress_to", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__egress_policies__egress_from
             v_egress_from
         in
         ("egress_from", arg) :: bnds
       in
       `Assoc bnds
    : spec__egress_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__egress_policies

[@@@deriving.end]

type spec__ingress_policies__ingress_from__sources = {
  access_level : string prop option; [@option]
  resource : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress_policies__ingress_from__sources) -> ()

let yojson_of_spec__ingress_policies__ingress_from__sources =
  (function
   | { access_level = v_access_level; resource = v_resource } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress_policies__ingress_from__sources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress_policies__ingress_from__sources

[@@@deriving.end]

type spec__ingress_policies__ingress_from = {
  identities : string prop list option; [@option]
  identity_type : string prop option; [@option]
  sources : spec__ingress_policies__ingress_from__sources list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress_policies__ingress_from) -> ()

let yojson_of_spec__ingress_policies__ingress_from =
  (function
   | {
       identities = v_identities;
       identity_type = v_identity_type;
       sources = v_sources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__ingress_policies__ingress_from__sources
             v_sources
         in
         ("sources", arg) :: bnds
       in
       let bnds =
         match v_identity_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identities", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress_policies__ingress_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress_policies__ingress_from

[@@@deriving.end]

type spec__ingress_policies__ingress_to__operations__method_selectors = {
  method_ : string prop option; [@option] [@key "method"]
  permission : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       spec__ingress_policies__ingress_to__operations__method_selectors) ->
  ()

let yojson_of_spec__ingress_policies__ingress_to__operations__method_selectors
    =
  (function
   | { method_ = v_method_; permission = v_permission } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_permission with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "permission", arg in
             bnd :: bnds
       in
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress_policies__ingress_to__operations__method_selectors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_spec__ingress_policies__ingress_to__operations__method_selectors

[@@@deriving.end]

type spec__ingress_policies__ingress_to__operations = {
  service_name : string prop option; [@option]
  method_selectors :
    spec__ingress_policies__ingress_to__operations__method_selectors
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : spec__ingress_policies__ingress_to__operations) -> ()

let yojson_of_spec__ingress_policies__ingress_to__operations =
  (function
   | {
       service_name = v_service_name;
       method_selectors = v_method_selectors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__ingress_policies__ingress_to__operations__method_selectors
             v_method_selectors
         in
         ("method_selectors", arg) :: bnds
       in
       let bnds =
         match v_service_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress_policies__ingress_to__operations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress_policies__ingress_to__operations

[@@@deriving.end]

type spec__ingress_policies__ingress_to = {
  resources : string prop list option; [@option]
  operations : spec__ingress_policies__ingress_to__operations list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress_policies__ingress_to) -> ()

let yojson_of_spec__ingress_policies__ingress_to =
  (function
   | { resources = v_resources; operations = v_operations } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__ingress_policies__ingress_to__operations
             v_operations
         in
         ("operations", arg) :: bnds
       in
       let bnds =
         match v_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resources", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__ingress_policies__ingress_to ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress_policies__ingress_to

[@@@deriving.end]

type spec__ingress_policies = {
  ingress_from : spec__ingress_policies__ingress_from list;
  ingress_to : spec__ingress_policies__ingress_to list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__ingress_policies) -> ()

let yojson_of_spec__ingress_policies =
  (function
   | { ingress_from = v_ingress_from; ingress_to = v_ingress_to } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__ingress_policies__ingress_to
             v_ingress_to
         in
         ("ingress_to", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_spec__ingress_policies__ingress_from
             v_ingress_from
         in
         ("ingress_from", arg) :: bnds
       in
       `Assoc bnds
    : spec__ingress_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__ingress_policies

[@@@deriving.end]

type spec__vpc_accessible_services = {
  allowed_services : string prop list option; [@option]
  enable_restriction : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec__vpc_accessible_services) -> ()

let yojson_of_spec__vpc_accessible_services =
  (function
   | {
       allowed_services = v_allowed_services;
       enable_restriction = v_enable_restriction;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enable_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_services with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_services", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec__vpc_accessible_services ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec__vpc_accessible_services

[@@@deriving.end]

type spec = {
  access_levels : string prop list option; [@option]
  resources : string prop list option; [@option]
  restricted_services : string prop list option; [@option]
  egress_policies : spec__egress_policies list;
  ingress_policies : spec__ingress_policies list;
  vpc_accessible_services : spec__vpc_accessible_services list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : spec) -> ()

let yojson_of_spec =
  (function
   | {
       access_levels = v_access_levels;
       resources = v_resources;
       restricted_services = v_restricted_services;
       egress_policies = v_egress_policies;
       ingress_policies = v_ingress_policies;
       vpc_accessible_services = v_vpc_accessible_services;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__vpc_accessible_services
             v_vpc_accessible_services
         in
         ("vpc_accessible_services", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__ingress_policies
             v_ingress_policies
         in
         ("ingress_policies", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_spec__egress_policies
             v_egress_policies
         in
         ("egress_policies", arg) :: bnds
       in
       let bnds =
         match v_restricted_services with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "restricted_services", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resources", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_levels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "access_levels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_spec

[@@@deriving.end]

type status__egress_policies__egress_from__sources = {
  access_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__egress_policies__egress_from__sources) -> ()

let yojson_of_status__egress_policies__egress_from__sources =
  (function
   | { access_level = v_access_level } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_access_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : status__egress_policies__egress_from__sources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__egress_policies__egress_from__sources

[@@@deriving.end]

type status__egress_policies__egress_from = {
  identities : string prop list option; [@option]
  identity_type : string prop option; [@option]
  source_restriction : string prop option; [@option]
  sources : status__egress_policies__egress_from__sources list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__egress_policies__egress_from) -> ()

let yojson_of_status__egress_policies__egress_from =
  (function
   | {
       identities = v_identities;
       identity_type = v_identity_type;
       source_restriction = v_source_restriction;
       sources = v_sources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_status__egress_policies__egress_from__sources
             v_sources
         in
         ("sources", arg) :: bnds
       in
       let bnds =
         match v_source_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identity_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identities", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : status__egress_policies__egress_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__egress_policies__egress_from

[@@@deriving.end]

type status__egress_policies__egress_to__operations__method_selectors = {
  method_ : string prop option; [@option] [@key "method"]
  permission : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       status__egress_policies__egress_to__operations__method_selectors) ->
  ()

let yojson_of_status__egress_policies__egress_to__operations__method_selectors
    =
  (function
   | { method_ = v_method_; permission = v_permission } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_permission with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "permission", arg in
             bnd :: bnds
       in
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : status__egress_policies__egress_to__operations__method_selectors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_status__egress_policies__egress_to__operations__method_selectors

[@@@deriving.end]

type status__egress_policies__egress_to__operations = {
  service_name : string prop option; [@option]
  method_selectors :
    status__egress_policies__egress_to__operations__method_selectors
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : status__egress_policies__egress_to__operations) -> ()

let yojson_of_status__egress_policies__egress_to__operations =
  (function
   | {
       service_name = v_service_name;
       method_selectors = v_method_selectors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_status__egress_policies__egress_to__operations__method_selectors
             v_method_selectors
         in
         ("method_selectors", arg) :: bnds
       in
       let bnds =
         match v_service_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : status__egress_policies__egress_to__operations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__egress_policies__egress_to__operations

[@@@deriving.end]

type status__egress_policies__egress_to = {
  external_resources : string prop list option; [@option]
  resources : string prop list option; [@option]
  operations : status__egress_policies__egress_to__operations list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__egress_policies__egress_to) -> ()

let yojson_of_status__egress_policies__egress_to =
  (function
   | {
       external_resources = v_external_resources;
       resources = v_resources;
       operations = v_operations;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_status__egress_policies__egress_to__operations
             v_operations
         in
         ("operations", arg) :: bnds
       in
       let bnds =
         match v_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resources", arg in
             bnd :: bnds
       in
       let bnds =
         match v_external_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "external_resources", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : status__egress_policies__egress_to ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__egress_policies__egress_to

[@@@deriving.end]

type status__egress_policies = {
  egress_from : status__egress_policies__egress_from list;
  egress_to : status__egress_policies__egress_to list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__egress_policies) -> ()

let yojson_of_status__egress_policies =
  (function
   | { egress_from = v_egress_from; egress_to = v_egress_to } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_status__egress_policies__egress_to v_egress_to
         in
         ("egress_to", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_status__egress_policies__egress_from
             v_egress_from
         in
         ("egress_from", arg) :: bnds
       in
       `Assoc bnds
    : status__egress_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__egress_policies

[@@@deriving.end]

type status__ingress_policies__ingress_from__sources = {
  access_level : string prop option; [@option]
  resource : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : status__ingress_policies__ingress_from__sources) -> ()

let yojson_of_status__ingress_policies__ingress_from__sources =
  (function
   | { access_level = v_access_level; resource = v_resource } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_resource with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "resource", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : status__ingress_policies__ingress_from__sources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__ingress_policies__ingress_from__sources

[@@@deriving.end]

type status__ingress_policies__ingress_from = {
  identities : string prop list option; [@option]
  identity_type : string prop option; [@option]
  sources : status__ingress_policies__ingress_from__sources list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__ingress_policies__ingress_from) -> ()

let yojson_of_status__ingress_policies__ingress_from =
  (function
   | {
       identities = v_identities;
       identity_type = v_identity_type;
       sources = v_sources;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_status__ingress_policies__ingress_from__sources
             v_sources
         in
         ("sources", arg) :: bnds
       in
       let bnds =
         match v_identity_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_identities with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "identities", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : status__ingress_policies__ingress_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__ingress_policies__ingress_from

[@@@deriving.end]

type status__ingress_policies__ingress_to__operations__method_selectors = {
  method_ : string prop option; [@option] [@key "method"]
  permission : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       status__ingress_policies__ingress_to__operations__method_selectors) ->
  ()

let yojson_of_status__ingress_policies__ingress_to__operations__method_selectors
    =
  (function
   | { method_ = v_method_; permission = v_permission } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_permission with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "permission", arg in
             bnd :: bnds
       in
       let bnds =
         match v_method_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : status__ingress_policies__ingress_to__operations__method_selectors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_status__ingress_policies__ingress_to__operations__method_selectors

[@@@deriving.end]

type status__ingress_policies__ingress_to__operations = {
  service_name : string prop option; [@option]
  method_selectors :
    status__ingress_policies__ingress_to__operations__method_selectors
    list;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : status__ingress_policies__ingress_to__operations) -> ()

let yojson_of_status__ingress_policies__ingress_to__operations =
  (function
   | {
       service_name = v_service_name;
       method_selectors = v_method_selectors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_status__ingress_policies__ingress_to__operations__method_selectors
             v_method_selectors
         in
         ("method_selectors", arg) :: bnds
       in
       let bnds =
         match v_service_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : status__ingress_policies__ingress_to__operations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__ingress_policies__ingress_to__operations

[@@@deriving.end]

type status__ingress_policies__ingress_to = {
  resources : string prop list option; [@option]
  operations : status__ingress_policies__ingress_to__operations list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__ingress_policies__ingress_to) -> ()

let yojson_of_status__ingress_policies__ingress_to =
  (function
   | { resources = v_resources; operations = v_operations } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_status__ingress_policies__ingress_to__operations
             v_operations
         in
         ("operations", arg) :: bnds
       in
       let bnds =
         match v_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resources", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : status__ingress_policies__ingress_to ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__ingress_policies__ingress_to

[@@@deriving.end]

type status__ingress_policies = {
  ingress_from : status__ingress_policies__ingress_from list;
  ingress_to : status__ingress_policies__ingress_to list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__ingress_policies) -> ()

let yojson_of_status__ingress_policies =
  (function
   | { ingress_from = v_ingress_from; ingress_to = v_ingress_to } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_status__ingress_policies__ingress_to
             v_ingress_to
         in
         ("ingress_to", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_status__ingress_policies__ingress_from
             v_ingress_from
         in
         ("ingress_from", arg) :: bnds
       in
       `Assoc bnds
    : status__ingress_policies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__ingress_policies

[@@@deriving.end]

type status__vpc_accessible_services = {
  allowed_services : string prop list option; [@option]
  enable_restriction : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status__vpc_accessible_services) -> ()

let yojson_of_status__vpc_accessible_services =
  (function
   | {
       allowed_services = v_allowed_services;
       enable_restriction = v_enable_restriction;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enable_restriction with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_restriction", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_services with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_services", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : status__vpc_accessible_services ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status__vpc_accessible_services

[@@@deriving.end]

type status = {
  access_levels : string prop list option; [@option]
  resources : string prop list option; [@option]
  restricted_services : string prop list option; [@option]
  egress_policies : status__egress_policies list;
  ingress_policies : status__ingress_policies list;
  vpc_accessible_services : status__vpc_accessible_services list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | {
       access_levels = v_access_levels;
       resources = v_resources;
       restricted_services = v_restricted_services;
       egress_policies = v_egress_policies;
       ingress_policies = v_ingress_policies;
       vpc_accessible_services = v_vpc_accessible_services;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_status__vpc_accessible_services
             v_vpc_accessible_services
         in
         ("vpc_accessible_services", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_status__ingress_policies
             v_ingress_policies
         in
         ("ingress_policies", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_status__egress_policies
             v_egress_policies
         in
         ("egress_policies", arg) :: bnds
       in
       let bnds =
         match v_restricted_services with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "restricted_services", arg in
             bnd :: bnds
       in
       let bnds =
         match v_resources with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "resources", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_levels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "access_levels", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
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

type google_access_context_manager_service_perimeter = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  parent : string prop;
  perimeter_type : string prop option; [@option]
  title : string prop;
  use_explicit_dry_run_spec : bool prop option; [@option]
  spec : spec list;
  status : status list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_access_context_manager_service_perimeter) -> ()

let yojson_of_google_access_context_manager_service_perimeter =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       parent = v_parent;
       perimeter_type = v_perimeter_type;
       title = v_title;
       use_explicit_dry_run_spec = v_use_explicit_dry_run_spec;
       spec = v_spec;
       status = v_status;
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
         let arg = yojson_of_list yojson_of_status v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_spec v_spec in
         ("spec", arg) :: bnds
       in
       let bnds =
         match v_use_explicit_dry_run_spec with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_explicit_dry_run_spec", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
       in
       let bnds =
         match v_perimeter_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "perimeter_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_access_context_manager_service_perimeter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_access_context_manager_service_perimeter

[@@@deriving.end]

let spec__egress_policies__egress_from__sources ?access_level () :
    spec__egress_policies__egress_from__sources =
  { access_level }

let spec__egress_policies__egress_from ?identities ?identity_type
    ?source_restriction ?(sources = []) () :
    spec__egress_policies__egress_from =
  { identities; identity_type; source_restriction; sources }

let spec__egress_policies__egress_to__operations__method_selectors
    ?method_ ?permission () :
    spec__egress_policies__egress_to__operations__method_selectors =
  { method_; permission }

let spec__egress_policies__egress_to__operations ?service_name
    ?(method_selectors = []) () :
    spec__egress_policies__egress_to__operations =
  { service_name; method_selectors }

let spec__egress_policies__egress_to ?external_resources ?resources
    ?(operations = []) () : spec__egress_policies__egress_to =
  { external_resources; resources; operations }

let spec__egress_policies ?(egress_from = []) ?(egress_to = []) () :
    spec__egress_policies =
  { egress_from; egress_to }

let spec__ingress_policies__ingress_from__sources ?access_level
    ?resource () : spec__ingress_policies__ingress_from__sources =
  { access_level; resource }

let spec__ingress_policies__ingress_from ?identities ?identity_type
    ?(sources = []) () : spec__ingress_policies__ingress_from =
  { identities; identity_type; sources }

let spec__ingress_policies__ingress_to__operations__method_selectors
    ?method_ ?permission () :
    spec__ingress_policies__ingress_to__operations__method_selectors
    =
  { method_; permission }

let spec__ingress_policies__ingress_to__operations ?service_name
    ?(method_selectors = []) () :
    spec__ingress_policies__ingress_to__operations =
  { service_name; method_selectors }

let spec__ingress_policies__ingress_to ?resources ?(operations = [])
    () : spec__ingress_policies__ingress_to =
  { resources; operations }

let spec__ingress_policies ?(ingress_from = []) ?(ingress_to = []) ()
    : spec__ingress_policies =
  { ingress_from; ingress_to }

let spec__vpc_accessible_services ?allowed_services
    ?enable_restriction () : spec__vpc_accessible_services =
  { allowed_services; enable_restriction }

let spec ?access_levels ?resources ?restricted_services
    ?(egress_policies = []) ?(ingress_policies = [])
    ?(vpc_accessible_services = []) () : spec =
  {
    access_levels;
    resources;
    restricted_services;
    egress_policies;
    ingress_policies;
    vpc_accessible_services;
  }

let status__egress_policies__egress_from__sources ?access_level () :
    status__egress_policies__egress_from__sources =
  { access_level }

let status__egress_policies__egress_from ?identities ?identity_type
    ?source_restriction ?(sources = []) () :
    status__egress_policies__egress_from =
  { identities; identity_type; source_restriction; sources }

let status__egress_policies__egress_to__operations__method_selectors
    ?method_ ?permission () :
    status__egress_policies__egress_to__operations__method_selectors
    =
  { method_; permission }

let status__egress_policies__egress_to__operations ?service_name
    ?(method_selectors = []) () :
    status__egress_policies__egress_to__operations =
  { service_name; method_selectors }

let status__egress_policies__egress_to ?external_resources ?resources
    ?(operations = []) () : status__egress_policies__egress_to =
  { external_resources; resources; operations }

let status__egress_policies ?(egress_from = []) ?(egress_to = []) ()
    : status__egress_policies =
  { egress_from; egress_to }

let status__ingress_policies__ingress_from__sources ?access_level
    ?resource () : status__ingress_policies__ingress_from__sources =
  { access_level; resource }

let status__ingress_policies__ingress_from ?identities ?identity_type
    ?(sources = []) () : status__ingress_policies__ingress_from =
  { identities; identity_type; sources }

let status__ingress_policies__ingress_to__operations__method_selectors
    ?method_ ?permission () :
    status__ingress_policies__ingress_to__operations__method_selectors
    =
  { method_; permission }

let status__ingress_policies__ingress_to__operations ?service_name
    ?(method_selectors = []) () :
    status__ingress_policies__ingress_to__operations =
  { service_name; method_selectors }

let status__ingress_policies__ingress_to ?resources
    ?(operations = []) () : status__ingress_policies__ingress_to =
  { resources; operations }

let status__ingress_policies ?(ingress_from = []) ?(ingress_to = [])
    () : status__ingress_policies =
  { ingress_from; ingress_to }

let status__vpc_accessible_services ?allowed_services
    ?enable_restriction () : status__vpc_accessible_services =
  { allowed_services; enable_restriction }

let status ?access_levels ?resources ?restricted_services
    ?(egress_policies = []) ?(ingress_policies = [])
    ?(vpc_accessible_services = []) () : status =
  {
    access_levels;
    resources;
    restricted_services;
    egress_policies;
    ingress_policies;
    vpc_accessible_services;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_access_context_manager_service_perimeter ?description ?id
    ?perimeter_type ?use_explicit_dry_run_spec ?(spec = [])
    ?(status = []) ?timeouts ~name ~parent ~title () :
    google_access_context_manager_service_perimeter =
  {
    description;
    id;
    name;
    parent;
    perimeter_type;
    title;
    use_explicit_dry_run_spec;
    spec;
    status;
    timeouts;
  }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
  perimeter_type : string prop;
  title : string prop;
  update_time : string prop;
  use_explicit_dry_run_spec : bool prop;
}

let make ?description ?id ?perimeter_type ?use_explicit_dry_run_spec
    ?(spec = []) ?(status = []) ?timeouts ~name ~parent ~title __id =
  let __type = "google_access_context_manager_service_perimeter" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
       perimeter_type = Prop.computed __type __id "perimeter_type";
       title = Prop.computed __type __id "title";
       update_time = Prop.computed __type __id "update_time";
       use_explicit_dry_run_spec =
         Prop.computed __type __id "use_explicit_dry_run_spec";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_service_perimeter
        (google_access_context_manager_service_perimeter ?description
           ?id ?perimeter_type ?use_explicit_dry_run_spec ~spec
           ~status ?timeouts ~name ~parent ~title ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?perimeter_type
    ?use_explicit_dry_run_spec ?(spec = []) ?(status = []) ?timeouts
    ~name ~parent ~title __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?perimeter_type ?use_explicit_dry_run_spec
      ~spec ~status ?timeouts ~name ~parent ~title __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

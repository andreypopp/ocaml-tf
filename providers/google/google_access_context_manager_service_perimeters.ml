(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type service_perimeters__spec__egress_policies__egress_from__sources = {
  access_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_perimeters__spec__egress_policies__egress_from__sources) ->
  ()

let yojson_of_service_perimeters__spec__egress_policies__egress_from__sources
    =
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
    : service_perimeters__spec__egress_policies__egress_from__sources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__spec__egress_policies__egress_from__sources

[@@@deriving.end]

type service_perimeters__spec__egress_policies__egress_from = {
  identities : string prop list option; [@option]
  identity_type : string prop option; [@option]
  source_restriction : string prop option; [@option]
  sources :
    service_perimeters__spec__egress_policies__egress_from__sources
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : service_perimeters__spec__egress_policies__egress_from) ->
  ()

let yojson_of_service_perimeters__spec__egress_policies__egress_from
    =
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
         if [] = v_sources then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__spec__egress_policies__egress_from__sources)
               v_sources
           in
           let bnd = "sources", arg in
           bnd :: bnds
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
    : service_perimeters__spec__egress_policies__egress_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__spec__egress_policies__egress_from

[@@@deriving.end]

type service_perimeters__spec__egress_policies__egress_to__operations__method_selectors = {
  method_ : string prop option; [@option] [@key "method"]
  permission : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_perimeters__spec__egress_policies__egress_to__operations__method_selectors) ->
  ()

let yojson_of_service_perimeters__spec__egress_policies__egress_to__operations__method_selectors
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
    : service_perimeters__spec__egress_policies__egress_to__operations__method_selectors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__spec__egress_policies__egress_to__operations__method_selectors

[@@@deriving.end]

type service_perimeters__spec__egress_policies__egress_to__operations = {
  service_name : string prop option; [@option]
  method_selectors :
    service_perimeters__spec__egress_policies__egress_to__operations__method_selectors
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_perimeters__spec__egress_policies__egress_to__operations) ->
  ()

let yojson_of_service_perimeters__spec__egress_policies__egress_to__operations
    =
  (function
   | {
       service_name = v_service_name;
       method_selectors = v_method_selectors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_method_selectors then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__spec__egress_policies__egress_to__operations__method_selectors)
               v_method_selectors
           in
           let bnd = "method_selectors", arg in
           bnd :: bnds
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
    : service_perimeters__spec__egress_policies__egress_to__operations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__spec__egress_policies__egress_to__operations

[@@@deriving.end]

type service_perimeters__spec__egress_policies__egress_to = {
  external_resources : string prop list option; [@option]
  resources : string prop list option; [@option]
  operations :
    service_perimeters__spec__egress_policies__egress_to__operations
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : service_perimeters__spec__egress_policies__egress_to) -> ()

let yojson_of_service_perimeters__spec__egress_policies__egress_to =
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
         if [] = v_operations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__spec__egress_policies__egress_to__operations)
               v_operations
           in
           let bnd = "operations", arg in
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
    : service_perimeters__spec__egress_policies__egress_to ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__spec__egress_policies__egress_to

[@@@deriving.end]

type service_perimeters__spec__egress_policies = {
  egress_from :
    service_perimeters__spec__egress_policies__egress_from list;
      [@default []] [@yojson_drop_default ( = )]
  egress_to :
    service_perimeters__spec__egress_policies__egress_to list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_perimeters__spec__egress_policies) -> ()

let yojson_of_service_perimeters__spec__egress_policies =
  (function
   | { egress_from = v_egress_from; egress_to = v_egress_to } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_egress_to then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__spec__egress_policies__egress_to)
               v_egress_to
           in
           let bnd = "egress_to", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_egress_from then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__spec__egress_policies__egress_from)
               v_egress_from
           in
           let bnd = "egress_from", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : service_perimeters__spec__egress_policies ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_perimeters__spec__egress_policies

[@@@deriving.end]

type service_perimeters__spec__ingress_policies__ingress_from__sources = {
  access_level : string prop option; [@option]
  resource : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_perimeters__spec__ingress_policies__ingress_from__sources) ->
  ()

let yojson_of_service_perimeters__spec__ingress_policies__ingress_from__sources
    =
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
    : service_perimeters__spec__ingress_policies__ingress_from__sources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__spec__ingress_policies__ingress_from__sources

[@@@deriving.end]

type service_perimeters__spec__ingress_policies__ingress_from = {
  identities : string prop list option; [@option]
  identity_type : string prop option; [@option]
  sources :
    service_perimeters__spec__ingress_policies__ingress_from__sources
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : service_perimeters__spec__ingress_policies__ingress_from) ->
  ()

let yojson_of_service_perimeters__spec__ingress_policies__ingress_from
    =
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
         if [] = v_sources then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__spec__ingress_policies__ingress_from__sources)
               v_sources
           in
           let bnd = "sources", arg in
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
    : service_perimeters__spec__ingress_policies__ingress_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__spec__ingress_policies__ingress_from

[@@@deriving.end]

type service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors = {
  method_ : string prop option; [@option] [@key "method"]
  permission : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors) ->
  ()

let yojson_of_service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors
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
    : service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors

[@@@deriving.end]

type service_perimeters__spec__ingress_policies__ingress_to__operations = {
  service_name : string prop option; [@option]
  method_selectors :
    service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_perimeters__spec__ingress_policies__ingress_to__operations) ->
  ()

let yojson_of_service_perimeters__spec__ingress_policies__ingress_to__operations
    =
  (function
   | {
       service_name = v_service_name;
       method_selectors = v_method_selectors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_method_selectors then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors)
               v_method_selectors
           in
           let bnd = "method_selectors", arg in
           bnd :: bnds
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
    : service_perimeters__spec__ingress_policies__ingress_to__operations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__spec__ingress_policies__ingress_to__operations

[@@@deriving.end]

type service_perimeters__spec__ingress_policies__ingress_to = {
  resources : string prop list option; [@option]
  operations :
    service_perimeters__spec__ingress_policies__ingress_to__operations
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : service_perimeters__spec__ingress_policies__ingress_to) ->
  ()

let yojson_of_service_perimeters__spec__ingress_policies__ingress_to
    =
  (function
   | { resources = v_resources; operations = v_operations } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_operations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__spec__ingress_policies__ingress_to__operations)
               v_operations
           in
           let bnd = "operations", arg in
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
       `Assoc bnds
    : service_perimeters__spec__ingress_policies__ingress_to ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__spec__ingress_policies__ingress_to

[@@@deriving.end]

type service_perimeters__spec__ingress_policies = {
  ingress_from :
    service_perimeters__spec__ingress_policies__ingress_from list;
      [@default []] [@yojson_drop_default ( = )]
  ingress_to :
    service_perimeters__spec__ingress_policies__ingress_to list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_perimeters__spec__ingress_policies) -> ()

let yojson_of_service_perimeters__spec__ingress_policies =
  (function
   | { ingress_from = v_ingress_from; ingress_to = v_ingress_to } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_ingress_to then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__spec__ingress_policies__ingress_to)
               v_ingress_to
           in
           let bnd = "ingress_to", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ingress_from then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__spec__ingress_policies__ingress_from)
               v_ingress_from
           in
           let bnd = "ingress_from", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : service_perimeters__spec__ingress_policies ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_perimeters__spec__ingress_policies

[@@@deriving.end]

type service_perimeters__spec__vpc_accessible_services = {
  allowed_services : string prop list option; [@option]
  enable_restriction : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : service_perimeters__spec__vpc_accessible_services) -> ()

let yojson_of_service_perimeters__spec__vpc_accessible_services =
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
    : service_perimeters__spec__vpc_accessible_services ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_perimeters__spec__vpc_accessible_services

[@@@deriving.end]

type service_perimeters__spec = {
  access_levels : string prop list option; [@option]
  resources : string prop list option; [@option]
  restricted_services : string prop list option; [@option]
  egress_policies : service_perimeters__spec__egress_policies list;
      [@default []] [@yojson_drop_default ( = )]
  ingress_policies : service_perimeters__spec__ingress_policies list;
      [@default []] [@yojson_drop_default ( = )]
  vpc_accessible_services :
    service_perimeters__spec__vpc_accessible_services list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_perimeters__spec) -> ()

let yojson_of_service_perimeters__spec =
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
         if [] = v_vpc_accessible_services then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__spec__vpc_accessible_services)
               v_vpc_accessible_services
           in
           let bnd = "vpc_accessible_services", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ingress_policies then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__spec__ingress_policies)
               v_ingress_policies
           in
           let bnd = "ingress_policies", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_egress_policies then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__spec__egress_policies)
               v_egress_policies
           in
           let bnd = "egress_policies", arg in
           bnd :: bnds
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
    : service_perimeters__spec -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_perimeters__spec

[@@@deriving.end]

type service_perimeters__status__egress_policies__egress_from__sources = {
  access_level : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_perimeters__status__egress_policies__egress_from__sources) ->
  ()

let yojson_of_service_perimeters__status__egress_policies__egress_from__sources
    =
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
    : service_perimeters__status__egress_policies__egress_from__sources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__status__egress_policies__egress_from__sources

[@@@deriving.end]

type service_perimeters__status__egress_policies__egress_from = {
  identities : string prop list option; [@option]
  identity_type : string prop option; [@option]
  source_restriction : string prop option; [@option]
  sources :
    service_perimeters__status__egress_policies__egress_from__sources
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : service_perimeters__status__egress_policies__egress_from) ->
  ()

let yojson_of_service_perimeters__status__egress_policies__egress_from
    =
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
         if [] = v_sources then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__status__egress_policies__egress_from__sources)
               v_sources
           in
           let bnd = "sources", arg in
           bnd :: bnds
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
    : service_perimeters__status__egress_policies__egress_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__status__egress_policies__egress_from

[@@@deriving.end]

type service_perimeters__status__egress_policies__egress_to__operations__method_selectors = {
  method_ : string prop option; [@option] [@key "method"]
  permission : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_perimeters__status__egress_policies__egress_to__operations__method_selectors) ->
  ()

let yojson_of_service_perimeters__status__egress_policies__egress_to__operations__method_selectors
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
    : service_perimeters__status__egress_policies__egress_to__operations__method_selectors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__status__egress_policies__egress_to__operations__method_selectors

[@@@deriving.end]

type service_perimeters__status__egress_policies__egress_to__operations = {
  service_name : string prop option; [@option]
  method_selectors :
    service_perimeters__status__egress_policies__egress_to__operations__method_selectors
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_perimeters__status__egress_policies__egress_to__operations) ->
  ()

let yojson_of_service_perimeters__status__egress_policies__egress_to__operations
    =
  (function
   | {
       service_name = v_service_name;
       method_selectors = v_method_selectors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_method_selectors then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__status__egress_policies__egress_to__operations__method_selectors)
               v_method_selectors
           in
           let bnd = "method_selectors", arg in
           bnd :: bnds
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
    : service_perimeters__status__egress_policies__egress_to__operations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__status__egress_policies__egress_to__operations

[@@@deriving.end]

type service_perimeters__status__egress_policies__egress_to = {
  external_resources : string prop list option; [@option]
  resources : string prop list option; [@option]
  operations :
    service_perimeters__status__egress_policies__egress_to__operations
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : service_perimeters__status__egress_policies__egress_to) ->
  ()

let yojson_of_service_perimeters__status__egress_policies__egress_to
    =
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
         if [] = v_operations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__status__egress_policies__egress_to__operations)
               v_operations
           in
           let bnd = "operations", arg in
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
    : service_perimeters__status__egress_policies__egress_to ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__status__egress_policies__egress_to

[@@@deriving.end]

type service_perimeters__status__egress_policies = {
  egress_from :
    service_perimeters__status__egress_policies__egress_from list;
      [@default []] [@yojson_drop_default ( = )]
  egress_to :
    service_perimeters__status__egress_policies__egress_to list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_perimeters__status__egress_policies) -> ()

let yojson_of_service_perimeters__status__egress_policies =
  (function
   | { egress_from = v_egress_from; egress_to = v_egress_to } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_egress_to then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__status__egress_policies__egress_to)
               v_egress_to
           in
           let bnd = "egress_to", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_egress_from then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__status__egress_policies__egress_from)
               v_egress_from
           in
           let bnd = "egress_from", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : service_perimeters__status__egress_policies ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_perimeters__status__egress_policies

[@@@deriving.end]

type service_perimeters__status__ingress_policies__ingress_from__sources = {
  access_level : string prop option; [@option]
  resource : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_perimeters__status__ingress_policies__ingress_from__sources) ->
  ()

let yojson_of_service_perimeters__status__ingress_policies__ingress_from__sources
    =
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
    : service_perimeters__status__ingress_policies__ingress_from__sources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__status__ingress_policies__ingress_from__sources

[@@@deriving.end]

type service_perimeters__status__ingress_policies__ingress_from = {
  identities : string prop list option; [@option]
  identity_type : string prop option; [@option]
  sources :
    service_perimeters__status__ingress_policies__ingress_from__sources
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : service_perimeters__status__ingress_policies__ingress_from) ->
  ()

let yojson_of_service_perimeters__status__ingress_policies__ingress_from
    =
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
         if [] = v_sources then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__status__ingress_policies__ingress_from__sources)
               v_sources
           in
           let bnd = "sources", arg in
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
    : service_perimeters__status__ingress_policies__ingress_from ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__status__ingress_policies__ingress_from

[@@@deriving.end]

type service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors = {
  method_ : string prop option; [@option] [@key "method"]
  permission : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors) ->
  ()

let yojson_of_service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors
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
    : service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors

[@@@deriving.end]

type service_perimeters__status__ingress_policies__ingress_to__operations = {
  service_name : string prop option; [@option]
  method_selectors :
    service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       service_perimeters__status__ingress_policies__ingress_to__operations) ->
  ()

let yojson_of_service_perimeters__status__ingress_policies__ingress_to__operations
    =
  (function
   | {
       service_name = v_service_name;
       method_selectors = v_method_selectors;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_method_selectors then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors)
               v_method_selectors
           in
           let bnd = "method_selectors", arg in
           bnd :: bnds
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
    : service_perimeters__status__ingress_policies__ingress_to__operations ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__status__ingress_policies__ingress_to__operations

[@@@deriving.end]

type service_perimeters__status__ingress_policies__ingress_to = {
  resources : string prop list option; [@option]
  operations :
    service_perimeters__status__ingress_policies__ingress_to__operations
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : service_perimeters__status__ingress_policies__ingress_to) ->
  ()

let yojson_of_service_perimeters__status__ingress_policies__ingress_to
    =
  (function
   | { resources = v_resources; operations = v_operations } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_operations then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__status__ingress_policies__ingress_to__operations)
               v_operations
           in
           let bnd = "operations", arg in
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
       `Assoc bnds
    : service_perimeters__status__ingress_policies__ingress_to ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_service_perimeters__status__ingress_policies__ingress_to

[@@@deriving.end]

type service_perimeters__status__ingress_policies = {
  ingress_from :
    service_perimeters__status__ingress_policies__ingress_from list;
      [@default []] [@yojson_drop_default ( = )]
  ingress_to :
    service_perimeters__status__ingress_policies__ingress_to list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_perimeters__status__ingress_policies) -> ()

let yojson_of_service_perimeters__status__ingress_policies =
  (function
   | { ingress_from = v_ingress_from; ingress_to = v_ingress_to } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_ingress_to then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__status__ingress_policies__ingress_to)
               v_ingress_to
           in
           let bnd = "ingress_to", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ingress_from then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__status__ingress_policies__ingress_from)
               v_ingress_from
           in
           let bnd = "ingress_from", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : service_perimeters__status__ingress_policies ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_perimeters__status__ingress_policies

[@@@deriving.end]

type service_perimeters__status__vpc_accessible_services = {
  allowed_services : string prop list option; [@option]
  enable_restriction : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : service_perimeters__status__vpc_accessible_services) -> ()

let yojson_of_service_perimeters__status__vpc_accessible_services =
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
    : service_perimeters__status__vpc_accessible_services ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_perimeters__status__vpc_accessible_services

[@@@deriving.end]

type service_perimeters__status = {
  access_levels : string prop list option; [@option]
  resources : string prop list option; [@option]
  restricted_services : string prop list option; [@option]
  egress_policies : service_perimeters__status__egress_policies list;
      [@default []] [@yojson_drop_default ( = )]
  ingress_policies :
    service_perimeters__status__ingress_policies list;
      [@default []] [@yojson_drop_default ( = )]
  vpc_accessible_services :
    service_perimeters__status__vpc_accessible_services list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_perimeters__status) -> ()

let yojson_of_service_perimeters__status =
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
         if [] = v_vpc_accessible_services then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__status__vpc_accessible_services)
               v_vpc_accessible_services
           in
           let bnd = "vpc_accessible_services", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_ingress_policies then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__status__ingress_policies)
               v_ingress_policies
           in
           let bnd = "ingress_policies", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_egress_policies then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_service_perimeters__status__egress_policies)
               v_egress_policies
           in
           let bnd = "egress_policies", arg in
           bnd :: bnds
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
    : service_perimeters__status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_perimeters__status

[@@@deriving.end]

type service_perimeters = {
  description : string prop option; [@option]
  name : string prop;
  perimeter_type : string prop option; [@option]
  title : string prop;
  use_explicit_dry_run_spec : bool prop option; [@option]
  spec : service_perimeters__spec list;
      [@default []] [@yojson_drop_default ( = )]
  status : service_perimeters__status list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_perimeters) -> ()

let yojson_of_service_perimeters =
  (function
   | {
       description = v_description;
       name = v_name;
       perimeter_type = v_perimeter_type;
       title = v_title;
       use_explicit_dry_run_spec = v_use_explicit_dry_run_spec;
       spec = v_spec;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_status then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_perimeters__status)
               v_status
           in
           let bnd = "status", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_spec then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_perimeters__spec)
               v_spec
           in
           let bnd = "spec", arg in
           bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : service_perimeters -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_perimeters

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

type google_access_context_manager_service_perimeters = {
  id : string prop option; [@option]
  parent : string prop;
  service_perimeters : service_perimeters list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : google_access_context_manager_service_perimeters) -> ()

let yojson_of_google_access_context_manager_service_perimeters =
  (function
   | {
       id = v_id;
       parent = v_parent;
       service_perimeters = v_service_perimeters;
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
         if [] = v_service_perimeters then bnds
         else
           let arg =
             (yojson_of_list yojson_of_service_perimeters)
               v_service_perimeters
           in
           let bnd = "service_perimeters", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
    : google_access_context_manager_service_perimeters ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_access_context_manager_service_perimeters

[@@@deriving.end]

let service_perimeters__spec__egress_policies__egress_from__sources
    ?access_level () :
    service_perimeters__spec__egress_policies__egress_from__sources =
  { access_level }

let service_perimeters__spec__egress_policies__egress_from
    ?identities ?identity_type ?source_restriction ?(sources = []) ()
    : service_perimeters__spec__egress_policies__egress_from =
  { identities; identity_type; source_restriction; sources }

let service_perimeters__spec__egress_policies__egress_to__operations__method_selectors
    ?method_ ?permission () :
    service_perimeters__spec__egress_policies__egress_to__operations__method_selectors
    =
  { method_; permission }

let service_perimeters__spec__egress_policies__egress_to__operations
    ?service_name ?(method_selectors = []) () :
    service_perimeters__spec__egress_policies__egress_to__operations
    =
  { service_name; method_selectors }

let service_perimeters__spec__egress_policies__egress_to
    ?external_resources ?resources ?(operations = []) () :
    service_perimeters__spec__egress_policies__egress_to =
  { external_resources; resources; operations }

let service_perimeters__spec__egress_policies ?(egress_from = [])
    ?(egress_to = []) () : service_perimeters__spec__egress_policies
    =
  { egress_from; egress_to }

let service_perimeters__spec__ingress_policies__ingress_from__sources
    ?access_level ?resource () :
    service_perimeters__spec__ingress_policies__ingress_from__sources
    =
  { access_level; resource }

let service_perimeters__spec__ingress_policies__ingress_from
    ?identities ?identity_type ?(sources = []) () :
    service_perimeters__spec__ingress_policies__ingress_from =
  { identities; identity_type; sources }

let service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors
    ?method_ ?permission () :
    service_perimeters__spec__ingress_policies__ingress_to__operations__method_selectors
    =
  { method_; permission }

let service_perimeters__spec__ingress_policies__ingress_to__operations
    ?service_name ?(method_selectors = []) () :
    service_perimeters__spec__ingress_policies__ingress_to__operations
    =
  { service_name; method_selectors }

let service_perimeters__spec__ingress_policies__ingress_to ?resources
    ?(operations = []) () :
    service_perimeters__spec__ingress_policies__ingress_to =
  { resources; operations }

let service_perimeters__spec__ingress_policies ?(ingress_from = [])
    ?(ingress_to = []) () :
    service_perimeters__spec__ingress_policies =
  { ingress_from; ingress_to }

let service_perimeters__spec__vpc_accessible_services
    ?allowed_services ?enable_restriction () :
    service_perimeters__spec__vpc_accessible_services =
  { allowed_services; enable_restriction }

let service_perimeters__spec ?access_levels ?resources
    ?restricted_services ?(egress_policies = [])
    ?(ingress_policies = []) ?(vpc_accessible_services = []) () :
    service_perimeters__spec =
  {
    access_levels;
    resources;
    restricted_services;
    egress_policies;
    ingress_policies;
    vpc_accessible_services;
  }

let service_perimeters__status__egress_policies__egress_from__sources
    ?access_level () :
    service_perimeters__status__egress_policies__egress_from__sources
    =
  { access_level }

let service_perimeters__status__egress_policies__egress_from
    ?identities ?identity_type ?source_restriction ?(sources = []) ()
    : service_perimeters__status__egress_policies__egress_from =
  { identities; identity_type; source_restriction; sources }

let service_perimeters__status__egress_policies__egress_to__operations__method_selectors
    ?method_ ?permission () :
    service_perimeters__status__egress_policies__egress_to__operations__method_selectors
    =
  { method_; permission }

let service_perimeters__status__egress_policies__egress_to__operations
    ?service_name ?(method_selectors = []) () :
    service_perimeters__status__egress_policies__egress_to__operations
    =
  { service_name; method_selectors }

let service_perimeters__status__egress_policies__egress_to
    ?external_resources ?resources ?(operations = []) () :
    service_perimeters__status__egress_policies__egress_to =
  { external_resources; resources; operations }

let service_perimeters__status__egress_policies ?(egress_from = [])
    ?(egress_to = []) () :
    service_perimeters__status__egress_policies =
  { egress_from; egress_to }

let service_perimeters__status__ingress_policies__ingress_from__sources
    ?access_level ?resource () :
    service_perimeters__status__ingress_policies__ingress_from__sources
    =
  { access_level; resource }

let service_perimeters__status__ingress_policies__ingress_from
    ?identities ?identity_type ?(sources = []) () :
    service_perimeters__status__ingress_policies__ingress_from =
  { identities; identity_type; sources }

let service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors
    ?method_ ?permission () :
    service_perimeters__status__ingress_policies__ingress_to__operations__method_selectors
    =
  { method_; permission }

let service_perimeters__status__ingress_policies__ingress_to__operations
    ?service_name ?(method_selectors = []) () :
    service_perimeters__status__ingress_policies__ingress_to__operations
    =
  { service_name; method_selectors }

let service_perimeters__status__ingress_policies__ingress_to
    ?resources ?(operations = []) () :
    service_perimeters__status__ingress_policies__ingress_to =
  { resources; operations }

let service_perimeters__status__ingress_policies ?(ingress_from = [])
    ?(ingress_to = []) () :
    service_perimeters__status__ingress_policies =
  { ingress_from; ingress_to }

let service_perimeters__status__vpc_accessible_services
    ?allowed_services ?enable_restriction () :
    service_perimeters__status__vpc_accessible_services =
  { allowed_services; enable_restriction }

let service_perimeters__status ?access_levels ?resources
    ?restricted_services ?(egress_policies = [])
    ?(vpc_accessible_services = []) ~ingress_policies () :
    service_perimeters__status =
  {
    access_levels;
    resources;
    restricted_services;
    egress_policies;
    ingress_policies;
    vpc_accessible_services;
  }

let service_perimeters ?description ?perimeter_type
    ?use_explicit_dry_run_spec ?(spec = []) ?(status = []) ~name
    ~title () : service_perimeters =
  {
    description;
    name;
    perimeter_type;
    title;
    use_explicit_dry_run_spec;
    spec;
    status;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_access_context_manager_service_perimeters ?id
    ?(service_perimeters = []) ?timeouts ~parent () :
    google_access_context_manager_service_perimeters =
  { id; parent; service_perimeters; timeouts }

type t = { tf_name : string; id : string prop; parent : string prop }

let make ?id ?(service_perimeters = []) ?timeouts ~parent __id =
  let __type = "google_access_context_manager_service_perimeters" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       parent = Prop.computed __type __id "parent";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_access_context_manager_service_perimeters
        (google_access_context_manager_service_perimeters ?id
           ~service_perimeters ?timeouts ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(service_perimeters = []) ?timeouts
    ~parent __id =
  let (r : _ Tf_core.resource) =
    make ?id ~service_perimeters ?timeouts ~parent __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

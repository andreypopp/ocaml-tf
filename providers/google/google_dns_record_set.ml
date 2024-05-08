(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type routing_policy__geo__health_checked_targets__internal_load_balancers = {
  ip_address : string prop;
  ip_protocol : string prop;
  load_balancer_type : string prop;
  network_url : string prop;
  port : string prop;
  project : string prop;
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing_policy__geo__health_checked_targets__internal_load_balancers) ->
  ()

let yojson_of_routing_policy__geo__health_checked_targets__internal_load_balancers
    =
  (function
   | {
       ip_address = v_ip_address;
       ip_protocol = v_ip_protocol;
       load_balancer_type = v_load_balancer_type;
       network_url = v_network_url;
       port = v_port;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_url in
         ("network_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_type
         in
         ("load_balancer_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_protocol in
         ("ip_protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       `Assoc bnds
    : routing_policy__geo__health_checked_targets__internal_load_balancers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing_policy__geo__health_checked_targets__internal_load_balancers

[@@@deriving.end]

type routing_policy__geo__health_checked_targets = {
  internal_load_balancers :
    routing_policy__geo__health_checked_targets__internal_load_balancers
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_policy__geo__health_checked_targets) -> ()

let yojson_of_routing_policy__geo__health_checked_targets =
  (function
   | { internal_load_balancers = v_internal_load_balancers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_internal_load_balancers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing_policy__geo__health_checked_targets__internal_load_balancers)
               v_internal_load_balancers
           in
           let bnd = "internal_load_balancers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : routing_policy__geo__health_checked_targets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_policy__geo__health_checked_targets

[@@@deriving.end]

type routing_policy__geo = {
  location : string prop;
  rrdatas : string prop list option; [@option]
  health_checked_targets :
    routing_policy__geo__health_checked_targets list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_policy__geo) -> ()

let yojson_of_routing_policy__geo =
  (function
   | {
       location = v_location;
       rrdatas = v_rrdatas;
       health_checked_targets = v_health_checked_targets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_health_checked_targets then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing_policy__geo__health_checked_targets)
               v_health_checked_targets
           in
           let bnd = "health_checked_targets", arg in
           bnd :: bnds
       in
       let bnds =
         match v_rrdatas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "rrdatas", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       `Assoc bnds
    : routing_policy__geo -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_policy__geo

[@@@deriving.end]

type routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers = {
  ip_address : string prop;
  ip_protocol : string prop;
  load_balancer_type : string prop;
  network_url : string prop;
  port : string prop;
  project : string prop;
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers) ->
  ()

let yojson_of_routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers
    =
  (function
   | {
       ip_address = v_ip_address;
       ip_protocol = v_ip_protocol;
       load_balancer_type = v_load_balancer_type;
       network_url = v_network_url;
       port = v_port;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_url in
         ("network_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_type
         in
         ("load_balancer_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_protocol in
         ("ip_protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       `Assoc bnds
    : routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers

[@@@deriving.end]

type routing_policy__primary_backup__backup_geo__health_checked_targets = {
  internal_load_balancers :
    routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing_policy__primary_backup__backup_geo__health_checked_targets) ->
  ()

let yojson_of_routing_policy__primary_backup__backup_geo__health_checked_targets
    =
  (function
   | { internal_load_balancers = v_internal_load_balancers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_internal_load_balancers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers)
               v_internal_load_balancers
           in
           let bnd = "internal_load_balancers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : routing_policy__primary_backup__backup_geo__health_checked_targets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing_policy__primary_backup__backup_geo__health_checked_targets

[@@@deriving.end]

type routing_policy__primary_backup__backup_geo = {
  location : string prop;
  rrdatas : string prop list option; [@option]
  health_checked_targets :
    routing_policy__primary_backup__backup_geo__health_checked_targets
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_policy__primary_backup__backup_geo) -> ()

let yojson_of_routing_policy__primary_backup__backup_geo =
  (function
   | {
       location = v_location;
       rrdatas = v_rrdatas;
       health_checked_targets = v_health_checked_targets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_health_checked_targets then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing_policy__primary_backup__backup_geo__health_checked_targets)
               v_health_checked_targets
           in
           let bnd = "health_checked_targets", arg in
           bnd :: bnds
       in
       let bnds =
         match v_rrdatas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "rrdatas", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       `Assoc bnds
    : routing_policy__primary_backup__backup_geo ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_policy__primary_backup__backup_geo

[@@@deriving.end]

type routing_policy__primary_backup__primary__internal_load_balancers = {
  ip_address : string prop;
  ip_protocol : string prop;
  load_balancer_type : string prop;
  network_url : string prop;
  port : string prop;
  project : string prop;
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing_policy__primary_backup__primary__internal_load_balancers) ->
  ()

let yojson_of_routing_policy__primary_backup__primary__internal_load_balancers
    =
  (function
   | {
       ip_address = v_ip_address;
       ip_protocol = v_ip_protocol;
       load_balancer_type = v_load_balancer_type;
       network_url = v_network_url;
       port = v_port;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_url in
         ("network_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_type
         in
         ("load_balancer_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_protocol in
         ("ip_protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       `Assoc bnds
    : routing_policy__primary_backup__primary__internal_load_balancers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing_policy__primary_backup__primary__internal_load_balancers

[@@@deriving.end]

type routing_policy__primary_backup__primary = {
  internal_load_balancers :
    routing_policy__primary_backup__primary__internal_load_balancers
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_policy__primary_backup__primary) -> ()

let yojson_of_routing_policy__primary_backup__primary =
  (function
   | { internal_load_balancers = v_internal_load_balancers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_internal_load_balancers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing_policy__primary_backup__primary__internal_load_balancers)
               v_internal_load_balancers
           in
           let bnd = "internal_load_balancers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : routing_policy__primary_backup__primary ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_policy__primary_backup__primary

[@@@deriving.end]

type routing_policy__primary_backup = {
  enable_geo_fencing_for_backups : bool prop option; [@option]
  trickle_ratio : float prop option; [@option]
  backup_geo : routing_policy__primary_backup__backup_geo list;
      [@default []] [@yojson_drop_default ( = )]
  primary : routing_policy__primary_backup__primary list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_policy__primary_backup) -> ()

let yojson_of_routing_policy__primary_backup =
  (function
   | {
       enable_geo_fencing_for_backups =
         v_enable_geo_fencing_for_backups;
       trickle_ratio = v_trickle_ratio;
       backup_geo = v_backup_geo;
       primary = v_primary;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_primary then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing_policy__primary_backup__primary)
               v_primary
           in
           let bnd = "primary", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_backup_geo then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing_policy__primary_backup__backup_geo)
               v_backup_geo
           in
           let bnd = "backup_geo", arg in
           bnd :: bnds
       in
       let bnds =
         match v_trickle_ratio with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "trickle_ratio", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_geo_fencing_for_backups with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_geo_fencing_for_backups", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing_policy__primary_backup ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_policy__primary_backup

[@@@deriving.end]

type routing_policy__wrr__health_checked_targets__internal_load_balancers = {
  ip_address : string prop;
  ip_protocol : string prop;
  load_balancer_type : string prop;
  network_url : string prop;
  port : string prop;
  project : string prop;
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       routing_policy__wrr__health_checked_targets__internal_load_balancers) ->
  ()

let yojson_of_routing_policy__wrr__health_checked_targets__internal_load_balancers
    =
  (function
   | {
       ip_address = v_ip_address;
       ip_protocol = v_ip_protocol;
       load_balancer_type = v_load_balancer_type;
       network_url = v_network_url;
       port = v_port;
       project = v_project;
       region = v_region;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_network_url in
         ("network_url", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_load_balancer_type
         in
         ("load_balancer_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_protocol in
         ("ip_protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_address in
         ("ip_address", arg) :: bnds
       in
       `Assoc bnds
    : routing_policy__wrr__health_checked_targets__internal_load_balancers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_routing_policy__wrr__health_checked_targets__internal_load_balancers

[@@@deriving.end]

type routing_policy__wrr__health_checked_targets = {
  internal_load_balancers :
    routing_policy__wrr__health_checked_targets__internal_load_balancers
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_policy__wrr__health_checked_targets) -> ()

let yojson_of_routing_policy__wrr__health_checked_targets =
  (function
   | { internal_load_balancers = v_internal_load_balancers } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_internal_load_balancers then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing_policy__wrr__health_checked_targets__internal_load_balancers)
               v_internal_load_balancers
           in
           let bnd = "internal_load_balancers", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : routing_policy__wrr__health_checked_targets ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_policy__wrr__health_checked_targets

[@@@deriving.end]

type routing_policy__wrr = {
  rrdatas : string prop list option; [@option]
  weight : float prop;
  health_checked_targets :
    routing_policy__wrr__health_checked_targets list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_policy__wrr) -> ()

let yojson_of_routing_policy__wrr =
  (function
   | {
       rrdatas = v_rrdatas;
       weight = v_weight;
       health_checked_targets = v_health_checked_targets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_health_checked_targets then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_routing_policy__wrr__health_checked_targets)
               v_health_checked_targets
           in
           let bnd = "health_checked_targets", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         match v_rrdatas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "rrdatas", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing_policy__wrr -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_policy__wrr

[@@@deriving.end]

type routing_policy = {
  enable_geo_fencing : bool prop option; [@option]
  geo : routing_policy__geo list;
      [@default []] [@yojson_drop_default ( = )]
  primary_backup : routing_policy__primary_backup list;
      [@default []] [@yojson_drop_default ( = )]
  wrr : routing_policy__wrr list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_policy) -> ()

let yojson_of_routing_policy =
  (function
   | {
       enable_geo_fencing = v_enable_geo_fencing;
       geo = v_geo;
       primary_backup = v_primary_backup;
       wrr = v_wrr;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_wrr then bnds
         else
           let arg =
             (yojson_of_list yojson_of_routing_policy__wrr) v_wrr
           in
           let bnd = "wrr", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_primary_backup then bnds
         else
           let arg =
             (yojson_of_list yojson_of_routing_policy__primary_backup)
               v_primary_backup
           in
           let bnd = "primary_backup", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_geo then bnds
         else
           let arg =
             (yojson_of_list yojson_of_routing_policy__geo) v_geo
           in
           let bnd = "geo", arg in
           bnd :: bnds
       in
       let bnds =
         match v_enable_geo_fencing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_geo_fencing", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : routing_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_policy

[@@@deriving.end]

type google_dns_record_set = {
  id : string prop option; [@option]
  managed_zone : string prop;
  name : string prop;
  project : string prop option; [@option]
  rrdatas : string prop list option; [@option]
  ttl : float prop option; [@option]
  type_ : string prop; [@key "type"]
  routing_policy : routing_policy list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_dns_record_set) -> ()

let yojson_of_google_dns_record_set =
  (function
   | {
       id = v_id;
       managed_zone = v_managed_zone;
       name = v_name;
       project = v_project;
       rrdatas = v_rrdatas;
       ttl = v_ttl;
       type_ = v_type_;
       routing_policy = v_routing_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_routing_policy then bnds
         else
           let arg =
             (yojson_of_list yojson_of_routing_policy)
               v_routing_policy
           in
           let bnd = "routing_policy", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_ttl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "ttl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rrdatas with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "rrdatas", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_managed_zone in
         ("managed_zone", arg) :: bnds
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
    : google_dns_record_set -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_dns_record_set

[@@@deriving.end]

let routing_policy__geo__health_checked_targets__internal_load_balancers
    ?region ~ip_address ~ip_protocol ~load_balancer_type ~network_url
    ~port ~project () :
    routing_policy__geo__health_checked_targets__internal_load_balancers
    =
  {
    ip_address;
    ip_protocol;
    load_balancer_type;
    network_url;
    port;
    project;
    region;
  }

let routing_policy__geo__health_checked_targets
    ~internal_load_balancers () :
    routing_policy__geo__health_checked_targets =
  { internal_load_balancers }

let routing_policy__geo ?rrdatas ?(health_checked_targets = [])
    ~location () : routing_policy__geo =
  { location; rrdatas; health_checked_targets }

let routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers
    ?region ~ip_address ~ip_protocol ~load_balancer_type ~network_url
    ~port ~project () :
    routing_policy__primary_backup__backup_geo__health_checked_targets__internal_load_balancers
    =
  {
    ip_address;
    ip_protocol;
    load_balancer_type;
    network_url;
    port;
    project;
    region;
  }

let routing_policy__primary_backup__backup_geo__health_checked_targets
    ~internal_load_balancers () :
    routing_policy__primary_backup__backup_geo__health_checked_targets
    =
  { internal_load_balancers }

let routing_policy__primary_backup__backup_geo ?rrdatas
    ?(health_checked_targets = []) ~location () :
    routing_policy__primary_backup__backup_geo =
  { location; rrdatas; health_checked_targets }

let routing_policy__primary_backup__primary__internal_load_balancers
    ?region ~ip_address ~ip_protocol ~load_balancer_type ~network_url
    ~port ~project () :
    routing_policy__primary_backup__primary__internal_load_balancers
    =
  {
    ip_address;
    ip_protocol;
    load_balancer_type;
    network_url;
    port;
    project;
    region;
  }

let routing_policy__primary_backup__primary ~internal_load_balancers
    () : routing_policy__primary_backup__primary =
  { internal_load_balancers }

let routing_policy__primary_backup ?enable_geo_fencing_for_backups
    ?trickle_ratio ~backup_geo ~primary () :
    routing_policy__primary_backup =
  {
    enable_geo_fencing_for_backups;
    trickle_ratio;
    backup_geo;
    primary;
  }

let routing_policy__wrr__health_checked_targets__internal_load_balancers
    ?region ~ip_address ~ip_protocol ~load_balancer_type ~network_url
    ~port ~project () :
    routing_policy__wrr__health_checked_targets__internal_load_balancers
    =
  {
    ip_address;
    ip_protocol;
    load_balancer_type;
    network_url;
    port;
    project;
    region;
  }

let routing_policy__wrr__health_checked_targets
    ~internal_load_balancers () :
    routing_policy__wrr__health_checked_targets =
  { internal_load_balancers }

let routing_policy__wrr ?rrdatas ?(health_checked_targets = [])
    ~weight () : routing_policy__wrr =
  { rrdatas; weight; health_checked_targets }

let routing_policy ?enable_geo_fencing ?(geo = [])
    ?(primary_backup = []) ?(wrr = []) () : routing_policy =
  { enable_geo_fencing; geo; primary_backup; wrr }

let google_dns_record_set ?id ?project ?rrdatas ?ttl
    ?(routing_policy = []) ~managed_zone ~name ~type_ () :
    google_dns_record_set =
  {
    id;
    managed_zone;
    name;
    project;
    rrdatas;
    ttl;
    type_;
    routing_policy;
  }

type t = {
  tf_name : string;
  id : string prop;
  managed_zone : string prop;
  name : string prop;
  project : string prop;
  rrdatas : string list prop;
  ttl : float prop;
  type_ : string prop;
}

let make ?id ?project ?rrdatas ?ttl ?(routing_policy = [])
    ~managed_zone ~name ~type_ __id =
  let __type = "google_dns_record_set" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       managed_zone = Prop.computed __type __id "managed_zone";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       rrdatas = Prop.computed __type __id "rrdatas";
       ttl = Prop.computed __type __id "ttl";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_dns_record_set
        (google_dns_record_set ?id ?project ?rrdatas ?ttl
           ~routing_policy ~managed_zone ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?rrdatas ?ttl
    ?(routing_policy = []) ~managed_zone ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ?rrdatas ?ttl ~routing_policy ~managed_zone
      ~name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

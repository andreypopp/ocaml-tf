(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type rule_settings__audit_ssh = { command_logging : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_settings__audit_ssh) -> ()

let yojson_of_rule_settings__audit_ssh =
  (function
   | { command_logging = v_command_logging } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_command_logging in
         ("command_logging", arg) :: bnds
       in
       `Assoc bnds
    : rule_settings__audit_ssh -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_settings__audit_ssh

[@@@deriving.end]

type rule_settings__biso_admin_controls = {
  disable_copy_paste : bool prop option; [@option]
  disable_download : bool prop option; [@option]
  disable_keyboard : bool prop option; [@option]
  disable_printing : bool prop option; [@option]
  disable_upload : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_settings__biso_admin_controls) -> ()

let yojson_of_rule_settings__biso_admin_controls =
  (function
   | {
       disable_copy_paste = v_disable_copy_paste;
       disable_download = v_disable_download;
       disable_keyboard = v_disable_keyboard;
       disable_printing = v_disable_printing;
       disable_upload = v_disable_upload;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_disable_upload with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_upload", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_printing with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_printing", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_keyboard with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_keyboard", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_download with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_download", arg in
             bnd :: bnds
       in
       let bnds =
         match v_disable_copy_paste with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "disable_copy_paste", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule_settings__biso_admin_controls ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_settings__biso_admin_controls

[@@@deriving.end]

type rule_settings__check_session = {
  duration : string prop;
  enforce : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_settings__check_session) -> ()

let yojson_of_rule_settings__check_session =
  (function
   | { duration = v_duration; enforce = v_enforce } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enforce in
         ("enforce", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_duration in
         ("duration", arg) :: bnds
       in
       `Assoc bnds
    : rule_settings__check_session ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_settings__check_session

[@@@deriving.end]

type rule_settings__dns_resolvers__ipv4 = {
  ip : string prop;
  port : float prop option; [@option]
  route_through_private_network : bool prop option; [@option]
  vnet_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_settings__dns_resolvers__ipv4) -> ()

let yojson_of_rule_settings__dns_resolvers__ipv4 =
  (function
   | {
       ip = v_ip;
       port = v_port;
       route_through_private_network =
         v_route_through_private_network;
       vnet_id = v_vnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route_through_private_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "route_through_private_network", arg in
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
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       `Assoc bnds
    : rule_settings__dns_resolvers__ipv4 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_settings__dns_resolvers__ipv4

[@@@deriving.end]

type rule_settings__dns_resolvers__ipv6 = {
  ip : string prop;
  port : float prop option; [@option]
  route_through_private_network : bool prop option; [@option]
  vnet_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_settings__dns_resolvers__ipv6) -> ()

let yojson_of_rule_settings__dns_resolvers__ipv6 =
  (function
   | {
       ip = v_ip;
       port = v_port;
       route_through_private_network =
         v_route_through_private_network;
       vnet_id = v_vnet_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_route_through_private_network with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "route_through_private_network", arg in
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
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       `Assoc bnds
    : rule_settings__dns_resolvers__ipv6 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_settings__dns_resolvers__ipv6

[@@@deriving.end]

type rule_settings__dns_resolvers = {
  ipv4 : rule_settings__dns_resolvers__ipv4 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ipv6 : rule_settings__dns_resolvers__ipv6 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_settings__dns_resolvers) -> ()

let yojson_of_rule_settings__dns_resolvers =
  (function
   | { ipv4 = v_ipv4; ipv6 = v_ipv6 } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ipv6 then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_settings__dns_resolvers__ipv6)
               v_ipv6
           in
           let bnd = "ipv6", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_ipv4 then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_settings__dns_resolvers__ipv4)
               v_ipv4
           in
           let bnd = "ipv4", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : rule_settings__dns_resolvers ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_settings__dns_resolvers

[@@@deriving.end]

type rule_settings__egress = {
  ipv4 : string prop;
  ipv4_fallback : string prop option; [@option]
  ipv6 : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_settings__egress) -> ()

let yojson_of_rule_settings__egress =
  (function
   | {
       ipv4 = v_ipv4;
       ipv4_fallback = v_ipv4_fallback;
       ipv6 = v_ipv6;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv6 in
         ("ipv6", arg) :: bnds
       in
       let bnds =
         match v_ipv4_fallback with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ipv4_fallback", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ipv4 in
         ("ipv4", arg) :: bnds
       in
       `Assoc bnds
    : rule_settings__egress -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_settings__egress

[@@@deriving.end]

type rule_settings__l4override = {
  ip : string prop;
  port : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_settings__l4override) -> ()

let yojson_of_rule_settings__l4override =
  (function
   | { ip = v_ip; port = v_port } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip in
         ("ip", arg) :: bnds
       in
       `Assoc bnds
    : rule_settings__l4override -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_settings__l4override

[@@@deriving.end]

type rule_settings__notification_settings = {
  enabled : bool prop option; [@option]
  message : string prop option; [@option]
  support_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_settings__notification_settings) -> ()

let yojson_of_rule_settings__notification_settings =
  (function
   | {
       enabled = v_enabled;
       message = v_message;
       support_url = v_support_url;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_support_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "support_url", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule_settings__notification_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_settings__notification_settings

[@@@deriving.end]

type rule_settings__payload_log = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_settings__payload_log) -> ()

let yojson_of_rule_settings__payload_log =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : rule_settings__payload_log -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_settings__payload_log

[@@@deriving.end]

type rule_settings__untrusted_cert = {
  action : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_settings__untrusted_cert) -> ()

let yojson_of_rule_settings__untrusted_cert =
  (function
   | { action = v_action } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule_settings__untrusted_cert ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_settings__untrusted_cert

[@@@deriving.end]

type rule_settings = {
  add_headers : string prop Tf_core.assoc option; [@option]
  allow_child_bypass : bool prop option; [@option]
  block_page_enabled : bool prop option; [@option]
  block_page_reason : string prop option; [@option]
  bypass_parent_rule : bool prop option; [@option]
  insecure_disable_dnssec_validation : bool prop option; [@option]
  ip_categories : bool prop option; [@option]
  override_host : string prop option; [@option]
  override_ips : string prop list option; [@option]
  resolve_dns_through_cloudflare : bool prop option; [@option]
  audit_ssh : rule_settings__audit_ssh list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  biso_admin_controls : rule_settings__biso_admin_controls list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  check_session : rule_settings__check_session list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  dns_resolvers : rule_settings__dns_resolvers list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  egress : rule_settings__egress list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  l4override : rule_settings__l4override list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  notification_settings : rule_settings__notification_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  payload_log : rule_settings__payload_log list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  untrusted_cert : rule_settings__untrusted_cert list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : rule_settings) -> ()

let yojson_of_rule_settings =
  (function
   | {
       add_headers = v_add_headers;
       allow_child_bypass = v_allow_child_bypass;
       block_page_enabled = v_block_page_enabled;
       block_page_reason = v_block_page_reason;
       bypass_parent_rule = v_bypass_parent_rule;
       insecure_disable_dnssec_validation =
         v_insecure_disable_dnssec_validation;
       ip_categories = v_ip_categories;
       override_host = v_override_host;
       override_ips = v_override_ips;
       resolve_dns_through_cloudflare =
         v_resolve_dns_through_cloudflare;
       audit_ssh = v_audit_ssh;
       biso_admin_controls = v_biso_admin_controls;
       check_session = v_check_session;
       dns_resolvers = v_dns_resolvers;
       egress = v_egress;
       l4override = v_l4override;
       notification_settings = v_notification_settings;
       payload_log = v_payload_log;
       untrusted_cert = v_untrusted_cert;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_untrusted_cert then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule_settings__untrusted_cert)
               v_untrusted_cert
           in
           let bnd = "untrusted_cert", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_payload_log then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule_settings__payload_log)
               v_payload_log
           in
           let bnd = "payload_log", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_notification_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_settings__notification_settings)
               v_notification_settings
           in
           let bnd = "notification_settings", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_l4override then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule_settings__l4override)
               v_l4override
           in
           let bnd = "l4override", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_egress then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule_settings__egress)
               v_egress
           in
           let bnd = "egress", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dns_resolvers then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule_settings__dns_resolvers)
               v_dns_resolvers
           in
           let bnd = "dns_resolvers", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_check_session then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule_settings__check_session)
               v_check_session
           in
           let bnd = "check_session", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_biso_admin_controls then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_rule_settings__biso_admin_controls)
               v_biso_admin_controls
           in
           let bnd = "biso_admin_controls", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_audit_ssh then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule_settings__audit_ssh)
               v_audit_ssh
           in
           let bnd = "audit_ssh", arg in
           bnd :: bnds
       in
       let bnds =
         match v_resolve_dns_through_cloudflare with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "resolve_dns_through_cloudflare", arg in
             bnd :: bnds
       in
       let bnds =
         match v_override_ips with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "override_ips", arg in
             bnd :: bnds
       in
       let bnds =
         match v_override_host with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "override_host", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ip_categories with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ip_categories", arg in
             bnd :: bnds
       in
       let bnds =
         match v_insecure_disable_dnssec_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "insecure_disable_dnssec_validation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_bypass_parent_rule with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "bypass_parent_rule", arg in
             bnd :: bnds
       in
       let bnds =
         match v_block_page_reason with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "block_page_reason", arg in
             bnd :: bnds
       in
       let bnds =
         match v_block_page_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "block_page_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allow_child_bypass with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "allow_child_bypass", arg in
             bnd :: bnds
       in
       let bnds =
         match v_add_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "add_headers", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : rule_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_rule_settings

[@@@deriving.end]

type cloudflare_teams_rule = {
  account_id : string prop;
  action : string prop;
  description : string prop;
  device_posture : string prop option; [@option]
  enabled : bool prop option; [@option]
  filters : string prop list option; [@option]
  id : string prop option; [@option]
  identity : string prop option; [@option]
  name : string prop;
  precedence : float prop;
  traffic : string prop option; [@option]
  rule_settings : rule_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_teams_rule) -> ()

let yojson_of_cloudflare_teams_rule =
  (function
   | {
       account_id = v_account_id;
       action = v_action;
       description = v_description;
       device_posture = v_device_posture;
       enabled = v_enabled;
       filters = v_filters;
       id = v_id;
       identity = v_identity;
       name = v_name;
       precedence = v_precedence;
       traffic = v_traffic;
       rule_settings = v_rule_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_rule_settings then bnds
         else
           let arg =
             (yojson_of_list yojson_of_rule_settings) v_rule_settings
           in
           let bnd = "rule_settings", arg in
           bnd :: bnds
       in
       let bnds =
         match v_traffic with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "traffic", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_precedence in
         ("precedence", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "identity", arg in
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
         match v_filters with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "filters", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_posture with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_posture", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_teams_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_teams_rule

[@@@deriving.end]

let rule_settings__audit_ssh ~command_logging () :
    rule_settings__audit_ssh =
  { command_logging }

let rule_settings__biso_admin_controls ?disable_copy_paste
    ?disable_download ?disable_keyboard ?disable_printing
    ?disable_upload () : rule_settings__biso_admin_controls =
  {
    disable_copy_paste;
    disable_download;
    disable_keyboard;
    disable_printing;
    disable_upload;
  }

let rule_settings__check_session ~duration ~enforce () :
    rule_settings__check_session =
  { duration; enforce }

let rule_settings__dns_resolvers__ipv4 ?port
    ?route_through_private_network ?vnet_id ~ip () :
    rule_settings__dns_resolvers__ipv4 =
  { ip; port; route_through_private_network; vnet_id }

let rule_settings__dns_resolvers__ipv6 ?port
    ?route_through_private_network ?vnet_id ~ip () :
    rule_settings__dns_resolvers__ipv6 =
  { ip; port; route_through_private_network; vnet_id }

let rule_settings__dns_resolvers ?(ipv4 = []) ?(ipv6 = []) () :
    rule_settings__dns_resolvers =
  { ipv4; ipv6 }

let rule_settings__egress ?ipv4_fallback ~ipv4 ~ipv6 () :
    rule_settings__egress =
  { ipv4; ipv4_fallback; ipv6 }

let rule_settings__l4override ~ip ~port () :
    rule_settings__l4override =
  { ip; port }

let rule_settings__notification_settings ?enabled ?message
    ?support_url () : rule_settings__notification_settings =
  { enabled; message; support_url }

let rule_settings__payload_log ~enabled () :
    rule_settings__payload_log =
  { enabled }

let rule_settings__untrusted_cert ?action () :
    rule_settings__untrusted_cert =
  { action }

let rule_settings ?add_headers ?allow_child_bypass
    ?block_page_enabled ?block_page_reason ?bypass_parent_rule
    ?insecure_disable_dnssec_validation ?ip_categories ?override_host
    ?override_ips ?resolve_dns_through_cloudflare ?(audit_ssh = [])
    ?(biso_admin_controls = []) ?(check_session = [])
    ?(dns_resolvers = []) ?(egress = []) ?(l4override = [])
    ?(notification_settings = []) ?(payload_log = [])
    ?(untrusted_cert = []) () : rule_settings =
  {
    add_headers;
    allow_child_bypass;
    block_page_enabled;
    block_page_reason;
    bypass_parent_rule;
    insecure_disable_dnssec_validation;
    ip_categories;
    override_host;
    override_ips;
    resolve_dns_through_cloudflare;
    audit_ssh;
    biso_admin_controls;
    check_session;
    dns_resolvers;
    egress;
    l4override;
    notification_settings;
    payload_log;
    untrusted_cert;
  }

let cloudflare_teams_rule ?device_posture ?enabled ?filters ?id
    ?identity ?traffic ?(rule_settings = []) ~account_id ~action
    ~description ~name ~precedence () : cloudflare_teams_rule =
  {
    account_id;
    action;
    description;
    device_posture;
    enabled;
    filters;
    id;
    identity;
    name;
    precedence;
    traffic;
    rule_settings;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  action : string prop;
  description : string prop;
  device_posture : string prop;
  enabled : bool prop;
  filters : string list prop;
  id : string prop;
  identity : string prop;
  name : string prop;
  precedence : float prop;
  traffic : string prop;
  version : float prop;
}

let make ?device_posture ?enabled ?filters ?id ?identity ?traffic
    ?(rule_settings = []) ~account_id ~action ~description ~name
    ~precedence __id =
  let __type = "cloudflare_teams_rule" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       action = Prop.computed __type __id "action";
       description = Prop.computed __type __id "description";
       device_posture = Prop.computed __type __id "device_posture";
       enabled = Prop.computed __type __id "enabled";
       filters = Prop.computed __type __id "filters";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       name = Prop.computed __type __id "name";
       precedence = Prop.computed __type __id "precedence";
       traffic = Prop.computed __type __id "traffic";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_teams_rule
        (cloudflare_teams_rule ?device_posture ?enabled ?filters ?id
           ?identity ?traffic ~rule_settings ~account_id ~action
           ~description ~name ~precedence ());
    attrs = __attrs;
  }

let register ?tf_module ?device_posture ?enabled ?filters ?id
    ?identity ?traffic ?(rule_settings = []) ~account_id ~action
    ~description ~name ~precedence __id =
  let (r : _ Tf_core.resource) =
    make ?device_posture ?enabled ?filters ?id ?identity ?traffic
      ~rule_settings ~account_id ~action ~description ~name
      ~precedence __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

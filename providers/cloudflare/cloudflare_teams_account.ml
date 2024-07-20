(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type antivirus__notification_settings = {
  enabled : bool prop option; [@option]
  message : string prop option; [@option]
  support_url : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : antivirus__notification_settings) -> ()

let yojson_of_antivirus__notification_settings =
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
    : antivirus__notification_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_antivirus__notification_settings

[@@@deriving.end]

type antivirus = {
  enabled_download_phase : bool prop;
  enabled_upload_phase : bool prop;
  fail_closed : bool prop;
  notification_settings : antivirus__notification_settings list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : antivirus) -> ()

let yojson_of_antivirus =
  (function
   | {
       enabled_download_phase = v_enabled_download_phase;
       enabled_upload_phase = v_enabled_upload_phase;
       fail_closed = v_fail_closed;
       notification_settings = v_notification_settings;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_notification_settings then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_antivirus__notification_settings)
               v_notification_settings
           in
           let bnd = "notification_settings", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_fail_closed in
         ("fail_closed", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enabled_upload_phase
         in
         ("enabled_upload_phase", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool v_enabled_download_phase
         in
         ("enabled_download_phase", arg) :: bnds
       in
       `Assoc bnds
    : antivirus -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_antivirus

[@@@deriving.end]

type block_page = {
  background_color : string prop option; [@option]
  enabled : bool prop option; [@option]
  footer_text : string prop option; [@option]
  header_text : string prop option; [@option]
  logo_path : string prop option; [@option]
  mailto_address : string prop option; [@option]
  mailto_subject : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : block_page) -> ()

let yojson_of_block_page =
  (function
   | {
       background_color = v_background_color;
       enabled = v_enabled;
       footer_text = v_footer_text;
       header_text = v_header_text;
       logo_path = v_logo_path;
       mailto_address = v_mailto_address;
       mailto_subject = v_mailto_subject;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_mailto_subject with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mailto_subject", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mailto_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mailto_address", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logo_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "logo_path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_header_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "header_text", arg in
             bnd :: bnds
       in
       let bnds =
         match v_footer_text with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "footer_text", arg in
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
         match v_background_color with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "background_color", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : block_page -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_block_page

[@@@deriving.end]

type body_scanning = { inspection_mode : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : body_scanning) -> ()

let yojson_of_body_scanning =
  (function
   | { inspection_mode = v_inspection_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_inspection_mode
         in
         ("inspection_mode", arg) :: bnds
       in
       `Assoc bnds
    : body_scanning -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_body_scanning

[@@@deriving.end]

type custom_certificate = {
  enabled : bool prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_certificate) -> ()

let yojson_of_custom_certificate =
  (function
   | { enabled = v_enabled; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : custom_certificate -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_certificate

[@@@deriving.end]

type extended_email_matching = { enabled : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : extended_email_matching) -> ()

let yojson_of_extended_email_matching =
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
    : extended_email_matching -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_extended_email_matching

[@@@deriving.end]

type fips = { tls : bool prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : fips) -> ()

let yojson_of_fips =
  (function
   | { tls = v_tls } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tls", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : fips -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fips

[@@@deriving.end]

type logging__settings_by_rule_type__dns = {
  log_all : bool prop;
  log_blocks : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging__settings_by_rule_type__dns) -> ()

let yojson_of_logging__settings_by_rule_type__dns =
  (function
   | { log_all = v_log_all; log_blocks = v_log_blocks } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_log_blocks in
         ("log_blocks", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_log_all in
         ("log_all", arg) :: bnds
       in
       `Assoc bnds
    : logging__settings_by_rule_type__dns ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging__settings_by_rule_type__dns

[@@@deriving.end]

type logging__settings_by_rule_type__http = {
  log_all : bool prop;
  log_blocks : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging__settings_by_rule_type__http) -> ()

let yojson_of_logging__settings_by_rule_type__http =
  (function
   | { log_all = v_log_all; log_blocks = v_log_blocks } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_log_blocks in
         ("log_blocks", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_log_all in
         ("log_all", arg) :: bnds
       in
       `Assoc bnds
    : logging__settings_by_rule_type__http ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging__settings_by_rule_type__http

[@@@deriving.end]

type logging__settings_by_rule_type__l4 = {
  log_all : bool prop;
  log_blocks : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging__settings_by_rule_type__l4) -> ()

let yojson_of_logging__settings_by_rule_type__l4 =
  (function
   | { log_all = v_log_all; log_blocks = v_log_blocks } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_log_blocks in
         ("log_blocks", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_log_all in
         ("log_all", arg) :: bnds
       in
       `Assoc bnds
    : logging__settings_by_rule_type__l4 ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging__settings_by_rule_type__l4

[@@@deriving.end]

type logging__settings_by_rule_type = {
  dns : logging__settings_by_rule_type__dns list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  http : logging__settings_by_rule_type__http list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  l4 : logging__settings_by_rule_type__l4 list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging__settings_by_rule_type) -> ()

let yojson_of_logging__settings_by_rule_type =
  (function
   | { dns = v_dns; http = v_http; l4 = v_l4 } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_l4 then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_logging__settings_by_rule_type__l4)
               v_l4
           in
           let bnd = "l4", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_http then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_logging__settings_by_rule_type__http)
               v_http
           in
           let bnd = "http", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_dns then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_logging__settings_by_rule_type__dns)
               v_dns
           in
           let bnd = "dns", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : logging__settings_by_rule_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging__settings_by_rule_type

[@@@deriving.end]

type logging = {
  redact_pii : bool prop;
  settings_by_rule_type : logging__settings_by_rule_type list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logging) -> ()

let yojson_of_logging =
  (function
   | {
       redact_pii = v_redact_pii;
       settings_by_rule_type = v_settings_by_rule_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_settings_by_rule_type then bnds
         else
           let arg =
             (yojson_of_list yojson_of_logging__settings_by_rule_type)
               v_settings_by_rule_type
           in
           let bnd = "settings_by_rule_type", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_redact_pii in
         ("redact_pii", arg) :: bnds
       in
       `Assoc bnds
    : logging -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logging

[@@@deriving.end]

type payload_log = { public_key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : payload_log) -> ()

let yojson_of_payload_log =
  (function
   | { public_key = v_public_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key in
         ("public_key", arg) :: bnds
       in
       `Assoc bnds
    : payload_log -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_payload_log

[@@@deriving.end]

type proxy = {
  root_ca : bool prop;
  tcp : bool prop;
  udp : bool prop;
  virtual_ip : bool prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : proxy) -> ()

let yojson_of_proxy =
  (function
   | {
       root_ca = v_root_ca;
       tcp = v_tcp;
       udp = v_udp;
       virtual_ip = v_virtual_ip;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_virtual_ip in
         ("virtual_ip", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_udp in
         ("udp", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_tcp in
         ("tcp", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_root_ca in
         ("root_ca", arg) :: bnds
       in
       `Assoc bnds
    : proxy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_proxy

[@@@deriving.end]

type ssh_session_log = { public_key : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : ssh_session_log) -> ()

let yojson_of_ssh_session_log =
  (function
   | { public_key = v_public_key } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_public_key in
         ("public_key", arg) :: bnds
       in
       `Assoc bnds
    : ssh_session_log -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_ssh_session_log

[@@@deriving.end]

type cloudflare_teams_account = {
  account_id : string prop;
  activity_log_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  non_identity_browser_isolation_enabled : bool prop option;
      [@option]
  protocol_detection_enabled : bool prop option; [@option]
  tls_decrypt_enabled : bool prop option; [@option]
  url_browser_isolation_enabled : bool prop option; [@option]
  antivirus : antivirus list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  block_page : block_page list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  body_scanning : body_scanning list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  custom_certificate : custom_certificate list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  extended_email_matching : extended_email_matching list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  fips : fips list; [@default []] [@yojson_drop_default Stdlib.( = )]
  logging : logging list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  payload_log : payload_log list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  proxy : proxy list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  ssh_session_log : ssh_session_log list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_teams_account) -> ()

let yojson_of_cloudflare_teams_account =
  (function
   | {
       account_id = v_account_id;
       activity_log_enabled = v_activity_log_enabled;
       id = v_id;
       non_identity_browser_isolation_enabled =
         v_non_identity_browser_isolation_enabled;
       protocol_detection_enabled = v_protocol_detection_enabled;
       tls_decrypt_enabled = v_tls_decrypt_enabled;
       url_browser_isolation_enabled =
         v_url_browser_isolation_enabled;
       antivirus = v_antivirus;
       block_page = v_block_page;
       body_scanning = v_body_scanning;
       custom_certificate = v_custom_certificate;
       extended_email_matching = v_extended_email_matching;
       fips = v_fips;
       logging = v_logging;
       payload_log = v_payload_log;
       proxy = v_proxy;
       ssh_session_log = v_ssh_session_log;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_ssh_session_log then bnds
         else
           let arg =
             (yojson_of_list yojson_of_ssh_session_log)
               v_ssh_session_log
           in
           let bnd = "ssh_session_log", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_proxy then bnds
         else
           let arg = (yojson_of_list yojson_of_proxy) v_proxy in
           let bnd = "proxy", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_payload_log then bnds
         else
           let arg =
             (yojson_of_list yojson_of_payload_log) v_payload_log
           in
           let bnd = "payload_log", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_logging then bnds
         else
           let arg = (yojson_of_list yojson_of_logging) v_logging in
           let bnd = "logging", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_fips then bnds
         else
           let arg = (yojson_of_list yojson_of_fips) v_fips in
           let bnd = "fips", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_extended_email_matching then bnds
         else
           let arg =
             (yojson_of_list yojson_of_extended_email_matching)
               v_extended_email_matching
           in
           let bnd = "extended_email_matching", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_certificate then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_certificate)
               v_custom_certificate
           in
           let bnd = "custom_certificate", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_body_scanning then bnds
         else
           let arg =
             (yojson_of_list yojson_of_body_scanning) v_body_scanning
           in
           let bnd = "body_scanning", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_block_page then bnds
         else
           let arg =
             (yojson_of_list yojson_of_block_page) v_block_page
           in
           let bnd = "block_page", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_antivirus then bnds
         else
           let arg =
             (yojson_of_list yojson_of_antivirus) v_antivirus
           in
           let bnd = "antivirus", arg in
           bnd :: bnds
       in
       let bnds =
         match v_url_browser_isolation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "url_browser_isolation_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tls_decrypt_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "tls_decrypt_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_protocol_detection_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "protocol_detection_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_non_identity_browser_isolation_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd =
               "non_identity_browser_isolation_enabled", arg
             in
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
         match v_activity_log_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "activity_log_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_teams_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_teams_account

[@@@deriving.end]

let antivirus__notification_settings ?enabled ?message ?support_url
    () : antivirus__notification_settings =
  { enabled; message; support_url }

let antivirus ?(notification_settings = []) ~enabled_download_phase
    ~enabled_upload_phase ~fail_closed () : antivirus =
  {
    enabled_download_phase;
    enabled_upload_phase;
    fail_closed;
    notification_settings;
  }

let block_page ?background_color ?enabled ?footer_text ?header_text
    ?logo_path ?mailto_address ?mailto_subject ?name () : block_page
    =
  {
    background_color;
    enabled;
    footer_text;
    header_text;
    logo_path;
    mailto_address;
    mailto_subject;
    name;
  }

let body_scanning ~inspection_mode () : body_scanning =
  { inspection_mode }

let custom_certificate ?id ~enabled () : custom_certificate =
  { enabled; id }

let extended_email_matching ~enabled () : extended_email_matching =
  { enabled }

let fips ?tls () : fips = { tls }

let logging__settings_by_rule_type__dns ~log_all ~log_blocks () :
    logging__settings_by_rule_type__dns =
  { log_all; log_blocks }

let logging__settings_by_rule_type__http ~log_all ~log_blocks () :
    logging__settings_by_rule_type__http =
  { log_all; log_blocks }

let logging__settings_by_rule_type__l4 ~log_all ~log_blocks () :
    logging__settings_by_rule_type__l4 =
  { log_all; log_blocks }

let logging__settings_by_rule_type ~dns ~http ~l4 () :
    logging__settings_by_rule_type =
  { dns; http; l4 }

let logging ~redact_pii ~settings_by_rule_type () : logging =
  { redact_pii; settings_by_rule_type }

let payload_log ~public_key () : payload_log = { public_key }

let proxy ~root_ca ~tcp ~udp ~virtual_ip () : proxy =
  { root_ca; tcp; udp; virtual_ip }

let ssh_session_log ~public_key () : ssh_session_log = { public_key }

let cloudflare_teams_account ?activity_log_enabled ?id
    ?non_identity_browser_isolation_enabled
    ?protocol_detection_enabled ?tls_decrypt_enabled
    ?url_browser_isolation_enabled ?(antivirus = [])
    ?(block_page = []) ?(body_scanning = [])
    ?(custom_certificate = []) ?(extended_email_matching = [])
    ?(fips = []) ?(logging = []) ?(payload_log = []) ?(proxy = [])
    ?(ssh_session_log = []) ~account_id () : cloudflare_teams_account
    =
  {
    account_id;
    activity_log_enabled;
    id;
    non_identity_browser_isolation_enabled;
    protocol_detection_enabled;
    tls_decrypt_enabled;
    url_browser_isolation_enabled;
    antivirus;
    block_page;
    body_scanning;
    custom_certificate;
    extended_email_matching;
    fips;
    logging;
    payload_log;
    proxy;
    ssh_session_log;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  activity_log_enabled : bool prop;
  id : string prop;
  non_identity_browser_isolation_enabled : bool prop;
  protocol_detection_enabled : bool prop;
  tls_decrypt_enabled : bool prop;
  url_browser_isolation_enabled : bool prop;
}

let make ?activity_log_enabled ?id
    ?non_identity_browser_isolation_enabled
    ?protocol_detection_enabled ?tls_decrypt_enabled
    ?url_browser_isolation_enabled ?(antivirus = [])
    ?(block_page = []) ?(body_scanning = [])
    ?(custom_certificate = []) ?(extended_email_matching = [])
    ?(fips = []) ?(logging = []) ?(payload_log = []) ?(proxy = [])
    ?(ssh_session_log = []) ~account_id __id =
  let __type = "cloudflare_teams_account" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       activity_log_enabled =
         Prop.computed __type __id "activity_log_enabled";
       id = Prop.computed __type __id "id";
       non_identity_browser_isolation_enabled =
         Prop.computed __type __id
           "non_identity_browser_isolation_enabled";
       protocol_detection_enabled =
         Prop.computed __type __id "protocol_detection_enabled";
       tls_decrypt_enabled =
         Prop.computed __type __id "tls_decrypt_enabled";
       url_browser_isolation_enabled =
         Prop.computed __type __id "url_browser_isolation_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_teams_account
        (cloudflare_teams_account ?activity_log_enabled ?id
           ?non_identity_browser_isolation_enabled
           ?protocol_detection_enabled ?tls_decrypt_enabled
           ?url_browser_isolation_enabled ~antivirus ~block_page
           ~body_scanning ~custom_certificate
           ~extended_email_matching ~fips ~logging ~payload_log
           ~proxy ~ssh_session_log ~account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?activity_log_enabled ?id
    ?non_identity_browser_isolation_enabled
    ?protocol_detection_enabled ?tls_decrypt_enabled
    ?url_browser_isolation_enabled ?(antivirus = [])
    ?(block_page = []) ?(body_scanning = [])
    ?(custom_certificate = []) ?(extended_email_matching = [])
    ?(fips = []) ?(logging = []) ?(payload_log = []) ?(proxy = [])
    ?(ssh_session_log = []) ~account_id __id =
  let (r : _ Tf_core.resource) =
    make ?activity_log_enabled ?id
      ?non_identity_browser_isolation_enabled
      ?protocol_detection_enabled ?tls_decrypt_enabled
      ?url_browser_isolation_enabled ~antivirus ~block_page
      ~body_scanning ~custom_certificate ~extended_email_matching
      ~fips ~logging ~payload_log ~proxy ~ssh_session_log ~account_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

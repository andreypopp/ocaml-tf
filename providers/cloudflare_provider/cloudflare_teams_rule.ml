(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_teams_rule__rule_settings__audit_ssh = {
  command_logging : bool;  (** Log all SSH commands. *)
}
[@@deriving yojson_of]
(** Settings for auditing SSH usage. *)

type cloudflare_teams_rule__rule_settings__biso_admin_controls = {
  disable_copy_paste : bool option; [@option]
      (** Disable copy-paste. *)
  disable_download : bool option; [@option]  (** Disable download. *)
  disable_keyboard : bool option; [@option]
      (** Disable keyboard usage. *)
  disable_printing : bool option; [@option]  (** Disable printing. *)
  disable_upload : bool option; [@option]  (** Disable upload. *)
}
[@@deriving yojson_of]
(** Configure how browser isolation behaves. *)

type cloudflare_teams_rule__rule_settings__check_session = {
  duration : string;
      (** Configure how fresh the session needs to be to be considered valid. *)
  enforce : bool;  (** Enable session enforcement for this rule. *)
}
[@@deriving yojson_of]
(** Configure how session check behaves. *)

type cloudflare_teams_rule__rule_settings__egress = {
  ipv4 : string;  (** The IPv4 address to be used for egress. *)
  ipv4_fallback : string option; [@option]
      (** The IPv4 address to be used for egress in the event of an error egressing with the primary IPv4. Can be '0.0.0.0' to indicate local egreass via Warp IPs. *)
  ipv6 : string;  (** The IPv6 range to be used for egress. *)
}
[@@deriving yojson_of]
(** Configure how Proxy traffic egresses. Can be set for rules with Egress action and Egress filter. Can be omitted to indicate local egress via Warp IPs. *)

type cloudflare_teams_rule__rule_settings__l4override = {
  ip : string;  (** Override IP to forward traffic to. *)
  port : float;  (** Override Port to forward traffic to. *)
}
[@@deriving yojson_of]
(** Settings to forward layer 4 traffic. *)

type cloudflare_teams_rule__rule_settings__notification_settings = {
  enabled : bool option; [@option]
      (** Enable notification settings. *)
  message : string option; [@option]  (** Notification content. *)
  support_url : string option; [@option]
      (** Support URL to show in the notification. *)
}
[@@deriving yojson_of]
(** Notification settings on a block rule. *)

type cloudflare_teams_rule__rule_settings__payload_log = {
  enabled : bool;
      (** Enable or disable DLP Payload Logging for this rule. *)
}
[@@deriving yojson_of]
(** Configure DLP Payload Logging settings for this rule. *)

type cloudflare_teams_rule__rule_settings__untrusted_cert = {
  action : string option; [@option]
      (** Action to be taken when the SSL certificate of upstream is invalid. Available values: `pass_through`, `block`, `error`. *)
}
[@@deriving yojson_of]
(** Configure untrusted certificate settings for this rule. *)

type cloudflare_teams_rule__rule_settings = {
  add_headers : (string * string) list option; [@option]
      (** Add custom headers to allowed requests in the form of key-value pairs. *)
  allow_child_bypass : bool option; [@option]
      (** Allow parent MSP accounts to enable bypass their children's rules. *)
  block_page_enabled : bool option; [@option]
      (** Indicator of block page enablement. *)
  block_page_reason : string option; [@option]
      (** The displayed reason for a user being blocked. *)
  bypass_parent_rule : bool option; [@option]
      (** Allow child MSP accounts to bypass their parent's rule. *)
  insecure_disable_dnssec_validation : bool option; [@option]
      (** Disable DNSSEC validation (must be Allow rule). *)
  ip_categories : bool option; [@option]
      (** Turns on IP category based filter on dns if the rule contains dns category checks. *)
  override_host : string option; [@option]
      (** The host to override matching DNS queries with. *)
  override_ips : string list option; [@option]
      (** The IPs to override matching DNS queries with. *)
  audit_ssh : cloudflare_teams_rule__rule_settings__audit_ssh list;
  biso_admin_controls :
    cloudflare_teams_rule__rule_settings__biso_admin_controls list;
  check_session :
    cloudflare_teams_rule__rule_settings__check_session list;
  egress : cloudflare_teams_rule__rule_settings__egress list;
  l4override : cloudflare_teams_rule__rule_settings__l4override list;
  notification_settings :
    cloudflare_teams_rule__rule_settings__notification_settings list;
  payload_log :
    cloudflare_teams_rule__rule_settings__payload_log list;
  untrusted_cert :
    cloudflare_teams_rule__rule_settings__untrusted_cert list;
}
[@@deriving yojson_of]
(** Additional rule settings. *)

type cloudflare_teams_rule = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  action : string;
      (** The action executed by matched teams rule. Available values: `allow`, `block`, `safesearch`, `ytrestricted`, `on`, `off`, `scan`, `noscan`, `isolate`, `noisolate`, `override`, `l4_override`, `egress`, `audit_ssh`. *)
  description : string;  (** The description of the teams rule. *)
  device_posture : string option; [@option]
      (** The wirefilter expression to be used for device_posture check matching. *)
  enabled : bool option; [@option]
      (** Indicator of rule enablement. *)
  filters : string list option; [@option]
      (** The protocol or layer to evaluate the traffic and identity expressions. *)
  identity : string option; [@option]
      (** The wirefilter expression to be used for identity matching. *)
  name : string;  (** The name of the teams rule. *)
  precedence : float;
      (** The evaluation precedence of the teams rule. *)
  traffic : string option; [@option]
      (** The wirefilter expression to be used for traffic matching. *)
  rule_settings : cloudflare_teams_rule__rule_settings list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Teams rule resource. Teams rules comprise secure web gateway policies. *)

let cloudflare_teams_rule ?device_posture ?enabled ?filters ?identity
    ?traffic ~account_id ~action ~description ~name ~precedence
    ~rule_settings __resource_id =
  let __resource_type = "cloudflare_teams_rule" in
  let __resource =
    {
      account_id;
      action;
      description;
      device_posture;
      enabled;
      filters;
      identity;
      name;
      precedence;
      traffic;
      rule_settings;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_teams_rule __resource);
  ()

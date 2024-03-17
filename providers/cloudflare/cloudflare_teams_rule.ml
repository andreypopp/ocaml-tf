(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_teams_rule__rule_settings__audit_ssh = {
  command_logging : bool prop;  (** Log all SSH commands. *)
}
[@@deriving yojson_of]
(** Settings for auditing SSH usage. *)

type cloudflare_teams_rule__rule_settings__biso_admin_controls = {
  disable_copy_paste : bool prop option; [@option]
      (** Disable copy-paste. *)
  disable_download : bool prop option; [@option]
      (** Disable download. *)
  disable_keyboard : bool prop option; [@option]
      (** Disable keyboard usage. *)
  disable_printing : bool prop option; [@option]
      (** Disable printing. *)
  disable_upload : bool prop option; [@option]  (** Disable upload. *)
}
[@@deriving yojson_of]
(** Configure how browser isolation behaves. *)

type cloudflare_teams_rule__rule_settings__check_session = {
  duration : string prop;
      (** Configure how fresh the session needs to be to be considered valid. *)
  enforce : bool prop;
      (** Enable session enforcement for this rule. *)
}
[@@deriving yojson_of]
(** Configure how session check behaves. *)

type cloudflare_teams_rule__rule_settings__egress = {
  ipv4 : string prop;  (** The IPv4 address to be used for egress. *)
  ipv4_fallback : string prop option; [@option]
      (** The IPv4 address to be used for egress in the event of an error egressing with the primary IPv4. Can be '0.0.0.0' to indicate local egreass via Warp IPs. *)
  ipv6 : string prop;  (** The IPv6 range to be used for egress. *)
}
[@@deriving yojson_of]
(** Configure how Proxy traffic egresses. Can be set for rules with Egress action and Egress filter. Can be omitted to indicate local egress via Warp IPs. *)

type cloudflare_teams_rule__rule_settings__l4override = {
  ip : string prop;  (** Override IP to forward traffic to. *)
  port : float prop;  (** Override Port to forward traffic to. *)
}
[@@deriving yojson_of]
(** Settings to forward layer 4 traffic. *)

type cloudflare_teams_rule__rule_settings__notification_settings = {
  enabled : bool prop option; [@option]
      (** Enable notification settings. *)
  message : string prop option; [@option]
      (** Notification content. *)
  support_url : string prop option; [@option]
      (** Support URL to show in the notification. *)
}
[@@deriving yojson_of]
(** Notification settings on a block rule. *)

type cloudflare_teams_rule__rule_settings__payload_log = {
  enabled : bool prop;
      (** Enable or disable DLP Payload Logging for this rule. *)
}
[@@deriving yojson_of]
(** Configure DLP Payload Logging settings for this rule. *)

type cloudflare_teams_rule__rule_settings__untrusted_cert = {
  action : string prop option; [@option]
      (** Action to be taken when the SSL certificate of upstream is invalid. Available values: `pass_through`, `block`, `error`. *)
}
[@@deriving yojson_of]
(** Configure untrusted certificate settings for this rule. *)

type cloudflare_teams_rule__rule_settings = {
  add_headers : (string * string prop) list option; [@option]
      (** Add custom headers to allowed requests in the form of key-value pairs. *)
  allow_child_bypass : bool prop option; [@option]
      (** Allow parent MSP accounts to enable bypass their children's rules. *)
  block_page_enabled : bool prop option; [@option]
      (** Indicator of block page enablement. *)
  block_page_reason : string prop option; [@option]
      (** The displayed reason for a user being blocked. *)
  bypass_parent_rule : bool prop option; [@option]
      (** Allow child MSP accounts to bypass their parent's rule. *)
  insecure_disable_dnssec_validation : bool prop option; [@option]
      (** Disable DNSSEC validation (must be Allow rule). *)
  ip_categories : bool prop option; [@option]
      (** Turns on IP category based filter on dns if the rule contains dns category checks. *)
  override_host : string prop option; [@option]
      (** The host to override matching DNS queries with. *)
  override_ips : string prop list option; [@option]
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
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  action : string prop;
      (** The action executed by matched teams rule. Available values: `allow`, `block`, `safesearch`, `ytrestricted`, `on`, `off`, `scan`, `noscan`, `isolate`, `noisolate`, `override`, `l4_override`, `egress`, `audit_ssh`. *)
  description : string prop;
      (** The description of the teams rule. *)
  device_posture : string prop option; [@option]
      (** The wirefilter expression to be used for device_posture check matching. *)
  enabled : bool prop option; [@option]
      (** Indicator of rule enablement. *)
  filters : string prop list option; [@option]
      (** The protocol or layer to evaluate the traffic and identity expressions. *)
  id : string prop option; [@option]  (** id *)
  identity : string prop option; [@option]
      (** The wirefilter expression to be used for identity matching. *)
  name : string prop;  (** The name of the teams rule. *)
  precedence : float prop;
      (** The evaluation precedence of the teams rule. *)
  traffic : string prop option; [@option]
      (** The wirefilter expression to be used for traffic matching. *)
  rule_settings : cloudflare_teams_rule__rule_settings list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Teams rule resource. Teams rules comprise secure web gateway policies. *)

type t = {
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

let cloudflare_teams_rule ?device_posture ?enabled ?filters ?id
    ?identity ?traffic ~account_id ~action ~description ~name
    ~precedence ~rule_settings __resource_id =
  let __resource_type = "cloudflare_teams_rule" in
  let __resource =
    ({
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
      : cloudflare_teams_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_teams_rule __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       action = Prop.computed __resource_type __resource_id "action";
       description =
         Prop.computed __resource_type __resource_id "description";
       device_posture =
         Prop.computed __resource_type __resource_id "device_posture";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       filters =
         Prop.computed __resource_type __resource_id "filters";
       id = Prop.computed __resource_type __resource_id "id";
       identity =
         Prop.computed __resource_type __resource_id "identity";
       name = Prop.computed __resource_type __resource_id "name";
       precedence =
         Prop.computed __resource_type __resource_id "precedence";
       traffic =
         Prop.computed __resource_type __resource_id "traffic";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes

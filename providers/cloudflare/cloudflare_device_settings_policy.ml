(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_device_settings_policy = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  allow_mode_switch : bool prop option; [@option]
      (** Whether to allow mode switch for this policy. *)
  allow_updates : bool prop option; [@option]
      (** Whether to allow updates under this policy. *)
  allowed_to_leave : bool prop option; [@option]
      (** Whether to allow devices to leave the organization. Defaults to `true`. *)
  auto_connect : float prop option; [@option]
      (** The amount of time in seconds to reconnect after having been disabled. *)
  captive_portal : float prop option; [@option]
      (** The captive portal value for this policy. Defaults to `180`. *)
  default : bool prop option; [@option]
      (** Whether the policy refers to the default account policy. *)
  description : string prop;  (** Description of Policy. *)
  disable_auto_fallback : bool prop option; [@option]
      (** Whether to disable auto fallback for this policy. *)
  enabled : bool prop option; [@option]
      (** Whether the policy is enabled (cannot be set for default policies). Defaults to `true`. *)
  exclude_office_ips : bool prop option; [@option]
      (** Whether to add Microsoft IPs to split tunnel exclusions. *)
  id : string prop option; [@option]  (** id *)
  match_ : string prop option; [@option] [@key "match"]
      (** Wirefilter expression to match a device against when evaluating whether this policy should take effect for that device. *)
  name : string prop;  (** Name of the policy. *)
  precedence : float prop option; [@option]
      (** The precedence of the policy. Lower values indicate higher precedence. *)
  service_mode_v2_mode : string prop option; [@option]
      (** The service mode. Available values: `1dot1`, `warp`, `proxy`, `posture_only`, `warp_tunnel_only`. Defaults to `warp`. *)
  service_mode_v2_port : float prop option; [@option]
      (** The port to use for the proxy service mode. Required when using `service_mode_v2_mode`. *)
  support_url : string prop option; [@option]
      (** The support URL that will be opened when sending feedback. *)
  switch_locked : bool prop option; [@option]
      (** Enablement of the ZT client switch lock. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Device Settings Policy resource. Device policies configure settings applied to WARP devices. *)

let cloudflare_device_settings_policy ?allow_mode_switch
    ?allow_updates ?allowed_to_leave ?auto_connect ?captive_portal
    ?default ?disable_auto_fallback ?enabled ?exclude_office_ips ?id
    ?match_ ?precedence ?service_mode_v2_mode ?service_mode_v2_port
    ?support_url ?switch_locked ~account_id ~description ~name () :
    cloudflare_device_settings_policy =
  {
    account_id;
    allow_mode_switch;
    allow_updates;
    allowed_to_leave;
    auto_connect;
    captive_portal;
    default;
    description;
    disable_auto_fallback;
    enabled;
    exclude_office_ips;
    id;
    match_;
    name;
    precedence;
    service_mode_v2_mode;
    service_mode_v2_port;
    support_url;
    switch_locked;
  }

type t = {
  account_id : string prop;
  allow_mode_switch : bool prop;
  allow_updates : bool prop;
  allowed_to_leave : bool prop;
  auto_connect : float prop;
  captive_portal : float prop;
  default : bool prop;
  description : string prop;
  disable_auto_fallback : bool prop;
  enabled : bool prop;
  exclude_office_ips : bool prop;
  id : string prop;
  match_ : string prop;
  name : string prop;
  precedence : float prop;
  service_mode_v2_mode : string prop;
  service_mode_v2_port : float prop;
  support_url : string prop;
  switch_locked : bool prop;
}

let make ?allow_mode_switch ?allow_updates ?allowed_to_leave
    ?auto_connect ?captive_portal ?default ?disable_auto_fallback
    ?enabled ?exclude_office_ips ?id ?match_ ?precedence
    ?service_mode_v2_mode ?service_mode_v2_port ?support_url
    ?switch_locked ~account_id ~description ~name __id =
  let __type = "cloudflare_device_settings_policy" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       allow_mode_switch =
         Prop.computed __type __id "allow_mode_switch";
       allow_updates = Prop.computed __type __id "allow_updates";
       allowed_to_leave =
         Prop.computed __type __id "allowed_to_leave";
       auto_connect = Prop.computed __type __id "auto_connect";
       captive_portal = Prop.computed __type __id "captive_portal";
       default = Prop.computed __type __id "default";
       description = Prop.computed __type __id "description";
       disable_auto_fallback =
         Prop.computed __type __id "disable_auto_fallback";
       enabled = Prop.computed __type __id "enabled";
       exclude_office_ips =
         Prop.computed __type __id "exclude_office_ips";
       id = Prop.computed __type __id "id";
       match_ = Prop.computed __type __id "match";
       name = Prop.computed __type __id "name";
       precedence = Prop.computed __type __id "precedence";
       service_mode_v2_mode =
         Prop.computed __type __id "service_mode_v2_mode";
       service_mode_v2_port =
         Prop.computed __type __id "service_mode_v2_port";
       support_url = Prop.computed __type __id "support_url";
       switch_locked = Prop.computed __type __id "switch_locked";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_device_settings_policy
        (cloudflare_device_settings_policy ?allow_mode_switch
           ?allow_updates ?allowed_to_leave ?auto_connect
           ?captive_portal ?default ?disable_auto_fallback ?enabled
           ?exclude_office_ips ?id ?match_ ?precedence
           ?service_mode_v2_mode ?service_mode_v2_port ?support_url
           ?switch_locked ~account_id ~description ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_mode_switch ?allow_updates
    ?allowed_to_leave ?auto_connect ?captive_portal ?default
    ?disable_auto_fallback ?enabled ?exclude_office_ips ?id ?match_
    ?precedence ?service_mode_v2_mode ?service_mode_v2_port
    ?support_url ?switch_locked ~account_id ~description ~name __id =
  let (r : _ Tf_core.resource) =
    make ?allow_mode_switch ?allow_updates ?allowed_to_leave
      ?auto_connect ?captive_portal ?default ?disable_auto_fallback
      ?enabled ?exclude_office_ips ?id ?match_ ?precedence
      ?service_mode_v2_mode ?service_mode_v2_port ?support_url
      ?switch_locked ~account_id ~description ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

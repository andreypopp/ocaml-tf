(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type cloudflare_device_settings_policy = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  allow_mode_switch : bool option; [@option]
      (** Whether to allow mode switch for this policy. *)
  allow_updates : bool option; [@option]
      (** Whether to allow updates under this policy. *)
  allowed_to_leave : bool option; [@option]
      (** Whether to allow devices to leave the organization. Defaults to `true`. *)
  auto_connect : float option; [@option]
      (** The amount of time in seconds to reconnect after having been disabled. *)
  captive_portal : float option; [@option]
      (** The captive portal value for this policy. Defaults to `180`. *)
  default : bool option; [@option]
      (** Whether the policy refers to the default account policy. *)
  description : string;  (** Description of Policy. *)
  disable_auto_fallback : bool option; [@option]
      (** Whether to disable auto fallback for this policy. *)
  enabled : bool option; [@option]
      (** Whether the policy is enabled (cannot be set for default policies). Defaults to `true`. *)
  exclude_office_ips : bool option; [@option]
      (** Whether to add Microsoft IPs to split tunnel exclusions. *)
  match_ : string option; [@option] [@key "match"]
      (** Wirefilter expression to match a device against when evaluating whether this policy should take effect for that device. *)
  name : string;  (** Name of the policy. *)
  precedence : float option; [@option]
      (** The precedence of the policy. Lower values indicate higher precedence. *)
  service_mode_v2_mode : string option; [@option]
      (** The service mode. Available values: `1dot1`, `warp`, `proxy`, `posture_only`, `warp_tunnel_only`. Defaults to `warp`. *)
  service_mode_v2_port : float option; [@option]
      (** The port to use for the proxy service mode. Required when using `service_mode_v2_mode`. *)
  support_url : string option; [@option]
      (** The support URL that will be opened when sending feedback. *)
  switch_locked : bool option; [@option]
      (** Enablement of the ZT client switch lock. *)
}
[@@deriving yojson_of]
(** Provides a Cloudflare Device Settings Policy resource. Device policies configure settings applied to WARP devices. *)

let cloudflare_device_settings_policy ?allow_mode_switch
    ?allow_updates ?allowed_to_leave ?auto_connect ?captive_portal
    ?default ?disable_auto_fallback ?enabled ?exclude_office_ips
    ?match_ ?precedence ?service_mode_v2_mode ?service_mode_v2_port
    ?support_url ?switch_locked ~account_id ~description ~name
    __resource_id =
  let __resource_type = "cloudflare_device_settings_policy" in
  let __resource =
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
      match_;
      name;
      precedence;
      service_mode_v2_mode;
      service_mode_v2_port;
      support_url;
      switch_locked;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_device_settings_policy __resource);
  ()

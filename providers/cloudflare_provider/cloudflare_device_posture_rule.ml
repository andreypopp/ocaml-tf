(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_device_posture_rule__input = {
  active_threats : float prop option; [@option]
      (** The number of active threats from SentinelOne. *)
  certificate_id : string prop option; [@option]
      (** The UUID of a Cloudflare managed certificate. *)
  check_disks : string prop list option; [@option]
      (** Specific volume(s) to check for encryption. *)
  cn : string prop option; [@option]
      (** The common name for a certificate. *)
  compliance_status : string prop option; [@option]
      (** The workspace one device compliance status. Available values: `compliant`, `noncompliant`. *)
  connection_id : string prop option; [@option]
      (** The workspace one connection id. *)
  count_operator : string prop option; [@option]
      (** The count comparison operator for kolide. Available values: `>`, `>=`, `<`, `<=`, `==`. *)
  domain : string prop option; [@option]
      (** The domain that the client must join. *)
  eid_last_seen : string prop option; [@option]
      (** The datetime a device last seen in RFC 3339 format from Tanium. *)
  enabled : bool prop option; [@option]
      (** True if the firewall must be enabled. *)
  exists : bool prop option; [@option]
      (** Checks if the file should exist. *)
  id : string prop option; [@option]
      (** The Teams List id. Required for `serial_number` and `unique_client_id` rule types. *)
  infected : bool prop option; [@option]
      (** True if SentinelOne device is infected. *)
  is_active : bool prop option; [@option]
      (** True if SentinelOne device is active. *)
  issue_count : string prop option; [@option]
      (** The number of issues for kolide. *)
  network_status : string prop option; [@option]
      (** The network status from SentinelOne. Available values: `connected`, `disconnected`, `disconnecting`, `connecting`. *)
  operator : string prop option; [@option]
      (** The version comparison operator. Available values: `>`, `>=`, `<`, `<=`, `==`. *)
  os : string prop option; [@option]
      (** OS signal score from Crowdstrike. Value must be between 1 and 100. *)
  os_distro_name : string prop option; [@option]
      (** The operating system excluding version information. *)
  os_distro_revision : string prop option; [@option]
      (** The operating system version excluding OS name information or release name. *)
  overall : string prop option; [@option]
      (** Overall ZTA score from Crowdstrike. Value must be between 1 and 100. *)
  path : string prop option; [@option]  (** The path to the file. *)
  require_all : bool prop option; [@option]
      (** True if all drives must be encrypted. *)
  risk_level : string prop option; [@option]
      (** The risk level from Tanium. Available values: `low`, `medium`, `high`, `critical`. *)
  running : bool prop option; [@option]
      (** Checks if the application should be running. *)
  sensor_config : string prop option; [@option]
      (** Sensor signal score from Crowdstrike. Value must be between 1 and 100. *)
  sha256 : string prop option; [@option]
      (** The sha256 hash of the file. *)
  thumbprint : string prop option; [@option]
      (** The thumbprint of the file certificate. *)
  total_score : float prop option; [@option]
      (** The total score from Tanium. *)
  version : string prop option; [@option]
      (** The operating system semantic version. *)
  version_operator : string prop option; [@option]
      (** The version comparison operator for crowdstrike. Available values: `>`, `>=`, `<`, `<=`, `==`. *)
}
[@@deriving yojson_of]
(** Required for all rule types except `warp`, `gateway`, and `tanium`. *)

type cloudflare_device_posture_rule__match = {
  platform : string prop option; [@option]
      (** The platform of the device. Available values: `windows`, `mac`, `linux`, `android`, `ios`, `chromeos`. *)
}
[@@deriving yojson_of]
(** The conditions that the client must match to run the rule. *)

type cloudflare_device_posture_rule = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  description : string prop option; [@option]  (** description *)
  expiration : string prop option; [@option]
      (** Expire posture results after the specified amount of time. Must be in the format `1h` or `30m`. Valid units are `h` and `m`. *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]
      (** Name of the device posture rule. *)
  schedule : string prop option; [@option]
      (** Tells the client when to run the device posture check. Must be in the format `1h` or `30m`. Valid units are `h` and `m`. *)
  type_ : string prop; [@key "type"]
      (** The device posture rule type. Available values: `serial_number`, `file`, `application`, `gateway`, `warp`, `domain_joined`, `os_version`, `disk_encryption`, `firewall`, `client_certificate`, `workspace_one`, `unique_client_id`, `crowdstrike_s2s`, `sentinelone`, `kolide`, `tanium_s2s`, `intune`, `sentinelone_s2s`. *)
  input : cloudflare_device_posture_rule__input list;
  match_ : cloudflare_device_posture_rule__match list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Device Posture Rule resource. Device posture rules configure security policies for device posture checks.
 *)

let cloudflare_device_posture_rule ?description ?expiration ?id ?name
    ?schedule ~account_id ~type_ ~input ~match_ __resource_id =
  let __resource_type = "cloudflare_device_posture_rule" in
  let __resource =
    {
      account_id;
      description;
      expiration;
      id;
      name;
      schedule;
      type_;
      input;
      match_;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_device_posture_rule __resource);
  ()

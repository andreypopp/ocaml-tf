(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_device_posture_integration__config = {
  access_client_id : string option; [@option]
      (** The Access client ID to be used as the `Cf-Access-Client-ID` header when making a request to the `api_url`. *)
  access_client_secret : string option; [@option]
      (** The Access client secret to be used as the `Cf-Access-Client-Secret` header when making a request to the `api_url`. *)
  api_url : string option; [@option]
      (** The third-party API's URL. *)
  auth_url : string option; [@option]
      (** The third-party authorization API URL. *)
  client_id : string option; [@option]
      (** The client identifier for authenticating API calls. *)
  client_key : string option; [@option]
      (** The client key for authenticating API calls. *)
  client_secret : string option; [@option]
      (** The client secret for authenticating API calls. *)
  customer_id : string option; [@option]
      (** The customer identifier for authenticating API calls. *)
}
[@@deriving yojson_of]
(** The device posture integration's connection authorization parameters. *)

type cloudflare_device_posture_integration = {
  account_id : string;
      (** The account identifier to target for the resource. *)
  identifier : string option; [@option]  (** identifier *)
  interval : string option; [@option]
      (** Indicates the frequency with which to poll the third-party API. Must be in the format `1h` or `30m`. *)
  name : string;  (** Name of the device posture integration. *)
  type_ : string; [@key "type"]
      (** The device posture integration type. Available values: `workspace_one`, `uptycs`, `crowdstrike_s2s`, `intune`, `kolide`, `sentinelone_s2s`, `tanium_s2s`. *)
  config : cloudflare_device_posture_integration__config list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Device Posture Integration resource. Device
posture integrations configure third-party data providers for device
posture rules.
 *)

let cloudflare_device_posture_integration ?identifier ?interval
    ~account_id ~name ~type_ ~config __resource_id =
  let __resource_type = "cloudflare_device_posture_integration" in
  let __resource =
    { account_id; identifier; interval; name; type_; config }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_device_posture_integration __resource);
  ()

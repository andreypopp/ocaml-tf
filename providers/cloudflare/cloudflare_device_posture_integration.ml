(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type config = {
  access_client_id : string prop option; [@option]
      (** The Access client ID to be used as the `Cf-Access-Client-ID` header when making a request to the `api_url`. *)
  access_client_secret : string prop option; [@option]
      (** The Access client secret to be used as the `Cf-Access-Client-Secret` header when making a request to the `api_url`. *)
  api_url : string prop option; [@option]
      (** The third-party API's URL. *)
  auth_url : string prop option; [@option]
      (** The third-party authorization API URL. *)
  client_id : string prop option; [@option]
      (** The client identifier for authenticating API calls. *)
  client_key : string prop option; [@option]
      (** The client key for authenticating API calls. *)
  client_secret : string prop option; [@option]
      (** The client secret for authenticating API calls. *)
  customer_id : string prop option; [@option]
      (** The customer identifier for authenticating API calls. *)
}
[@@deriving yojson_of]
(** The device posture integration's connection authorization parameters. *)

type cloudflare_device_posture_integration = {
  account_id : string prop;
      (** The account identifier to target for the resource. *)
  id : string prop option; [@option]  (** id *)
  identifier : string prop option; [@option]  (** identifier *)
  interval : string prop option; [@option]
      (** Indicates the frequency with which to poll the third-party API. Must be in the format `1h` or `30m`. *)
  name : string prop;  (** Name of the device posture integration. *)
  type_ : string prop; [@key "type"]
      (** The device posture integration type. Available values: `workspace_one`, `uptycs`, `crowdstrike_s2s`, `intune`, `kolide`, `sentinelone_s2s`, `tanium_s2s`. *)
  config : config list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare Device Posture Integration resource. Device
posture integrations configure third-party data providers for device
posture rules.
 *)

let config ?access_client_id ?access_client_secret ?api_url ?auth_url
    ?client_id ?client_key ?client_secret ?customer_id () : config =
  {
    access_client_id;
    access_client_secret;
    api_url;
    auth_url;
    client_id;
    client_key;
    client_secret;
    customer_id;
  }

let cloudflare_device_posture_integration ?id ?identifier ?interval
    ~account_id ~name ~type_ ~config () :
    cloudflare_device_posture_integration =
  { account_id; id; identifier; interval; name; type_; config }

type t = {
  account_id : string prop;
  id : string prop;
  identifier : string prop;
  interval : string prop;
  name : string prop;
  type_ : string prop;
}

let register ?tf_module ?id ?identifier ?interval ~account_id ~name
    ~type_ ~config __resource_id =
  let __resource_type = "cloudflare_device_posture_integration" in
  let __resource =
    cloudflare_device_posture_integration ?id ?identifier ?interval
      ~account_id ~name ~type_ ~config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_device_posture_integration __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       identifier =
         Prop.computed __resource_type __resource_id "identifier";
       interval =
         Prop.computed __resource_type __resource_id "interval";
       name = Prop.computed __resource_type __resource_id "name";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_apigee_target_server__s_sl_info__common_name = {
  value : string option; [@option]
      (** The TLS Common Name string of the certificate. *)
  wildcard_match : bool option; [@option]
      (** Indicates whether the cert should be matched against as a wildcard cert. *)
}
[@@deriving yojson_of]
(** The TLS Common Name of the certificate. *)

type google_apigee_target_server__s_sl_info = {
  ciphers : string list option; [@option]
      (** The SSL/TLS cipher suites to be used. For programmable proxies, it must be one of the cipher suite names listed in: http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites. For configurable proxies, it must follow the configuration specified in: https://commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-suite-configuration. This setting has no effect for configurable proxies when negotiating TLS 1.3. *)
  client_auth_enabled : bool option; [@option]
      (** Enables two-way TLS. *)
  enabled : bool;
      (** Enables TLS. If false, neither one-way nor two-way TLS will be enabled. *)
  ignore_validation_errors : bool option; [@option]
      (** If true, Edge ignores TLS certificate errors. Valid when configuring TLS for target servers and target endpoints, and when configuring virtual hosts that use 2-way TLS. When used with a target endpoint/target server, if the backend system uses SNI and returns a cert with a subject Distinguished Name (DN) that does not match the hostname, there is no way to ignore the error and the connection fails. *)
  key_alias : string option; [@option]
      (** Required if clientAuthEnabled is true. The resource ID for the alias containing the private key and cert. *)
  key_store : string option; [@option]
      (** Required if clientAuthEnabled is true. The resource ID of the keystore. *)
  protocols : string list option; [@option]
      (** The TLS versioins to be used. *)
  trust_store : string option; [@option]
      (** The resource ID of the truststore. *)
  common_name :
    google_apigee_target_server__s_sl_info__common_name list;
}
[@@deriving yojson_of]
(** Specifies TLS configuration info for this TargetServer. The JSON name is sSLInfo for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration. *)

type google_apigee_target_server__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_apigee_target_server__timeouts *)

type google_apigee_target_server = {
  description : string option; [@option]
      (** A human-readable description of this TargetServer. *)
  env_id : string;
      (** The Apigee environment group associated with the Apigee environment,
in the format 'organizations/{{org_name}}/environments/{{env_name}}'. *)
  host : string;
      (** The host name this target connects to. Value must be a valid hostname as described by RFC-1123. *)
  is_enabled : bool option; [@option]
      (** Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true. *)
  name : string;
      (** The resource id of this reference. Values must match the regular expression [\w\s-.]+. *)
  port : float;
      (** The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive. *)
  s_sl_info : google_apigee_target_server__s_sl_info list;
  timeouts : google_apigee_target_server__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_target_server *)

let google_apigee_target_server ?description ?is_enabled ?timeouts
    ~env_id ~host ~name ~port ~s_sl_info __resource_id =
  let __resource_type = "google_apigee_target_server" in
  let __resource =
    {
      description;
      env_id;
      host;
      is_enabled;
      name;
      port;
      s_sl_info;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_target_server __resource);
  ()

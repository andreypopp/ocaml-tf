(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_apigee_target_server__s_sl_info__common_name = {
  value : string prop option; [@option]
      (** The TLS Common Name string of the certificate. *)
  wildcard_match : bool prop option; [@option]
      (** Indicates whether the cert should be matched against as a wildcard cert. *)
}
[@@deriving yojson_of]
(** The TLS Common Name of the certificate. *)

type google_apigee_target_server__s_sl_info = {
  ciphers : string prop list option; [@option]
      (** The SSL/TLS cipher suites to be used. For programmable proxies, it must be one of the cipher suite names listed in: http://docs.oracle.com/javase/8/docs/technotes/guides/security/StandardNames.html#ciphersuites. For configurable proxies, it must follow the configuration specified in: https://commondatastorage.googleapis.com/chromium-boringssl-docs/ssl.h.html#Cipher-suite-configuration. This setting has no effect for configurable proxies when negotiating TLS 1.3. *)
  client_auth_enabled : bool prop option; [@option]
      (** Enables two-way TLS. *)
  enabled : bool prop;
      (** Enables TLS. If false, neither one-way nor two-way TLS will be enabled. *)
  ignore_validation_errors : bool prop option; [@option]
      (** If true, Edge ignores TLS certificate errors. Valid when configuring TLS for target servers and target endpoints, and when configuring virtual hosts that use 2-way TLS. When used with a target endpoint/target server, if the backend system uses SNI and returns a cert with a subject Distinguished Name (DN) that does not match the hostname, there is no way to ignore the error and the connection fails. *)
  key_alias : string prop option; [@option]
      (** Required if clientAuthEnabled is true. The resource ID for the alias containing the private key and cert. *)
  key_store : string prop option; [@option]
      (** Required if clientAuthEnabled is true. The resource ID of the keystore. *)
  protocols : string prop list option; [@option]
      (** The TLS versioins to be used. *)
  trust_store : string prop option; [@option]
      (** The resource ID of the truststore. *)
  common_name :
    google_apigee_target_server__s_sl_info__common_name list;
}
[@@deriving yojson_of]
(** Specifies TLS configuration info for this TargetServer. The JSON name is sSLInfo for legacy/backwards compatibility reasons -- Edge originally supported SSL, and the name is still used for TLS configuration. *)

type google_apigee_target_server__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_apigee_target_server__timeouts *)

type google_apigee_target_server = {
  description : string prop option; [@option]
      (** A human-readable description of this TargetServer. *)
  env_id : string prop;
      (** The Apigee environment group associated with the Apigee environment,
in the format 'organizations/{{org_name}}/environments/{{env_name}}'. *)
  host : string prop;
      (** The host name this target connects to. Value must be a valid hostname as described by RFC-1123. *)
  id : string prop option; [@option]  (** id *)
  is_enabled : bool prop option; [@option]
      (** Enabling/disabling a TargetServer is useful when TargetServers are used in load balancing configurations, and one or more TargetServers need to taken out of rotation periodically. Defaults to true. *)
  name : string prop;
      (** The resource id of this reference. Values must match the regular expression [\w\s-.]+. *)
  port : float prop;
      (** The port number this target connects to on the given host. Value must be between 1 and 65535, inclusive. *)
  protocol : string prop option; [@option]
      (** Immutable. The protocol used by this TargetServer. Possible values: [HTTP, HTTP2, GRPC_TARGET, GRPC, EXTERNAL_CALLOUT] *)
  s_sl_info : google_apigee_target_server__s_sl_info list;
  timeouts : google_apigee_target_server__timeouts option;
}
[@@deriving yojson_of]
(** google_apigee_target_server *)

type t = {
  description : string prop;
  env_id : string prop;
  host : string prop;
  id : string prop;
  is_enabled : bool prop;
  name : string prop;
  port : float prop;
  protocol : string prop;
}

let google_apigee_target_server ?description ?id ?is_enabled
    ?protocol ?timeouts ~env_id ~host ~name ~port ~s_sl_info
    __resource_id =
  let __resource_type = "google_apigee_target_server" in
  let __resource =
    ({
       description;
       env_id;
       host;
       id;
       is_enabled;
       name;
       port;
       protocol;
       s_sl_info;
       timeouts;
     }
      : google_apigee_target_server)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_apigee_target_server __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       env_id = Prop.computed __resource_type __resource_id "env_id";
       host = Prop.computed __resource_type __resource_id "host";
       id = Prop.computed __resource_type __resource_id "id";
       is_enabled =
         Prop.computed __resource_type __resource_id "is_enabled";
       name = Prop.computed __resource_type __resource_id "name";
       port = Prop.computed __resource_type __resource_id "port";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
     }
      : t)
  in
  __resource_attributes

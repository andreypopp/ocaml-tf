(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_network_security_gateway_security_policy_rule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_security_gateway_security_policy_rule__timeouts *)

type google_network_security_gateway_security_policy_rule = {
  application_matcher : string option; [@option]
      (** CEL expression for matching on L7/application level criteria. *)
  basic_profile : string;
      (** Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY. Possible values: [BASIC_PROFILE_UNSPECIFIED, ALLOW, DENY] *)
  description : string option; [@option]
      (** Free-text description of the resource. *)
  enabled : bool;  (** Whether the rule is enforced. *)
  gateway_security_policy : string;
      (** The name of the gatewat security policy this rule belongs to. *)
  id : string option; [@option]  (** id *)
  location : string;
      (** The location of the gateway security policy. *)
  name : string;
      (** Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
rule should match the pattern: (^a-z?$). *)
  priority : float;
      (** Priority of the rule. Lower number corresponds to higher precedence. *)
  project : string option; [@option]  (** project *)
  session_matcher : string;
      (** CEL expression for matching on session criteria. *)
  tls_inspection_enabled : bool option; [@option]
      (** Flag to enable TLS inspection of traffic matching on. Can only be true if the
parent GatewaySecurityPolicy references a TLSInspectionConfig. *)
  timeouts :
    google_network_security_gateway_security_policy_rule__timeouts
    option;
}
[@@deriving yojson_of]
(** google_network_security_gateway_security_policy_rule *)

let google_network_security_gateway_security_policy_rule
    ?application_matcher ?description ?id ?project
    ?tls_inspection_enabled ?timeouts ~basic_profile ~enabled
    ~gateway_security_policy ~location ~name ~priority
    ~session_matcher __resource_id =
  let __resource_type =
    "google_network_security_gateway_security_policy_rule"
  in
  let __resource =
    {
      application_matcher;
      basic_profile;
      description;
      enabled;
      gateway_security_policy;
      id;
      location;
      name;
      priority;
      project;
      session_matcher;
      tls_inspection_enabled;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_security_gateway_security_policy_rule
       __resource);
  ()

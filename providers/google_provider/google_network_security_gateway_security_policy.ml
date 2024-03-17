(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_network_security_gateway_security_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_security_gateway_security_policy__timeouts *)

type google_network_security_gateway_security_policy = {
  description : string option; [@option]
      (** A free-text description of the resource. Max length 1024 characters. *)
  location : string option; [@option]
      (** The location of the gateway security policy.
The default value is 'global'. *)
  name : string;
      (** Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gatewaySecurityPolicy}
gatewaySecurityPolicy should match the pattern:(^a-z?$). *)
  timeouts :
    google_network_security_gateway_security_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_network_security_gateway_security_policy *)

let google_network_security_gateway_security_policy ?description
    ?location ?timeouts ~name __resource_id =
  let __resource_type =
    "google_network_security_gateway_security_policy"
  in
  let __resource = { description; location; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_security_gateway_security_policy
       __resource);
  ()

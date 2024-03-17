(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_network_security_gateway_security_policy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_security_gateway_security_policy__timeouts *)

type google_network_security_gateway_security_policy = {
  description : string prop option; [@option]
      (** A free-text description of the resource. Max length 1024 characters. *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]
      (** The location of the gateway security policy.
The default value is 'global'. *)
  name : string prop;
      (** Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gatewaySecurityPolicy}
gatewaySecurityPolicy should match the pattern:(^a-z?$). *)
  project : string prop option; [@option]  (** project *)
  timeouts :
    google_network_security_gateway_security_policy__timeouts option;
}
[@@deriving yojson_of]
(** google_network_security_gateway_security_policy *)

let google_network_security_gateway_security_policy ?description ?id
    ?location ?project ?timeouts ~name __resource_id =
  let __resource_type =
    "google_network_security_gateway_security_policy"
  in
  let __resource =
    { description; id; location; name; project; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_security_gateway_security_policy
       __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_network_services_gateway__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_services_gateway__timeouts *)

type google_network_services_gateway = {
  certificate_urls : string list option; [@option]
      (** A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection.
This feature only applies to gateways of type 'SECURE_WEB_GATEWAY'. *)
  delete_swg_autogen_router_on_destroy : bool option; [@option]
      (** When deleting a gateway of type 'SECURE_WEB_GATEWAY', this boolean option will also delete auto generated router by the gateway creation.
If there is no other gateway of type 'SECURE_WEB_GATEWAY' remaining for that region and network it will be deleted. *)
  description : string option; [@option]
      (** A free-text description of the resource. Max length 1024 characters. *)
  gateway_security_policy : string option; [@option]
      (** A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections.
For example: 'projects/*/locations/*/gatewaySecurityPolicies/swg-policy'.
This policy is specific to gateways of type 'SECURE_WEB_GATEWAY'. *)
  labels : (string * string) list option; [@option]
      (** Set of label tags associated with the Gateway resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string option; [@option]
      (** The location of the gateway.
The default value is 'global'. *)
  name : string;
      (** Short name of the Gateway resource to be created. *)
  network : string option; [@option]
      (** The relative resource name identifying the VPC network that is using this configuration.
For example: 'projects/*/global/networks/network-1'.
Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'. *)
  ports : float list;
      (** One or more port numbers (1-65535), on which the Gateway will receive traffic.
The proxy binds to the specified ports. Gateways of type 'SECURE_WEB_GATEWAY' are
limited to 1 port. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 and support multiple ports. *)
  scope : string option; [@option]
      (** Immutable. Scope determines how configuration across multiple Gateway instances are merged.
The configuration for multiple Gateway instances with the same scope will be merged as presented as
a single coniguration to the proxy/load balancer.
Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens. *)
  server_tls_policy : string option; [@option]
      (** A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated.
If empty, TLS termination is disabled. *)
  subnetwork : string option; [@option]
      (** The relative resource name identifying the subnetwork in which this SWG is allocated.
For example: 'projects/*/regions/us-central1/subnetworks/network-1'.
Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY. *)
  type_ : string; [@key "type"]
      (** Immutable. The type of the customer-managed gateway. Possible values are: * OPEN_MESH * SECURE_WEB_GATEWAY. Possible values: [TYPE_UNSPECIFIED, OPEN_MESH, SECURE_WEB_GATEWAY] *)
  timeouts : google_network_services_gateway__timeouts option;
}
[@@deriving yojson_of]
(** google_network_services_gateway *)

let google_network_services_gateway ?certificate_urls
    ?delete_swg_autogen_router_on_destroy ?description
    ?gateway_security_policy ?labels ?location ?network ?scope
    ?server_tls_policy ?subnetwork ?timeouts ~name ~ports ~type_
    __resource_id =
  let __resource_type = "google_network_services_gateway" in
  let __resource =
    {
      certificate_urls;
      delete_swg_autogen_router_on_destroy;
      description;
      gateway_security_policy;
      labels;
      location;
      name;
      network;
      ports;
      scope;
      server_tls_policy;
      subnetwork;
      type_;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_services_gateway __resource);
  ()

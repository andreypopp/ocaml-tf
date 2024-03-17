(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_network_services_gateway__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_services_gateway__timeouts *)

type google_network_services_gateway = {
  addresses : string prop list option; [@option]
      (** Zero or one IPv4-address on which the Gateway will receive the traffic. When no address is provided,
an IP from the subnetwork is allocated This field only applies to gateways of type 'SECURE_WEB_GATEWAY'.
Gateways of type 'OPEN_MESH' listen on 0.0.0.0. *)
  certificate_urls : string prop list option; [@option]
      (** A fully-qualified Certificates URL reference. The proxy presents a Certificate (selected based on SNI) when establishing a TLS connection.
This feature only applies to gateways of type 'SECURE_WEB_GATEWAY'. *)
  delete_swg_autogen_router_on_destroy : bool prop option; [@option]
      (** When deleting a gateway of type 'SECURE_WEB_GATEWAY', this boolean option will also delete auto generated router by the gateway creation.
If there is no other gateway of type 'SECURE_WEB_GATEWAY' remaining for that region and network it will be deleted. *)
  description : string prop option; [@option]
      (** A free-text description of the resource. Max length 1024 characters. *)
  gateway_security_policy : string prop option; [@option]
      (** A fully-qualified GatewaySecurityPolicy URL reference. Defines how a server should apply security policy to inbound (VM to Proxy) initiated connections.
For example: 'projects/*/locations/*/gatewaySecurityPolicies/swg-policy'.
This policy is specific to gateways of type 'SECURE_WEB_GATEWAY'. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Set of label tags associated with the Gateway resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop option; [@option]
      (** The location of the gateway.
The default value is 'global'. *)
  name : string prop;
      (** Short name of the Gateway resource to be created. *)
  network : string prop option; [@option]
      (** The relative resource name identifying the VPC network that is using this configuration.
For example: 'projects/*/global/networks/network-1'.
Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY'. *)
  ports : float prop list;
      (** One or more port numbers (1-65535), on which the Gateway will receive traffic.
The proxy binds to the specified ports. Gateways of type 'SECURE_WEB_GATEWAY' are
limited to 1 port. Gateways of type 'OPEN_MESH' listen on 0.0.0.0 and support multiple ports. *)
  project : string prop option; [@option]  (** project *)
  scope : string prop option; [@option]
      (** Immutable. Scope determines how configuration across multiple Gateway instances are merged.
The configuration for multiple Gateway instances with the same scope will be merged as presented as
a single coniguration to the proxy/load balancer.
Max length 64 characters. Scope should start with a letter and can only have letters, numbers, hyphens. *)
  server_tls_policy : string prop option; [@option]
      (** A fully-qualified ServerTLSPolicy URL reference. Specifies how TLS traffic is terminated.
If empty, TLS termination is disabled. *)
  subnetwork : string prop option; [@option]
      (** The relative resource name identifying the subnetwork in which this SWG is allocated.
For example: 'projects/*/regions/us-central1/subnetworks/network-1'.
Currently, this field is specific to gateways of type 'SECURE_WEB_GATEWAY. *)
  type_ : string prop; [@key "type"]
      (** Immutable. The type of the customer-managed gateway. Possible values are: * OPEN_MESH * SECURE_WEB_GATEWAY. Possible values: [TYPE_UNSPECIFIED, OPEN_MESH, SECURE_WEB_GATEWAY] *)
  timeouts : google_network_services_gateway__timeouts option;
}
[@@deriving yojson_of]
(** google_network_services_gateway *)

type t = {
  addresses : string list prop;
  certificate_urls : string list prop;
  create_time : string prop;
  delete_swg_autogen_router_on_destroy : bool prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  gateway_security_policy : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  network : string prop;
  ports : float list prop;
  project : string prop;
  scope : string prop;
  self_link : string prop;
  server_tls_policy : string prop;
  subnetwork : string prop;
  terraform_labels : (string * string) list prop;
  type_ : string prop;
  update_time : string prop;
}

let google_network_services_gateway ?addresses ?certificate_urls
    ?delete_swg_autogen_router_on_destroy ?description
    ?gateway_security_policy ?id ?labels ?location ?network ?project
    ?scope ?server_tls_policy ?subnetwork ?timeouts ~name ~ports
    ~type_ __resource_id =
  let __resource_type = "google_network_services_gateway" in
  let __resource =
    ({
       addresses;
       certificate_urls;
       delete_swg_autogen_router_on_destroy;
       description;
       gateway_security_policy;
       id;
       labels;
       location;
       name;
       network;
       ports;
       project;
       scope;
       server_tls_policy;
       subnetwork;
       type_;
       timeouts;
     }
      : google_network_services_gateway)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_services_gateway __resource);
  let __resource_attributes =
    ({
       addresses =
         Prop.computed __resource_type __resource_id "addresses";
       certificate_urls =
         Prop.computed __resource_type __resource_id
           "certificate_urls";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       delete_swg_autogen_router_on_destroy =
         Prop.computed __resource_type __resource_id
           "delete_swg_autogen_router_on_destroy";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       gateway_security_policy =
         Prop.computed __resource_type __resource_id
           "gateway_security_policy";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       ports = Prop.computed __resource_type __resource_id "ports";
       project =
         Prop.computed __resource_type __resource_id "project";
       scope = Prop.computed __resource_type __resource_id "scope";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       server_tls_policy =
         Prop.computed __resource_type __resource_id
           "server_tls_policy";
       subnetwork =
         Prop.computed __resource_type __resource_id "subnetwork";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       type_ = Prop.computed __resource_type __resource_id "type";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes

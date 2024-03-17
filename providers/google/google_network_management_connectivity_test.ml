(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_network_management_connectivity_test__destination = {
  instance : string prop option; [@option]
      (** A Compute Engine instance URI. *)
  ip_address : string prop option; [@option]
      (** The IP address of the endpoint, which can be an external or
internal IP. An IPv6 address is only allowed when the test's
destination is a global load balancer VIP. *)
  network : string prop option; [@option]
      (** A Compute Engine network URI. *)
  port : float prop option; [@option]
      (** The IP protocol port of the endpoint. Only applicable when
protocol is TCP or UDP. *)
  project_id : string prop option; [@option]
      (** Project ID where the endpoint is located. The Project ID can be
derived from the URI if you provide a VM instance or network URI.
The following are two cases where you must provide the project ID:
1. Only the IP address is specified, and the IP address is within
a GCP project. 2. When you are using Shared VPC and the IP address
that you provide is from the service project. In this case, the
network that the IP address resides in is defined in the host
project. *)
}
[@@deriving yojson_of]
(** Required. Destination specification of the Connectivity Test.

You can use a combination of destination IP address, Compute
Engine VM instance, or VPC network to uniquely identify the
destination location.

Even if the destination IP address is not unique, the source IP
location is unique. Usually, the analysis can infer the destination
endpoint from route information.

If the destination you specify is a VM instance and the instance has
multiple network interfaces, then you must also specify either a
destination IP address or VPC network to identify the destination
interface.

A reachability analysis proceeds even if the destination location
is ambiguous. However, the result can include endpoints that you
don't intend to test. *)

type google_network_management_connectivity_test__source = {
  instance : string prop option; [@option]
      (** A Compute Engine instance URI. *)
  ip_address : string prop option; [@option]
      (** The IP address of the endpoint, which can be an external or
internal IP. An IPv6 address is only allowed when the test's
destination is a global load balancer VIP. *)
  network : string prop option; [@option]
      (** A Compute Engine network URI. *)
  network_type : string prop option; [@option]
      (** Type of the network where the endpoint is located. Possible values: [GCP_NETWORK, NON_GCP_NETWORK] *)
  port : float prop option; [@option]
      (** The IP protocol port of the endpoint. Only applicable when
protocol is TCP or UDP. *)
  project_id : string prop option; [@option]
      (** Project ID where the endpoint is located. The Project ID can be
derived from the URI if you provide a VM instance or network URI.
The following are two cases where you must provide the project ID:

1. Only the IP address is specified, and the IP address is
   within a GCP project.
2. When you are using Shared VPC and the IP address
   that you provide is from the service project. In this case,
   the network that the IP address resides in is defined in the
   host project. *)
}
[@@deriving yojson_of]
(** Required. Source specification of the Connectivity Test.

You can use a combination of source IP address, virtual machine
(VM) instance, or Compute Engine network to uniquely identify the
source location.

Examples: If the source IP address is an internal IP address within
a Google Cloud Virtual Private Cloud (VPC) network, then you must
also specify the VPC network. Otherwise, specify the VM instance,
which already contains its internal IP address and VPC network
information.

If the source of the test is within an on-premises network, then
you must provide the destination VPC network.

If the source endpoint is a Compute Engine VM instance with multiple
network interfaces, the instance itself is not sufficient to
identify the endpoint. So, you must also specify the source IP
address or VPC network.

A reachability analysis proceeds even if the source location is
ambiguous. However, the test result may include endpoints that
you don't intend to test. *)

type google_network_management_connectivity_test__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_management_connectivity_test__timeouts *)

type google_network_management_connectivity_test = {
  description : string prop option; [@option]
      (** The user-supplied description of the Connectivity Test.
Maximum of 512 characters. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user-provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;  (** Unique name for the connectivity test. *)
  project : string prop option; [@option]  (** project *)
  protocol : string prop option; [@option]
      (** IP Protocol of the test. When not provided, TCP is assumed. *)
  related_projects : string prop list option; [@option]
      (** Other projects that may be relevant for reachability analysis.
This is applicable to scenarios where a test can cross project
boundaries. *)
  destination :
    google_network_management_connectivity_test__destination list;
  source : google_network_management_connectivity_test__source list;
  timeouts :
    google_network_management_connectivity_test__timeouts option;
}
[@@deriving yojson_of]
(** google_network_management_connectivity_test *)

type t = {
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  protocol : string prop;
  related_projects : string list prop;
  terraform_labels : (string * string) list prop;
}

let google_network_management_connectivity_test ?description ?id
    ?labels ?project ?protocol ?related_projects ?timeouts ~name
    ~destination ~source __resource_id =
  let __resource_type =
    "google_network_management_connectivity_test"
  in
  let __resource =
    ({
       description;
       id;
       labels;
       name;
       project;
       protocol;
       related_projects;
       destination;
       source;
       timeouts;
     }
      : google_network_management_connectivity_test)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_management_connectivity_test __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       protocol =
         Prop.computed __resource_type __resource_id "protocol";
       related_projects =
         Prop.computed __resource_type __resource_id
           "related_projects";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes

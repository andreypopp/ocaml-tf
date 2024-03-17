(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_network_management_connectivity_test__destination = {
  instance : string option; [@option]
      (** A Compute Engine instance URI. *)
  ip_address : string option; [@option]
      (** The IP address of the endpoint, which can be an external or
internal IP. An IPv6 address is only allowed when the test's
destination is a global load balancer VIP. *)
  network : string option; [@option]
      (** A Compute Engine network URI. *)
  port : float option; [@option]
      (** The IP protocol port of the endpoint. Only applicable when
protocol is TCP or UDP. *)
  project_id : string option; [@option]
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
  instance : string option; [@option]
      (** A Compute Engine instance URI. *)
  ip_address : string option; [@option]
      (** The IP address of the endpoint, which can be an external or
internal IP. An IPv6 address is only allowed when the test's
destination is a global load balancer VIP. *)
  network : string option; [@option]
      (** A Compute Engine network URI. *)
  network_type : string option; [@option]
      (** Type of the network where the endpoint is located. Possible values: [GCP_NETWORK, NON_GCP_NETWORK] *)
  port : float option; [@option]
      (** The IP protocol port of the endpoint. Only applicable when
protocol is TCP or UDP. *)
  project_id : string option; [@option]
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
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_management_connectivity_test__timeouts *)

type google_network_management_connectivity_test = {
  description : string option; [@option]
      (** The user-supplied description of the Connectivity Test.
Maximum of 512 characters. *)
  labels : (string * string) list option; [@option]
      (** Resource labels to represent user-provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;  (** Unique name for the connectivity test. *)
  protocol : string option; [@option]
      (** IP Protocol of the test. When not provided, TCP is assumed. *)
  related_projects : string list option; [@option]
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

let google_network_management_connectivity_test ?description ?labels
    ?protocol ?related_projects ?timeouts ~name ~destination ~source
    __resource_id =
  let __resource_type =
    "google_network_management_connectivity_test"
  in
  let __resource =
    {
      description;
      labels;
      name;
      protocol;
      related_projects;
      destination;
      source;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_management_connectivity_test __resource);
  ()

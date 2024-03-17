(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vpc_access_connector__subnet = {
  name : string option; [@option]
      (** Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is
https://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName} the correct input for this field would be {subnetName} *)
  project_id : string option; [@option]
      (** Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued. *)
}
[@@deriving yojson_of]
(** The subnet in which to house the connector *)

type google_vpc_access_connector__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_vpc_access_connector__timeouts *)

type google_vpc_access_connector = {
  ip_cidr_range : string option; [@option]
      (** The range of internal addresses that follows RFC 4632 notation. Example: '10.132.0.0/28'. *)
  machine_type : string option; [@option]
      (** Machine type of VM Instance underlying connector. Default is e2-micro *)
  max_throughput : float option; [@option]
      (** Maximum throughput of the connector in Mbps, must be greater than 'min_throughput'. Default is 300. *)
  min_throughput : float option; [@option]
      (** Minimum throughput of the connector in Mbps. Default and min is 200. *)
  name : string;
      (** The name of the resource (Max 25 characters). *)
  subnet : google_vpc_access_connector__subnet list;
  timeouts : google_vpc_access_connector__timeouts option;
}
[@@deriving yojson_of]
(** google_vpc_access_connector *)

let google_vpc_access_connector ?ip_cidr_range ?machine_type
    ?max_throughput ?min_throughput ?timeouts ~name ~subnet
    __resource_id =
  let __resource_type = "google_vpc_access_connector" in
  let __resource =
    {
      ip_cidr_range;
      machine_type;
      max_throughput;
      min_throughput;
      name;
      subnet;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vpc_access_connector __resource);
  ()

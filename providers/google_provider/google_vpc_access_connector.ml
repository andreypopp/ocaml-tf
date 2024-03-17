(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vpc_access_connector__subnet = {
  name : string prop option; [@option]
      (** Subnet name (relative, not fully qualified). E.g. if the full subnet selfLink is
https://compute.googleapis.com/compute/v1/projects/{project}/regions/{region}/subnetworks/{subnetName} the correct input for this field would be {subnetName} *)
  project_id : string prop option; [@option]
      (** Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued. *)
}
[@@deriving yojson_of]
(** The subnet in which to house the connector *)

type google_vpc_access_connector__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_vpc_access_connector__timeouts *)

type google_vpc_access_connector = {
  id : string prop option; [@option]  (** id *)
  ip_cidr_range : string prop option; [@option]
      (** The range of internal addresses that follows RFC 4632 notation. Example: '10.132.0.0/28'. *)
  machine_type : string prop option; [@option]
      (** Machine type of VM Instance underlying connector. Default is e2-micro *)
  max_instances : float prop option; [@option]
      (** Maximum value of instances in autoscaling group underlying the connector. *)
  max_throughput : float prop option; [@option]
      (** Maximum throughput of the connector in Mbps, must be greater than 'min_throughput'. Default is 300. *)
  min_instances : float prop option; [@option]
      (** Minimum value of instances in autoscaling group underlying the connector. *)
  min_throughput : float prop option; [@option]
      (** Minimum throughput of the connector in Mbps. Default and min is 200. *)
  name : string prop;
      (** The name of the resource (Max 25 characters). *)
  network : string prop option; [@option]
      (** Name or self_link of the VPC network. Required if 'ip_cidr_range' is set. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** Region where the VPC Access connector resides. If it is not provided, the provider region is used. *)
  subnet : google_vpc_access_connector__subnet list;
  timeouts : google_vpc_access_connector__timeouts option;
}
[@@deriving yojson_of]
(** google_vpc_access_connector *)

type t = {
  connected_projects : string list prop;
  id : string prop;
  ip_cidr_range : string prop;
  machine_type : string prop;
  max_instances : float prop;
  max_throughput : float prop;
  min_instances : float prop;
  min_throughput : float prop;
  name : string prop;
  network : string prop;
  project : string prop;
  region : string prop;
  self_link : string prop;
  state : string prop;
}

let google_vpc_access_connector ?id ?ip_cidr_range ?machine_type
    ?max_instances ?max_throughput ?min_instances ?min_throughput
    ?network ?project ?region ?timeouts ~name ~subnet __resource_id =
  let __resource_type = "google_vpc_access_connector" in
  let __resource =
    ({
       id;
       ip_cidr_range;
       machine_type;
       max_instances;
       max_throughput;
       min_instances;
       min_throughput;
       name;
       network;
       project;
       region;
       subnet;
       timeouts;
     }
      : google_vpc_access_connector)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vpc_access_connector __resource);
  let __resource_attributes =
    ({
       connected_projects =
         Prop.computed __resource_type __resource_id
           "connected_projects";
       id = Prop.computed __resource_type __resource_id "id";
       ip_cidr_range =
         Prop.computed __resource_type __resource_id "ip_cidr_range";
       machine_type =
         Prop.computed __resource_type __resource_id "machine_type";
       max_instances =
         Prop.computed __resource_type __resource_id "max_instances";
       max_throughput =
         Prop.computed __resource_type __resource_id "max_throughput";
       min_instances =
         Prop.computed __resource_type __resource_id "min_instances";
       min_throughput =
         Prop.computed __resource_type __resource_id "min_throughput";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       state = Prop.computed __resource_type __resource_id "state";
     }
      : t)
  in
  __resource_attributes

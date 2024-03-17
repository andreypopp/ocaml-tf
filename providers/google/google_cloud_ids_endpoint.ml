(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloud_ids_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_cloud_ids_endpoint__timeouts *)

type google_cloud_ids_endpoint = {
  description : string prop option; [@option]
      (** An optional description of the endpoint. *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** The location for the endpoint. *)
  name : string prop;
      (** Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}. *)
  network : string prop;
      (** Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like src-net) or the full URL to the network (like projects/{project_id}/global/networks/src-net). *)
  project : string prop option; [@option]  (** project *)
  severity : string prop;
      (** The minimum alert severity level that is reported by the endpoint. Possible values: [INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL] *)
  threat_exceptions : string prop list option; [@option]
      (** Configuration for threat IDs excluded from generating alerts. Limit: 99 IDs. *)
  timeouts : google_cloud_ids_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** google_cloud_ids_endpoint *)

type t = {
  create_time : string prop;
  description : string prop;
  endpoint_forwarding_rule : string prop;
  endpoint_ip : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  severity : string prop;
  threat_exceptions : string list prop;
  update_time : string prop;
}

let google_cloud_ids_endpoint ?description ?id ?project
    ?threat_exceptions ?timeouts ~location ~name ~network ~severity
    __resource_id =
  let __resource_type = "google_cloud_ids_endpoint" in
  let __resource =
    ({
       description;
       id;
       location;
       name;
       network;
       project;
       severity;
       threat_exceptions;
       timeouts;
     }
      : google_cloud_ids_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_ids_endpoint __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       endpoint_forwarding_rule =
         Prop.computed __resource_type __resource_id
           "endpoint_forwarding_rule";
       endpoint_ip =
         Prop.computed __resource_type __resource_id "endpoint_ip";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       project =
         Prop.computed __resource_type __resource_id "project";
       severity =
         Prop.computed __resource_type __resource_id "severity";
       threat_exceptions =
         Prop.computed __resource_type __resource_id
           "threat_exceptions";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes

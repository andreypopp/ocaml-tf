(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_cloud_ids_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_cloud_ids_endpoint__timeouts *)

type google_cloud_ids_endpoint = {
  description : string option; [@option]
      (** An optional description of the endpoint. *)
  id : string option; [@option]  (** id *)
  location : string;  (** The location for the endpoint. *)
  name : string;
      (** Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}. *)
  network : string;
      (** Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like src-net) or the full URL to the network (like projects/{project_id}/global/networks/src-net). *)
  project : string option; [@option]  (** project *)
  severity : string;
      (** The minimum alert severity level that is reported by the endpoint. Possible values: [INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL] *)
  threat_exceptions : string list option; [@option]
      (** Configuration for threat IDs excluded from generating alerts. Limit: 99 IDs. *)
  timeouts : google_cloud_ids_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** google_cloud_ids_endpoint *)

let google_cloud_ids_endpoint ?description ?id ?project
    ?threat_exceptions ?timeouts ~location ~name ~network ~severity
    __resource_id =
  let __resource_type = "google_cloud_ids_endpoint" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_cloud_ids_endpoint __resource);
  ()

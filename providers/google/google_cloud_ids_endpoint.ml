(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_cloud_ids_endpoint *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_cloud_ids_endpoint ?description ?id ?project
    ?threat_exceptions ?timeouts ~location ~name ~network ~severity
    () : google_cloud_ids_endpoint =
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

let make ?description ?id ?project ?threat_exceptions ?timeouts
    ~location ~name ~network ~severity __id =
  let __type = "google_cloud_ids_endpoint" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       endpoint_forwarding_rule =
         Prop.computed __type __id "endpoint_forwarding_rule";
       endpoint_ip = Prop.computed __type __id "endpoint_ip";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       network = Prop.computed __type __id "network";
       project = Prop.computed __type __id "project";
       severity = Prop.computed __type __id "severity";
       threat_exceptions =
         Prop.computed __type __id "threat_exceptions";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_ids_endpoint
        (google_cloud_ids_endpoint ?description ?id ?project
           ?threat_exceptions ?timeouts ~location ~name ~network
           ~severity ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?threat_exceptions
    ?timeouts ~location ~name ~network ~severity __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?threat_exceptions ?timeouts
      ~location ~name ~network ~severity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

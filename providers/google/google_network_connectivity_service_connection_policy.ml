(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type psc_config = {
  limit : string prop option; [@option]
      (** Max number of PSC connections for this policy. *)
  subnetworks : string prop list;
      (** IDs of the subnetworks or fully qualified identifiers for the subnetworks *)
}
[@@deriving yojson_of]
(** Configuration used for Private Service Connect connections. Used when Infrastructure is PSC. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type psc_connections__error_info = {
  domain : string prop;  (** domain *)
  metadata : (string * string prop) list;  (** metadata *)
  reason : string prop;  (** reason *)
}
[@@deriving yojson_of]

type psc_connections__error = {
  code : float prop;  (** code *)
  details : (string * string prop) list list;  (** details *)
  message : string prop;  (** message *)
}
[@@deriving yojson_of]

type psc_connections = {
  consumer_address : string prop;  (** consumer_address *)
  consumer_forwarding_rule : string prop;
      (** consumer_forwarding_rule *)
  consumer_target_project : string prop;
      (** consumer_target_project *)
  error : psc_connections__error list;  (** error *)
  error_info : psc_connections__error_info list;  (** error_info *)
  error_type : string prop;  (** error_type *)
  gce_operation : string prop;  (** gce_operation *)
  psc_connection_id : string prop;  (** psc_connection_id *)
  state : string prop;  (** state *)
}
[@@deriving yojson_of]

type google_network_connectivity_service_connection_policy = {
  description : string prop option; [@option]
      (** Free-text description of the resource. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** User-defined labels.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string prop;
      (** The location of the ServiceConnectionPolicy. *)
  name : string prop;
      (** The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names *)
  network : string prop;
      (** The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}. *)
  project : string prop option; [@option]  (** project *)
  service_class : string prop;
      (** The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass.
It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx. *)
  psc_config : psc_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_network_connectivity_service_connection_policy *)

let psc_config ?limit ~subnetworks () : psc_config =
  { limit; subnetworks }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_network_connectivity_service_connection_policy
    ?description ?id ?labels ?project ?timeouts ~location ~name
    ~network ~service_class ~psc_config () :
    google_network_connectivity_service_connection_policy =
  {
    description;
    id;
    labels;
    location;
    name;
    network;
    project;
    service_class;
    psc_config;
    timeouts;
  }

type t = {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  infrastructure : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  network : string prop;
  project : string prop;
  psc_connections : psc_connections list prop;
  service_class : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let register ?tf_module ?description ?id ?labels ?project ?timeouts
    ~location ~name ~network ~service_class ~psc_config __resource_id
    =
  let __resource_type =
    "google_network_connectivity_service_connection_policy"
  in
  let __resource =
    google_network_connectivity_service_connection_policy
      ?description ?id ?labels ?project ?timeouts ~location ~name
      ~network ~service_class ~psc_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_connectivity_service_connection_policy
       __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       infrastructure =
         Prop.computed __resource_type __resource_id "infrastructure";
       labels = Prop.computed __resource_type __resource_id "labels";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       project =
         Prop.computed __resource_type __resource_id "project";
       psc_connections =
         Prop.computed __resource_type __resource_id
           "psc_connections";
       service_class =
         Prop.computed __resource_type __resource_id "service_class";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes

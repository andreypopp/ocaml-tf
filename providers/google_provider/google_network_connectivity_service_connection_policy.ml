(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_network_connectivity_service_connection_policy__psc_config = {
  limit : string option; [@option]
      (** Max number of PSC connections for this policy. *)
  subnetworks : string list;
      (** IDs of the subnetworks or fully qualified identifiers for the subnetworks *)
}
[@@deriving yojson_of]
(** Configuration used for Private Service Connect connections. Used when Infrastructure is PSC. *)

type google_network_connectivity_service_connection_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_connectivity_service_connection_policy__timeouts *)

type google_network_connectivity_service_connection_policy__psc_connections__error_info = {
  domain : string;  (** domain *)
  metadata : (string * string) list;  (** metadata *)
  reason : string;  (** reason *)
}
[@@deriving yojson_of]

type google_network_connectivity_service_connection_policy__psc_connections__error = {
  code : float;  (** code *)
  details : (string * string) list list;  (** details *)
  message : string;  (** message *)
}
[@@deriving yojson_of]

type google_network_connectivity_service_connection_policy__psc_connections = {
  consumer_address : string;  (** consumer_address *)
  consumer_forwarding_rule : string;  (** consumer_forwarding_rule *)
  consumer_target_project : string;  (** consumer_target_project *)
  error :
    google_network_connectivity_service_connection_policy__psc_connections__error
    list;
      (** error *)
  error_info :
    google_network_connectivity_service_connection_policy__psc_connections__error_info
    list;
      (** error_info *)
  error_type : string;  (** error_type *)
  gce_operation : string;  (** gce_operation *)
  psc_connection_id : string;  (** psc_connection_id *)
  state : string;  (** state *)
}
[@@deriving yojson_of]

type google_network_connectivity_service_connection_policy = {
  description : string option; [@option]
      (** Free-text description of the resource. *)
  labels : (string * string) list option; [@option]
      (** User-defined labels.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location : string;
      (** The location of the ServiceConnectionPolicy. *)
  name : string;
      (** The name of a ServiceConnectionPolicy. Format: projects/{project}/locations/{location}/serviceConnectionPolicies/{service_connection_policy} See: https://google.aip.dev/122#fields-representing-resource-names *)
  network : string;
      (** The resource path of the consumer network. Example: - projects/{projectNumOrId}/global/networks/{resourceId}. *)
  service_class : string;
      (** The service class identifier for which this ServiceConnectionPolicy is for. The service class identifier is a unique, symbolic representation of a ServiceClass.
It is provided by the Service Producer. Google services have a prefix of gcp. For example, gcp-cloud-sql. 3rd party services do not. For example, test-service-a3dfcx. *)
  psc_config :
    google_network_connectivity_service_connection_policy__psc_config
    list;
  timeouts :
    google_network_connectivity_service_connection_policy__timeouts
    option;
}
[@@deriving yojson_of]
(** google_network_connectivity_service_connection_policy *)

let google_network_connectivity_service_connection_policy
    ?description ?labels ?timeouts ~location ~name ~network
    ~service_class ~psc_config __resource_id =
  let __resource_type =
    "google_network_connectivity_service_connection_policy"
  in
  let __resource =
    {
      description;
      labels;
      location;
      name;
      network;
      service_class;
      psc_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_connectivity_service_connection_policy
       __resource);
  ()

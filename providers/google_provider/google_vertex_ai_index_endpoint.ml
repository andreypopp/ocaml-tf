(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_vertex_ai_index_endpoint__private_service_connect_config = {
  enable_private_service_connect : bool;
      (** If set to true, the IndexEndpoint is created without private service access. *)
  project_allowlist : string list option; [@option]
      (** A list of Projects from which the forwarding rule will target the service attachment. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for private service connect. 'network' and 'privateServiceConnectConfig' are mutually exclusive. *)

type google_vertex_ai_index_endpoint__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_index_endpoint__timeouts *)

type google_vertex_ai_index_endpoint = {
  description : string option; [@option]
      (** The description of the Index. *)
  display_name : string;
      (** The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters. *)
  labels : (string * string) list option; [@option]
      (** The labels with user-defined metadata to organize your Indexes.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  network : string option; [@option]
      (** The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.
Private services access must already be configured for the network. If left unspecified, the index endpoint is not peered with any network.
[Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): 'projects/{project}/global/networks/{network}'.
Where '{project}' is a project number, as in '12345', and '{network}' is network name. *)
  public_endpoint_enabled : bool option; [@option]
      (** If true, the deployed index will be accessible through public endpoint. *)
  region : string option; [@option]
      (** The region of the index endpoint. eg us-central1 *)
  private_service_connect_config :
    google_vertex_ai_index_endpoint__private_service_connect_config
    list;
  timeouts : google_vertex_ai_index_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_index_endpoint *)

let google_vertex_ai_index_endpoint ?description ?labels ?network
    ?public_endpoint_enabled ?region ?timeouts ~display_name
    ~private_service_connect_config __resource_id =
  let __resource_type = "google_vertex_ai_index_endpoint" in
  let __resource =
    {
      description;
      display_name;
      labels;
      network;
      public_endpoint_enabled;
      region;
      private_service_connect_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_index_endpoint __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vertex_ai_index_endpoint__private_service_connect_config = {
  enable_private_service_connect : bool prop;
      (** If set to true, the IndexEndpoint is created without private service access. *)
  project_allowlist : string prop list option; [@option]
      (** A list of Projects from which the forwarding rule will target the service attachment. *)
}
[@@deriving yojson_of]
(** Optional. Configuration for private service connect. 'network' and 'privateServiceConnectConfig' are mutually exclusive. *)

type google_vertex_ai_index_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_index_endpoint__timeouts *)

type google_vertex_ai_index_endpoint = {
  description : string prop option; [@option]
      (** The description of the Index. *)
  display_name : string prop;
      (** The display name of the Index. The name can be up to 128 characters long and can consist of any UTF-8 characters. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** The labels with user-defined metadata to organize your Indexes.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  network : string prop option; [@option]
      (** The full name of the Google Compute Engine [network](https://cloud.google.com//compute/docs/networks-and-firewalls#networks) to which the index endpoint should be peered.
Private services access must already be configured for the network. If left unspecified, the index endpoint is not peered with any network.
[Format](https://cloud.google.com/compute/docs/reference/rest/v1/networks/insert): 'projects/{project}/global/networks/{network}'.
Where '{project}' is a project number, as in '12345', and '{network}' is network name. *)
  project : string prop option; [@option]  (** project *)
  public_endpoint_enabled : bool prop option; [@option]
      (** If true, the deployed index will be accessible through public endpoint. *)
  region : string prop option; [@option]
      (** The region of the index endpoint. eg us-central1 *)
  private_service_connect_config :
    google_vertex_ai_index_endpoint__private_service_connect_config
    list;
  timeouts : google_vertex_ai_index_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_index_endpoint *)

type t = {
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  network : string prop;
  project : string prop;
  public_endpoint_domain_name : string prop;
  public_endpoint_enabled : bool prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let google_vertex_ai_index_endpoint ?description ?id ?labels ?network
    ?project ?public_endpoint_enabled ?region ?timeouts ~display_name
    ~private_service_connect_config __resource_id =
  let __resource_type = "google_vertex_ai_index_endpoint" in
  let __resource =
    ({
       description;
       display_name;
       id;
       labels;
       network;
       project;
       public_endpoint_enabled;
       region;
       private_service_connect_config;
       timeouts;
     }
      : google_vertex_ai_index_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_index_endpoint __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       network =
         Prop.computed __resource_type __resource_id "network";
       project =
         Prop.computed __resource_type __resource_id "project";
       public_endpoint_domain_name =
         Prop.computed __resource_type __resource_id
           "public_endpoint_domain_name";
       public_endpoint_enabled =
         Prop.computed __resource_type __resource_id
           "public_endpoint_enabled";
       region = Prop.computed __resource_type __resource_id "region";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes

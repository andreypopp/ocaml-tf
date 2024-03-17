(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vertex_ai_dataset__encryption_spec = {
  kms_key_name : string option; [@option]
      (** Required. The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource.
Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the resource is created. *)
}
[@@deriving yojson_of]
(** Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key. *)

type google_vertex_ai_dataset__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_dataset__timeouts *)

type google_vertex_ai_dataset = {
  display_name : string;
      (** The user-defined name of the Dataset. The name can be up to 128 characters long and can be consist of any UTF-8 characters. *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** A set of key/value label pairs to assign to this Workflow.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  metadata_schema_uri : string;
      (** Points to a YAML file stored on Google Cloud Storage describing additional information about the Dataset. The schema is defined as an OpenAPI 3.0.2 Schema Object. The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/metadata/. *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]
      (** The region of the dataset. eg us-central1 *)
  encryption_spec : google_vertex_ai_dataset__encryption_spec list;
  timeouts : google_vertex_ai_dataset__timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_dataset *)

let google_vertex_ai_dataset ?id ?labels ?project ?region ?timeouts
    ~display_name ~metadata_schema_uri ~encryption_spec __resource_id
    =
  let __resource_type = "google_vertex_ai_dataset" in
  let __resource =
    {
      display_name;
      id;
      labels;
      metadata_schema_uri;
      project;
      region;
      encryption_spec;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_dataset __resource);
  ()

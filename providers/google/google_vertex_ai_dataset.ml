(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_vertex_ai_dataset__encryption_spec = {
  kms_key_name : string prop option; [@option]
      (** Required. The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource.
Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the resource is created. *)
}
[@@deriving yojson_of]
(** Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key. *)

type google_vertex_ai_dataset__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_vertex_ai_dataset__timeouts *)

type google_vertex_ai_dataset = {
  display_name : string prop;
      (** The user-defined name of the Dataset. The name can be up to 128 characters long and can be consist of any UTF-8 characters. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** A set of key/value label pairs to assign to this Workflow.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  metadata_schema_uri : string prop;
      (** Points to a YAML file stored on Google Cloud Storage describing additional information about the Dataset. The schema is defined as an OpenAPI 3.0.2 Schema Object. The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/metadata/. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of the dataset. eg us-central1 *)
  encryption_spec : google_vertex_ai_dataset__encryption_spec list;
  timeouts : google_vertex_ai_dataset__timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_dataset *)

type t = {
  create_time : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  metadata_schema_uri : string prop;
  name : string prop;
  project : string prop;
  region : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let google_vertex_ai_dataset ?id ?labels ?project ?region ?timeouts
    ~display_name ~metadata_schema_uri ~encryption_spec __resource_id
    =
  let __resource_type = "google_vertex_ai_dataset" in
  let __resource =
    ({
       display_name;
       id;
       labels;
       metadata_schema_uri;
       project;
       region;
       encryption_spec;
       timeouts;
     }
      : google_vertex_ai_dataset)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_vertex_ai_dataset __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       metadata_schema_uri =
         Prop.computed __resource_type __resource_id
           "metadata_schema_uri";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
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

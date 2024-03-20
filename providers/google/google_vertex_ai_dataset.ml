(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_spec = {
  kms_key_name : string prop option; [@option]
      (** Required. The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource.
Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the resource is created. *)
}
[@@deriving yojson_of]
(** Customer-managed encryption key spec for a Dataset. If set, this Dataset and all sub-resources of this Dataset will be secured by this key. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  encryption_spec : encryption_spec list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_dataset *)

let encryption_spec ?kms_key_name () : encryption_spec =
  { kms_key_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_dataset ?id ?labels ?project ?region ?timeouts
    ~display_name ~metadata_schema_uri ~encryption_spec () :
    google_vertex_ai_dataset =
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

let make ?id ?labels ?project ?region ?timeouts ~display_name
    ~metadata_schema_uri ~encryption_spec __id =
  let __type = "google_vertex_ai_dataset" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       metadata_schema_uri =
         Prop.computed __type __id "metadata_schema_uri";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_vertex_ai_dataset
        (google_vertex_ai_dataset ?id ?labels ?project ?region
           ?timeouts ~display_name ~metadata_schema_uri
           ~encryption_spec ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ?project ?region ?timeouts
    ~display_name ~metadata_schema_uri ~encryption_spec __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ?project ?region ?timeouts ~display_name
      ~metadata_schema_uri ~encryption_spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

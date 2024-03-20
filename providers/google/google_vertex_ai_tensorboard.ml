(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_spec = {
  kms_key_name : string prop;
      (** The Cloud KMS resource identifier of the customer managed encryption key used to protect a resource.
Has the form: projects/my-project/locations/my-region/keyRings/my-kr/cryptoKeys/my-key. The key needs to be in the same region as where the resource is created. *)
}
[@@deriving yojson_of]
(** Customer-managed encryption key spec for a Tensorboard. If set, this Tensorboard and all sub-resources of this Tensorboard will be secured by this key. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_vertex_ai_tensorboard = {
  description : string prop option; [@option]
      (** Description of this Tensorboard. *)
  display_name : string prop;
      (** User provided name of this Tensorboard. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** The labels with user-defined metadata to organize your Tensorboards.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of the tensorboard. eg us-central1 *)
  encryption_spec : encryption_spec list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_vertex_ai_tensorboard *)

let encryption_spec ~kms_key_name () : encryption_spec =
  { kms_key_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_vertex_ai_tensorboard ?description ?id ?labels ?project
    ?region ?timeouts ~display_name ~encryption_spec () :
    google_vertex_ai_tensorboard =
  {
    description;
    display_name;
    id;
    labels;
    project;
    region;
    encryption_spec;
    timeouts;
  }

type t = {
  blob_storage_path_prefix : string prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  region : string prop;
  run_count : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

let make ?description ?id ?labels ?project ?region ?timeouts
    ~display_name ~encryption_spec __id =
  let __type = "google_vertex_ai_tensorboard" in
  let __attrs =
    ({
       blob_storage_path_prefix =
         Prop.computed __type __id "blob_storage_path_prefix";
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       run_count = Prop.computed __type __id "run_count";
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
      yojson_of_google_vertex_ai_tensorboard
        (google_vertex_ai_tensorboard ?description ?id ?labels
           ?project ?region ?timeouts ~display_name ~encryption_spec
           ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?project ?region
    ?timeouts ~display_name ~encryption_spec __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?project ?region ?timeouts
      ~display_name ~encryption_spec __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

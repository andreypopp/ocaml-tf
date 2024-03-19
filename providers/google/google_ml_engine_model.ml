(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type default_version = {
  name : string prop;
      (** The name specified for the version when it was created. *)
}
[@@deriving yojson_of]
(** The default version of the model. This version will be used to handle
prediction requests that do not specify a version. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_ml_engine_model = {
  description : string prop option; [@option]
      (** The description specified for the model when it was created. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** One or more labels that you can add, to organize your models.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;  (** The name specified for the model. *)
  online_prediction_console_logging : bool prop option; [@option]
      (** If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging *)
  online_prediction_logging : bool prop option; [@option]
      (** If true, online prediction access logs are sent to StackDriver Logging. *)
  project : string prop option; [@option]  (** project *)
  regions : string prop list option; [@option]
      (** The list of regions where the model is going to be deployed.
Currently only one region per model is supported *)
  default_version : default_version list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_ml_engine_model *)

let default_version ~name () : default_version = { name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_ml_engine_model ?description ?id ?labels
    ?online_prediction_console_logging ?online_prediction_logging
    ?project ?regions ?timeouts ~name ~default_version () :
    google_ml_engine_model =
  {
    description;
    id;
    labels;
    name;
    online_prediction_console_logging;
    online_prediction_logging;
    project;
    regions;
    default_version;
    timeouts;
  }

type t = {
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  online_prediction_console_logging : bool prop;
  online_prediction_logging : bool prop;
  project : string prop;
  regions : string list prop;
  terraform_labels : (string * string) list prop;
}

let register ?tf_module ?description ?id ?labels
    ?online_prediction_console_logging ?online_prediction_logging
    ?project ?regions ?timeouts ~name ~default_version __resource_id
    =
  let __resource_type = "google_ml_engine_model" in
  let __resource =
    google_ml_engine_model ?description ?id ?labels
      ?online_prediction_console_logging ?online_prediction_logging
      ?project ?regions ?timeouts ~name ~default_version ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_ml_engine_model __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       name = Prop.computed __resource_type __resource_id "name";
       online_prediction_console_logging =
         Prop.computed __resource_type __resource_id
           "online_prediction_console_logging";
       online_prediction_logging =
         Prop.computed __resource_type __resource_id
           "online_prediction_logging";
       project =
         Prop.computed __resource_type __resource_id "project";
       regions =
         Prop.computed __resource_type __resource_id "regions";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
     }
      : t)
  in
  __resource_attributes

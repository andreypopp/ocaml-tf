(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_ml_engine_model__default_version = {
  name : string;
      (** The name specified for the version when it was created. *)
}
[@@deriving yojson_of]
(** The default version of the model. This version will be used to handle
prediction requests that do not specify a version. *)

type google_ml_engine_model__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_ml_engine_model__timeouts *)

type google_ml_engine_model = {
  description : string option; [@option]
      (** The description specified for the model when it was created. *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** One or more labels that you can add, to organize your models.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string;  (** The name specified for the model. *)
  online_prediction_console_logging : bool option; [@option]
      (** If true, online prediction nodes send stderr and stdout streams to Stackdriver Logging *)
  online_prediction_logging : bool option; [@option]
      (** If true, online prediction access logs are sent to StackDriver Logging. *)
  project : string option; [@option]  (** project *)
  regions : string list option; [@option]
      (** The list of regions where the model is going to be deployed.
Currently only one region per model is supported *)
  default_version : google_ml_engine_model__default_version list;
  timeouts : google_ml_engine_model__timeouts option;
}
[@@deriving yojson_of]
(** google_ml_engine_model *)

let google_ml_engine_model ?description ?id ?labels
    ?online_prediction_console_logging ?online_prediction_logging
    ?project ?regions ?timeouts ~name ~default_version __resource_id
    =
  let __resource_type = "google_ml_engine_model" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_ml_engine_model __resource);
  ()

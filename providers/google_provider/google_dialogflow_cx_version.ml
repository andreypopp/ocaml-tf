(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_dialogflow_cx_version__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_dialogflow_cx_version__timeouts *)

type google_dialogflow_cx_version__nlu_settings = {
  classification_threshold : float prop;
      (** classification_threshold *)
  model_training_mode : string prop;  (** model_training_mode *)
  model_type : string prop;  (** model_type *)
}
[@@deriving yojson_of]

type google_dialogflow_cx_version = {
  description : string prop option; [@option]
      (** The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected. *)
  display_name : string prop;
      (** The human-readable name of the version. Limit of 64 characters. *)
  id : string prop option; [@option]  (** id *)
  parent : string prop option; [@option]
      (** The Flow to create an Version for.
Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>. *)
  timeouts : google_dialogflow_cx_version__timeouts option;
}
[@@deriving yojson_of]
(** google_dialogflow_cx_version *)

let google_dialogflow_cx_version ?description ?id ?parent ?timeouts
    ~display_name __resource_id =
  let __resource_type = "google_dialogflow_cx_version" in
  let __resource =
    { description; display_name; id; parent; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_dialogflow_cx_version __resource);
  ()

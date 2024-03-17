(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_beyondcorp_app_connector__principal_info__service_account = {
  email : string prop;  (** Email address of the service account. *)
}
[@@deriving yojson_of]
(** ServiceAccount represents a GCP service account. *)

type google_beyondcorp_app_connector__principal_info = {
  service_account :
    google_beyondcorp_app_connector__principal_info__service_account
    list;
}
[@@deriving yojson_of]
(** Principal information about the Identity of the AppConnector. *)

type google_beyondcorp_app_connector__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_beyondcorp_app_connector__timeouts *)

type google_beyondcorp_app_connector = {
  display_name : string prop option; [@option]
      (** An arbitrary user-provided name for the AppConnector. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  name : string prop;  (** ID of the AppConnector. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of the AppConnector. *)
  principal_info :
    google_beyondcorp_app_connector__principal_info list;
  timeouts : google_beyondcorp_app_connector__timeouts option;
}
[@@deriving yojson_of]
(** google_beyondcorp_app_connector *)

let google_beyondcorp_app_connector ?display_name ?id ?labels
    ?project ?region ?timeouts ~name ~principal_info __resource_id =
  let __resource_type = "google_beyondcorp_app_connector" in
  let __resource =
    {
      display_name;
      id;
      labels;
      name;
      project;
      region;
      principal_info;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_beyondcorp_app_connector __resource);
  ()

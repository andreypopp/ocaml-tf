(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_app_engine_service_network_settings__network_settings = {
  ingress_traffic_allowed : string option; [@option]
      (** The ingress settings for version or service. Default value: INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED Possible values: [INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED, INGRESS_TRAFFIC_ALLOWED_ALL, INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY, INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB] *)
}
[@@deriving yojson_of]
(** Ingress settings for this service. Will apply to all versions. *)

type google_app_engine_service_network_settings__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_app_engine_service_network_settings__timeouts *)

type google_app_engine_service_network_settings = {
  id : string option; [@option]  (** id *)
  project : string option; [@option]  (** project *)
  service : string;
      (** The name of the service these settings apply to. *)
  network_settings :
    google_app_engine_service_network_settings__network_settings list;
  timeouts :
    google_app_engine_service_network_settings__timeouts option;
}
[@@deriving yojson_of]
(** google_app_engine_service_network_settings *)

let google_app_engine_service_network_settings ?id ?project ?timeouts
    ~service ~network_settings __resource_id =
  let __resource_type =
    "google_app_engine_service_network_settings"
  in
  let __resource =
    { id; project; service; network_settings; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_app_engine_service_network_settings __resource);
  ()

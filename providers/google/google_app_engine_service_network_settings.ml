(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type network_settings = {
  ingress_traffic_allowed : string prop option; [@option]
      (** The ingress settings for version or service. Default value: INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED Possible values: [INGRESS_TRAFFIC_ALLOWED_UNSPECIFIED, INGRESS_TRAFFIC_ALLOWED_ALL, INGRESS_TRAFFIC_ALLOWED_INTERNAL_ONLY, INGRESS_TRAFFIC_ALLOWED_INTERNAL_AND_LB] *)
}
[@@deriving yojson_of]
(** Ingress settings for this service. Will apply to all versions. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_app_engine_service_network_settings = {
  id : string prop option; [@option]  (** id *)
  project : string prop option; [@option]  (** project *)
  service : string prop;
      (** The name of the service these settings apply to. *)
  network_settings : network_settings list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_app_engine_service_network_settings *)

let network_settings ?ingress_traffic_allowed () : network_settings =
  { ingress_traffic_allowed }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_app_engine_service_network_settings ?id ?project ?timeouts
    ~service ~network_settings () :
    google_app_engine_service_network_settings =
  { id; project; service; network_settings; timeouts }

type t = {
  id : string prop;
  project : string prop;
  service : string prop;
}

let register ?tf_module ?id ?project ?timeouts ~service
    ~network_settings __resource_id =
  let __resource_type =
    "google_app_engine_service_network_settings"
  in
  let __resource =
    google_app_engine_service_network_settings ?id ?project ?timeouts
      ~service ~network_settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_app_engine_service_network_settings __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       project =
         Prop.computed __resource_type __resource_id "project";
       service =
         Prop.computed __resource_type __resource_id "service";
     }
      : t)
  in
  __resource_attributes

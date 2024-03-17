(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_application_insights_application_performance_monitoring__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_application_insights_application_performance_monitoring__timeouts *)

type azurerm_spring_cloud_application_insights_application_performance_monitoring = {
  connection_string : string prop option; [@option]
      (** connection_string *)
  globally_enabled : bool prop option; [@option]
      (** globally_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  role_instance : string prop option; [@option]  (** role_instance *)
  role_name : string prop option; [@option]  (** role_name *)
  sampling_percentage : float prop option; [@option]
      (** sampling_percentage *)
  sampling_requests_per_second : float prop option; [@option]
      (** sampling_requests_per_second *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  timeouts :
    azurerm_spring_cloud_application_insights_application_performance_monitoring__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_application_insights_application_performance_monitoring *)

let azurerm_spring_cloud_application_insights_application_performance_monitoring
    ?connection_string ?globally_enabled ?id ?role_instance
    ?role_name ?sampling_percentage ?sampling_requests_per_second
    ?timeouts ~name ~spring_cloud_service_id __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_application_insights_application_performance_monitoring"
  in
  let __resource =
    {
      connection_string;
      globally_enabled;
      id;
      name;
      role_instance;
      role_name;
      sampling_percentage;
      sampling_requests_per_second;
      spring_cloud_service_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_application_insights_application_performance_monitoring
       __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_elastic_application_performance_monitoring__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_elastic_application_performance_monitoring__timeouts *)

type azurerm_spring_cloud_elastic_application_performance_monitoring = {
  application_packages : string list;  (** application_packages *)
  globally_enabled : bool option; [@option]  (** globally_enabled *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  server_url : string;  (** server_url *)
  service_name : string;  (** service_name *)
  spring_cloud_service_id : string;  (** spring_cloud_service_id *)
  timeouts :
    azurerm_spring_cloud_elastic_application_performance_monitoring__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_elastic_application_performance_monitoring *)

let azurerm_spring_cloud_elastic_application_performance_monitoring
    ?globally_enabled ?id ?timeouts ~application_packages ~name
    ~server_url ~service_name ~spring_cloud_service_id __resource_id
    =
  let __resource_type =
    "azurerm_spring_cloud_elastic_application_performance_monitoring"
  in
  let __resource =
    {
      application_packages;
      globally_enabled;
      id;
      name;
      server_url;
      service_name;
      spring_cloud_service_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_elastic_application_performance_monitoring
       __resource);
  ()

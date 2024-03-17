(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_elastic_application_performance_monitoring__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_elastic_application_performance_monitoring__timeouts *)

type azurerm_spring_cloud_elastic_application_performance_monitoring = {
  application_packages : string prop list;
      (** application_packages *)
  globally_enabled : bool prop option; [@option]
      (** globally_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  server_url : string prop;  (** server_url *)
  service_name : string prop;  (** service_name *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_dynatrace_application_performance_monitoring__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_dynatrace_application_performance_monitoring__timeouts *)

type azurerm_spring_cloud_dynatrace_application_performance_monitoring = {
  api_token : string prop option; [@option]  (** api_token *)
  api_url : string prop option; [@option]  (** api_url *)
  connection_point : string prop;  (** connection_point *)
  environment_id : string prop option; [@option]
      (** environment_id *)
  globally_enabled : bool prop option; [@option]
      (** globally_enabled *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  tenant : string prop;  (** tenant *)
  tenant_token : string prop;  (** tenant_token *)
  timeouts :
    azurerm_spring_cloud_dynatrace_application_performance_monitoring__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_dynatrace_application_performance_monitoring *)

let azurerm_spring_cloud_dynatrace_application_performance_monitoring
    ?api_token ?api_url ?environment_id ?globally_enabled ?id
    ?timeouts ~connection_point ~name ~spring_cloud_service_id
    ~tenant ~tenant_token __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_dynatrace_application_performance_monitoring"
  in
  let __resource =
    {
      api_token;
      api_url;
      connection_point;
      environment_id;
      globally_enabled;
      id;
      name;
      spring_cloud_service_id;
      tenant;
      tenant_token;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_dynatrace_application_performance_monitoring
       __resource);
  ()

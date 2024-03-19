(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_dynatrace_application_performance_monitoring *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_dynatrace_application_performance_monitoring
    ?api_token ?api_url ?environment_id ?globally_enabled ?id
    ?timeouts ~connection_point ~name ~spring_cloud_service_id
    ~tenant ~tenant_token () :
    azurerm_spring_cloud_dynatrace_application_performance_monitoring
    =
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

type t = {
  api_token : string prop;
  api_url : string prop;
  connection_point : string prop;
  environment_id : string prop;
  globally_enabled : bool prop;
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
  tenant : string prop;
  tenant_token : string prop;
}

let register ?tf_module ?api_token ?api_url ?environment_id
    ?globally_enabled ?id ?timeouts ~connection_point ~name
    ~spring_cloud_service_id ~tenant ~tenant_token __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_dynatrace_application_performance_monitoring"
  in
  let __resource =
    azurerm_spring_cloud_dynatrace_application_performance_monitoring
      ?api_token ?api_url ?environment_id ?globally_enabled ?id
      ?timeouts ~connection_point ~name ~spring_cloud_service_id
      ~tenant ~tenant_token ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_dynatrace_application_performance_monitoring
       __resource);
  let __resource_attributes =
    ({
       api_token =
         Prop.computed __resource_type __resource_id "api_token";
       api_url =
         Prop.computed __resource_type __resource_id "api_url";
       connection_point =
         Prop.computed __resource_type __resource_id
           "connection_point";
       environment_id =
         Prop.computed __resource_type __resource_id "environment_id";
       globally_enabled =
         Prop.computed __resource_type __resource_id
           "globally_enabled";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       spring_cloud_service_id =
         Prop.computed __resource_type __resource_id
           "spring_cloud_service_id";
       tenant = Prop.computed __resource_type __resource_id "tenant";
       tenant_token =
         Prop.computed __resource_type __resource_id "tenant_token";
     }
      : t)
  in
  __resource_attributes

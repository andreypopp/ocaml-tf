(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_spring_cloud_build_deployment__quota = {
  cpu : string option; [@option]  (** cpu *)
  memory : string option; [@option]  (** memory *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_build_deployment__quota *)

type azurerm_spring_cloud_build_deployment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_build_deployment__timeouts *)

type azurerm_spring_cloud_build_deployment = {
  application_performance_monitoring_ids : string list option;
      [@option]
      (** application_performance_monitoring_ids *)
  build_result_id : string;  (** build_result_id *)
  environment_variables : (string * string) list option; [@option]
      (** environment_variables *)
  instance_count : float option; [@option]  (** instance_count *)
  name : string;  (** name *)
  spring_cloud_app_id : string;  (** spring_cloud_app_id *)
  quota : azurerm_spring_cloud_build_deployment__quota list;
  timeouts : azurerm_spring_cloud_build_deployment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_build_deployment *)

let azurerm_spring_cloud_build_deployment
    ?application_performance_monitoring_ids ?environment_variables
    ?instance_count ?timeouts ~build_result_id ~name
    ~spring_cloud_app_id ~quota __resource_id =
  let __resource_type = "azurerm_spring_cloud_build_deployment" in
  let __resource =
    {
      application_performance_monitoring_ids;
      build_result_id;
      environment_variables;
      instance_count;
      name;
      spring_cloud_app_id;
      quota;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_build_deployment __resource);
  ()

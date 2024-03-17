(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_container_deployment__quota = {
  cpu : string option; [@option]  (** cpu *)
  memory : string option; [@option]  (** memory *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_container_deployment__quota *)

type azurerm_spring_cloud_container_deployment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_container_deployment__timeouts *)

type azurerm_spring_cloud_container_deployment = {
  application_performance_monitoring_ids : string list option;
      [@option]
      (** application_performance_monitoring_ids *)
  arguments : string list option; [@option]  (** arguments *)
  commands : string list option; [@option]  (** commands *)
  environment_variables : (string * string) list option; [@option]
      (** environment_variables *)
  image : string;  (** image *)
  instance_count : float option; [@option]  (** instance_count *)
  language_framework : string option; [@option]
      (** language_framework *)
  name : string;  (** name *)
  server : string;  (** server *)
  spring_cloud_app_id : string;  (** spring_cloud_app_id *)
  quota : azurerm_spring_cloud_container_deployment__quota list;
  timeouts :
    azurerm_spring_cloud_container_deployment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_container_deployment *)

let azurerm_spring_cloud_container_deployment
    ?application_performance_monitoring_ids ?arguments ?commands
    ?environment_variables ?instance_count ?language_framework
    ?timeouts ~image ~name ~server ~spring_cloud_app_id ~quota
    __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_container_deployment"
  in
  let __resource =
    {
      application_performance_monitoring_ids;
      arguments;
      commands;
      environment_variables;
      image;
      instance_count;
      language_framework;
      name;
      server;
      spring_cloud_app_id;
      quota;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_container_deployment __resource);
  ()

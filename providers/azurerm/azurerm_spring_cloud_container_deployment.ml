(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_spring_cloud_container_deployment__quota = {
  cpu : string prop option; [@option]  (** cpu *)
  memory : string prop option; [@option]  (** memory *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_container_deployment__quota *)

type azurerm_spring_cloud_container_deployment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_container_deployment__timeouts *)

type azurerm_spring_cloud_container_deployment = {
  addon_json : string prop option; [@option]  (** addon_json *)
  application_performance_monitoring_ids : string prop list option;
      [@option]
      (** application_performance_monitoring_ids *)
  arguments : string prop list option; [@option]  (** arguments *)
  commands : string prop list option; [@option]  (** commands *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** environment_variables *)
  id : string prop option; [@option]  (** id *)
  image : string prop;  (** image *)
  instance_count : float prop option; [@option]
      (** instance_count *)
  language_framework : string prop option; [@option]
      (** language_framework *)
  name : string prop;  (** name *)
  server : string prop;  (** server *)
  spring_cloud_app_id : string prop;  (** spring_cloud_app_id *)
  quota : azurerm_spring_cloud_container_deployment__quota list;
  timeouts :
    azurerm_spring_cloud_container_deployment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_container_deployment *)

type t = {
  addon_json : string prop;
  application_performance_monitoring_ids : string list prop;
  arguments : string list prop;
  commands : string list prop;
  environment_variables : (string * string) list prop;
  id : string prop;
  image : string prop;
  instance_count : float prop;
  language_framework : string prop;
  name : string prop;
  server : string prop;
  spring_cloud_app_id : string prop;
}

let azurerm_spring_cloud_container_deployment ?addon_json
    ?application_performance_monitoring_ids ?arguments ?commands
    ?environment_variables ?id ?instance_count ?language_framework
    ?timeouts ~image ~name ~server ~spring_cloud_app_id ~quota
    __resource_id =
  let __resource_type =
    "azurerm_spring_cloud_container_deployment"
  in
  let __resource =
    ({
       addon_json;
       application_performance_monitoring_ids;
       arguments;
       commands;
       environment_variables;
       id;
       image;
       instance_count;
       language_framework;
       name;
       server;
       spring_cloud_app_id;
       quota;
       timeouts;
     }
      : azurerm_spring_cloud_container_deployment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_container_deployment __resource);
  let __resource_attributes =
    ({
       addon_json =
         Prop.computed __resource_type __resource_id "addon_json";
       application_performance_monitoring_ids =
         Prop.computed __resource_type __resource_id
           "application_performance_monitoring_ids";
       arguments =
         Prop.computed __resource_type __resource_id "arguments";
       commands =
         Prop.computed __resource_type __resource_id "commands";
       environment_variables =
         Prop.computed __resource_type __resource_id
           "environment_variables";
       id = Prop.computed __resource_type __resource_id "id";
       image = Prop.computed __resource_type __resource_id "image";
       instance_count =
         Prop.computed __resource_type __resource_id "instance_count";
       language_framework =
         Prop.computed __resource_type __resource_id
           "language_framework";
       name = Prop.computed __resource_type __resource_id "name";
       server = Prop.computed __resource_type __resource_id "server";
       spring_cloud_app_id =
         Prop.computed __resource_type __resource_id
           "spring_cloud_app_id";
     }
      : t)
  in
  __resource_attributes

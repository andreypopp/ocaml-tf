(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_spring_cloud_java_deployment__quota = {
  cpu : string option; [@option]  (** cpu *)
  memory : string option; [@option]  (** memory *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_java_deployment__quota *)

type azurerm_spring_cloud_java_deployment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_java_deployment__timeouts *)

type azurerm_spring_cloud_java_deployment = {
  environment_variables : (string * string) list option; [@option]
      (** environment_variables *)
  instance_count : float option; [@option]  (** instance_count *)
  jvm_options : string option; [@option]  (** jvm_options *)
  name : string;  (** name *)
  runtime_version : string option; [@option]  (** runtime_version *)
  spring_cloud_app_id : string;  (** spring_cloud_app_id *)
  quota : azurerm_spring_cloud_java_deployment__quota list;
  timeouts : azurerm_spring_cloud_java_deployment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_java_deployment *)

let azurerm_spring_cloud_java_deployment ?environment_variables
    ?instance_count ?jvm_options ?runtime_version ?timeouts ~name
    ~spring_cloud_app_id ~quota __resource_id =
  let __resource_type = "azurerm_spring_cloud_java_deployment" in
  let __resource =
    {
      environment_variables;
      instance_count;
      jvm_options;
      name;
      runtime_version;
      spring_cloud_app_id;
      quota;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_java_deployment __resource);
  ()

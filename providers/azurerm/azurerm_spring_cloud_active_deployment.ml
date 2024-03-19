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

type azurerm_spring_cloud_active_deployment = {
  deployment_name : string prop;  (** deployment_name *)
  id : string prop option; [@option]  (** id *)
  spring_cloud_app_id : string prop;  (** spring_cloud_app_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_active_deployment *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_active_deployment ?id ?timeouts
    ~deployment_name ~spring_cloud_app_id () :
    azurerm_spring_cloud_active_deployment =
  { deployment_name; id; spring_cloud_app_id; timeouts }

type t = {
  deployment_name : string prop;
  id : string prop;
  spring_cloud_app_id : string prop;
}

let register ?tf_module ?id ?timeouts ~deployment_name
    ~spring_cloud_app_id __resource_id =
  let __resource_type = "azurerm_spring_cloud_active_deployment" in
  let __resource =
    azurerm_spring_cloud_active_deployment ?id ?timeouts
      ~deployment_name ~spring_cloud_app_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_active_deployment __resource);
  let __resource_attributes =
    ({
       deployment_name =
         Prop.computed __resource_type __resource_id
           "deployment_name";
       id = Prop.computed __resource_type __resource_id "id";
       spring_cloud_app_id =
         Prop.computed __resource_type __resource_id
           "spring_cloud_app_id";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_spring_cloud_accelerator = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_accelerator *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_spring_cloud_accelerator ?id ?timeouts ~name
    ~spring_cloud_service_id () : azurerm_spring_cloud_accelerator =
  { id; name; spring_cloud_service_id; timeouts }

type t = {
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~spring_cloud_service_id
    __resource_id =
  let __resource_type = "azurerm_spring_cloud_accelerator" in
  let __resource =
    azurerm_spring_cloud_accelerator ?id ?timeouts ~name
      ~spring_cloud_service_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_accelerator __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       spring_cloud_service_id =
         Prop.computed __resource_type __resource_id
           "spring_cloud_service_id";
     }
      : t)
  in
  __resource_attributes

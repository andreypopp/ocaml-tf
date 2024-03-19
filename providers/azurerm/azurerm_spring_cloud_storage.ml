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

type azurerm_spring_cloud_storage = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  spring_cloud_service_id : string prop;
      (** spring_cloud_service_id *)
  storage_account_key : string prop;  (** storage_account_key *)
  storage_account_name : string prop;  (** storage_account_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_storage *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_spring_cloud_storage ?id ?timeouts ~name
    ~spring_cloud_service_id ~storage_account_key
    ~storage_account_name () : azurerm_spring_cloud_storage =
  {
    id;
    name;
    spring_cloud_service_id;
    storage_account_key;
    storage_account_name;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  spring_cloud_service_id : string prop;
  storage_account_key : string prop;
  storage_account_name : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~spring_cloud_service_id
    ~storage_account_key ~storage_account_name __resource_id =
  let __resource_type = "azurerm_spring_cloud_storage" in
  let __resource =
    azurerm_spring_cloud_storage ?id ?timeouts ~name
      ~spring_cloud_service_id ~storage_account_key
      ~storage_account_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_storage __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       spring_cloud_service_id =
         Prop.computed __resource_type __resource_id
           "spring_cloud_service_id";
       storage_account_key =
         Prop.computed __resource_type __resource_id
           "storage_account_key";
       storage_account_name =
         Prop.computed __resource_type __resource_id
           "storage_account_name";
     }
      : t)
  in
  __resource_attributes

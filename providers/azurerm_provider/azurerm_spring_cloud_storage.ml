(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_spring_cloud_storage__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_storage__timeouts *)

type azurerm_spring_cloud_storage = {
  name : string;  (** name *)
  spring_cloud_service_id : string;  (** spring_cloud_service_id *)
  storage_account_key : string;  (** storage_account_key *)
  storage_account_name : string;  (** storage_account_name *)
  timeouts : azurerm_spring_cloud_storage__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_spring_cloud_storage *)

let azurerm_spring_cloud_storage ?timeouts ~name
    ~spring_cloud_service_id ~storage_account_key
    ~storage_account_name __resource_id =
  let __resource_type = "azurerm_spring_cloud_storage" in
  let __resource =
    {
      name;
      spring_cloud_service_id;
      storage_account_key;
      storage_account_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_spring_cloud_storage __resource);
  ()

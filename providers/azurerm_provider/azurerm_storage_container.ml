(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_storage_container__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_container__timeouts *)

type azurerm_storage_container = {
  container_access_type : string option; [@option]
      (** container_access_type *)
  name : string;  (** name *)
  storage_account_name : string;  (** storage_account_name *)
  timeouts : azurerm_storage_container__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_container *)

let azurerm_storage_container ?container_access_type ?timeouts ~name
    ~storage_account_name __resource_id =
  let __resource_type = "azurerm_storage_container" in
  let __resource =
    { container_access_type; name; storage_account_name; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_container __resource);
  ()

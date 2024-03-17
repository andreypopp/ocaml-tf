(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_table__acl__access_policy = {
  expiry : string;  (** expiry *)
  permissions : string;  (** permissions *)
  start : string;  (** start *)
}
[@@deriving yojson_of]
(** azurerm_storage_table__acl__access_policy *)

type azurerm_storage_table__acl = {
  id : string;  (** id *)
  access_policy : azurerm_storage_table__acl__access_policy list;
}
[@@deriving yojson_of]
(** azurerm_storage_table__acl *)

type azurerm_storage_table__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_table__timeouts *)

type azurerm_storage_table = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  storage_account_name : string;  (** storage_account_name *)
  acl : azurerm_storage_table__acl list;
  timeouts : azurerm_storage_table__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_table *)

let azurerm_storage_table ?id ?timeouts ~name ~storage_account_name
    ~acl __resource_id =
  let __resource_type = "azurerm_storage_table" in
  let __resource =
    { id; name; storage_account_name; acl; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_table __resource);
  ()

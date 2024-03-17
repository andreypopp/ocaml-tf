(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_share__acl__access_policy = {
  expiry : string option; [@option]  (** expiry *)
  permissions : string;  (** permissions *)
  start : string option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** azurerm_storage_share__acl__access_policy *)

type azurerm_storage_share__acl = {
  id : string;  (** id *)
  access_policy : azurerm_storage_share__acl__access_policy list;
}
[@@deriving yojson_of]
(** azurerm_storage_share__acl *)

type azurerm_storage_share__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_share__timeouts *)

type azurerm_storage_share = {
  enabled_protocol : string option; [@option]
      (** enabled_protocol *)
  name : string;  (** name *)
  quota : float;  (** quota *)
  storage_account_name : string;  (** storage_account_name *)
  acl : azurerm_storage_share__acl list;
  timeouts : azurerm_storage_share__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_share *)

let azurerm_storage_share ?enabled_protocol ?timeouts ~name ~quota
    ~storage_account_name ~acl __resource_id =
  let __resource_type = "azurerm_storage_share" in
  let __resource =
    {
      enabled_protocol;
      name;
      quota;
      storage_account_name;
      acl;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_share __resource);
  ()

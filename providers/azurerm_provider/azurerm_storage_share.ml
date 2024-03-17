(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_share__acl__access_policy = {
  expiry : string prop option; [@option]  (** expiry *)
  permissions : string prop;  (** permissions *)
  start : string prop option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** azurerm_storage_share__acl__access_policy *)

type azurerm_storage_share__acl = {
  id : string prop;  (** id *)
  access_policy : azurerm_storage_share__acl__access_policy list;
}
[@@deriving yojson_of]
(** azurerm_storage_share__acl *)

type azurerm_storage_share__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_share__timeouts *)

type azurerm_storage_share = {
  access_tier : string prop option; [@option]  (** access_tier *)
  enabled_protocol : string prop option; [@option]
      (** enabled_protocol *)
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  quota : float prop;  (** quota *)
  storage_account_name : string prop;  (** storage_account_name *)
  acl : azurerm_storage_share__acl list;
  timeouts : azurerm_storage_share__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_share *)

type t = {
  access_tier : string prop;
  enabled_protocol : string prop;
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  quota : float prop;
  resource_manager_id : string prop;
  storage_account_name : string prop;
  url : string prop;
}

let azurerm_storage_share ?access_tier ?enabled_protocol ?id
    ?metadata ?timeouts ~name ~quota ~storage_account_name ~acl
    __resource_id =
  let __resource_type = "azurerm_storage_share" in
  let __resource =
    ({
       access_tier;
       enabled_protocol;
       id;
       metadata;
       name;
       quota;
       storage_account_name;
       acl;
       timeouts;
     }
      : azurerm_storage_share)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_share __resource);
  let __resource_attributes =
    ({
       access_tier =
         Prop.computed __resource_type __resource_id "access_tier";
       enabled_protocol =
         Prop.computed __resource_type __resource_id
           "enabled_protocol";
       id = Prop.computed __resource_type __resource_id "id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       quota = Prop.computed __resource_type __resource_id "quota";
       resource_manager_id =
         Prop.computed __resource_type __resource_id
           "resource_manager_id";
       storage_account_name =
         Prop.computed __resource_type __resource_id
           "storage_account_name";
       url = Prop.computed __resource_type __resource_id "url";
     }
      : t)
  in
  __resource_attributes

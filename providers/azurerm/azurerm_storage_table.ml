(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type acl__access_policy = {
  expiry : string prop;  (** expiry *)
  permissions : string prop;  (** permissions *)
  start : string prop;  (** start *)
}
[@@deriving yojson_of]
(** acl__access_policy *)

type acl = {
  id : string prop;  (** id *)
  access_policy : acl__access_policy list;
}
[@@deriving yojson_of]
(** acl *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_storage_table = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  storage_account_name : string prop;  (** storage_account_name *)
  acl : acl list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_table *)

let acl__access_policy ~expiry ~permissions ~start () :
    acl__access_policy =
  { expiry; permissions; start }

let acl ~id ~access_policy () : acl = { id; access_policy }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_table ?id ?timeouts ~name ~storage_account_name
    ~acl () : azurerm_storage_table =
  { id; name; storage_account_name; acl; timeouts }

type t = {
  id : string prop;
  name : string prop;
  storage_account_name : string prop;
}

let register ?tf_module ?id ?timeouts ~name ~storage_account_name
    ~acl __resource_id =
  let __resource_type = "azurerm_storage_table" in
  let __resource =
    azurerm_storage_table ?id ?timeouts ~name ~storage_account_name
      ~acl ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_table __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       storage_account_name =
         Prop.computed __resource_type __resource_id
           "storage_account_name";
     }
      : t)
  in
  __resource_attributes

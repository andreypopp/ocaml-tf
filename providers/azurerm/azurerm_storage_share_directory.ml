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

type azurerm_storage_share_directory = {
  id : string prop option; [@option]  (** id *)
  metadata : (string * string prop) list option; [@option]
      (** metadata *)
  name : string prop;  (** name *)
  share_name : string prop option; [@option]  (** share_name *)
  storage_account_name : string prop option; [@option]
      (** storage_account_name *)
  storage_share_id : string prop option; [@option]
      (** storage_share_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_share_directory *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_share_directory ?id ?metadata ?share_name
    ?storage_account_name ?storage_share_id ?timeouts ~name () :
    azurerm_storage_share_directory =
  {
    id;
    metadata;
    name;
    share_name;
    storage_account_name;
    storage_share_id;
    timeouts;
  }

type t = {
  id : string prop;
  metadata : (string * string) list prop;
  name : string prop;
  share_name : string prop;
  storage_account_name : string prop;
  storage_share_id : string prop;
}

let register ?tf_module ?id ?metadata ?share_name
    ?storage_account_name ?storage_share_id ?timeouts ~name
    __resource_id =
  let __resource_type = "azurerm_storage_share_directory" in
  let __resource =
    azurerm_storage_share_directory ?id ?metadata ?share_name
      ?storage_account_name ?storage_share_id ?timeouts ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_share_directory __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       share_name =
         Prop.computed __resource_type __resource_id "share_name";
       storage_account_name =
         Prop.computed __resource_type __resource_id
           "storage_account_name";
       storage_share_id =
         Prop.computed __resource_type __resource_id
           "storage_share_id";
     }
      : t)
  in
  __resource_attributes

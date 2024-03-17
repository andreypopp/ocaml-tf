(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_media_asset__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_media_asset__timeouts *)

type azurerm_media_asset = {
  alternate_id : string prop option; [@option]  (** alternate_id *)
  container : string prop option; [@option]  (** container *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  media_services_account_name : string prop;
      (** media_services_account_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_account_name : string prop option; [@option]
      (** storage_account_name *)
  timeouts : azurerm_media_asset__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_media_asset *)

type t = {
  alternate_id : string prop;
  container : string prop;
  description : string prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  storage_account_name : string prop;
}

let azurerm_media_asset ?alternate_id ?container ?description ?id
    ?storage_account_name ?timeouts ~media_services_account_name
    ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_media_asset" in
  let __resource =
    ({
       alternate_id;
       container;
       description;
       id;
       media_services_account_name;
       name;
       resource_group_name;
       storage_account_name;
       timeouts;
     }
      : azurerm_media_asset)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_media_asset __resource);
  let __resource_attributes =
    ({
       alternate_id =
         Prop.computed __resource_type __resource_id "alternate_id";
       container =
         Prop.computed __resource_type __resource_id "container";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       media_services_account_name =
         Prop.computed __resource_type __resource_id
           "media_services_account_name";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       storage_account_name =
         Prop.computed __resource_type __resource_id
           "storage_account_name";
     }
      : t)
  in
  __resource_attributes

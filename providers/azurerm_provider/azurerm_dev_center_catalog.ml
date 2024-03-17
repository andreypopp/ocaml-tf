(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dev_center_catalog__catalog_adogit = {
  branch : string prop;  (** branch *)
  key_vault_key_url : string prop;  (** key_vault_key_url *)
  path : string prop;  (** path *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** azurerm_dev_center_catalog__catalog_adogit *)

type azurerm_dev_center_catalog__catalog_github = {
  branch : string prop;  (** branch *)
  key_vault_key_url : string prop;  (** key_vault_key_url *)
  path : string prop;  (** path *)
  uri : string prop;  (** uri *)
}
[@@deriving yojson_of]
(** azurerm_dev_center_catalog__catalog_github *)

type azurerm_dev_center_catalog__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dev_center_catalog__timeouts *)

type azurerm_dev_center_catalog = {
  dev_center_id : string prop;  (** dev_center_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  catalog_adogit : azurerm_dev_center_catalog__catalog_adogit list;
  catalog_github : azurerm_dev_center_catalog__catalog_github list;
  timeouts : azurerm_dev_center_catalog__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_center_catalog *)

let azurerm_dev_center_catalog ?id ?timeouts ~dev_center_id ~name
    ~resource_group_name ~catalog_adogit ~catalog_github
    __resource_id =
  let __resource_type = "azurerm_dev_center_catalog" in
  let __resource =
    {
      dev_center_id;
      id;
      name;
      resource_group_name;
      catalog_adogit;
      catalog_github;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_center_catalog __resource);
  ()

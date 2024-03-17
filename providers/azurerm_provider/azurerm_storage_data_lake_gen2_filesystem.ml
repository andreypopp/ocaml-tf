(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_data_lake_gen2_filesystem__ace = {
  id : string option; [@option]  (** id *)
  permissions : string;  (** permissions *)
  scope : string option; [@option]  (** scope *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_filesystem__ace *)

type azurerm_storage_data_lake_gen2_filesystem__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_filesystem__timeouts *)

type azurerm_storage_data_lake_gen2_filesystem = {
  name : string;  (** name *)
  properties : (string * string) list option; [@option]
      (** properties *)
  storage_account_id : string;  (** storage_account_id *)
  ace : azurerm_storage_data_lake_gen2_filesystem__ace list;
  timeouts :
    azurerm_storage_data_lake_gen2_filesystem__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_data_lake_gen2_filesystem *)

let azurerm_storage_data_lake_gen2_filesystem ?properties ?timeouts
    ~name ~storage_account_id ~ace __resource_id =
  let __resource_type =
    "azurerm_storage_data_lake_gen2_filesystem"
  in
  let __resource =
    { name; properties; storage_account_id; ace; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_data_lake_gen2_filesystem __resource);
  ()

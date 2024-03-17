(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_share_directory__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_share_directory__timeouts *)

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
  timeouts : azurerm_storage_share_directory__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_share_directory *)

let azurerm_storage_share_directory ?id ?metadata ?share_name
    ?storage_account_name ?storage_share_id ?timeouts ~name
    __resource_id =
  let __resource_type = "azurerm_storage_share_directory" in
  let __resource =
    {
      id;
      metadata;
      name;
      share_name;
      storage_account_name;
      storage_share_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_share_directory __resource);
  ()

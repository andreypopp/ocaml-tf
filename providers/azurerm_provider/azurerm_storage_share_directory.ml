(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_storage_share_directory__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_share_directory__timeouts *)

type azurerm_storage_share_directory = {
  metadata : (string * string) list option; [@option]
      (** metadata *)
  name : string;  (** name *)
  timeouts : azurerm_storage_share_directory__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_share_directory *)

let azurerm_storage_share_directory ?metadata ?timeouts ~name
    __resource_id =
  let __resource_type = "azurerm_storage_share_directory" in
  let __resource = { metadata; name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_share_directory __resource);
  ()
(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_data_share_account__identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_data_share_account__identity *)

type azurerm_data_share_account__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_data_share_account__timeouts *)

type azurerm_data_share_account = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_data_share_account__identity list;
  timeouts : azurerm_data_share_account__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_share_account *)

let azurerm_data_share_account ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_data_share_account" in
  let __resource =
    { location; name; resource_group_name; tags; identity; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_share_account __resource);
  ()

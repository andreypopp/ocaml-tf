(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_dev_center__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_dev_center__identity *)

type azurerm_dev_center__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dev_center__timeouts *)

type azurerm_dev_center = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_dev_center__identity list;
  timeouts : azurerm_dev_center__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_center *)

let azurerm_dev_center ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_dev_center" in
  let __resource =
    {
      id;
      location;
      name;
      resource_group_name;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_center __resource);
  ()

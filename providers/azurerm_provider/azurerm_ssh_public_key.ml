(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_ssh_public_key__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_ssh_public_key__timeouts *)

type azurerm_ssh_public_key = {
  location : string;  (** location *)
  name : string;  (** name *)
  public_key : string;  (** public_key *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_ssh_public_key__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_ssh_public_key *)

let azurerm_ssh_public_key ?tags ?timeouts ~location ~name
    ~public_key ~resource_group_name __resource_id =
  let __resource_type = "azurerm_ssh_public_key" in
  let __resource =
    {
      location;
      name;
      public_key;
      resource_group_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_ssh_public_key __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_dev_test_lab__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_dev_test_lab__timeouts *)

type azurerm_dev_test_lab = {
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  storage_type : string option; [@option]  (** storage_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_dev_test_lab__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_dev_test_lab *)

let azurerm_dev_test_lab ?storage_type ?tags ?timeouts ~location
    ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_dev_test_lab" in
  let __resource =
    {
      location;
      name;
      resource_group_name;
      storage_type;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_dev_test_lab __resource);
  ()

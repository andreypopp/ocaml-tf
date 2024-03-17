(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_healthcare_workspace__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_healthcare_workspace__timeouts *)

type azurerm_healthcare_workspace__private_endpoint_connection = {
  id : string;  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]

type azurerm_healthcare_workspace = {
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_healthcare_workspace__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_healthcare_workspace *)

let azurerm_healthcare_workspace ?id ?tags ?timeouts ~location ~name
    ~resource_group_name __resource_id =
  let __resource_type = "azurerm_healthcare_workspace" in
  let __resource =
    { id; location; name; resource_group_name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_healthcare_workspace __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_communication_service__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_communication_service__timeouts *)

type azurerm_communication_service = {
  data_location : string option; [@option]  (** data_location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_communication_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_communication_service *)

let azurerm_communication_service ?data_location ?tags ?timeouts
    ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_communication_service" in
  let __resource =
    { data_location; name; resource_group_name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_communication_service __resource);
  ()

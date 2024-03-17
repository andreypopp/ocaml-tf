(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_communication_service__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_communication_service__timeouts *)

type azurerm_communication_service = {
  data_location : string prop option; [@option]  (** data_location *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_communication_service__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_communication_service *)

let azurerm_communication_service ?data_location ?id ?tags ?timeouts
    ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_communication_service" in
  let __resource =
    { data_location; id; name; resource_group_name; tags; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_communication_service __resource);
  ()

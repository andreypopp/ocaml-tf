(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_sync__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_sync__timeouts *)

type azurerm_storage_sync = {
  incoming_traffic_policy : string option; [@option]
      (** incoming_traffic_policy *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : azurerm_storage_sync__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_sync *)

let azurerm_storage_sync ?incoming_traffic_policy ?tags ?timeouts
    ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_storage_sync" in
  let __resource =
    {
      incoming_traffic_policy;
      location;
      name;
      resource_group_name;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_sync __resource);
  ()

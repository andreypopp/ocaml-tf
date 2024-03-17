(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_eventhub_namespace_disaster_recovery_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace_disaster_recovery_config__timeouts *)

type azurerm_eventhub_namespace_disaster_recovery_config = {
  name : string;  (** name *)
  namespace_name : string;  (** namespace_name *)
  partner_namespace_id : string;  (** partner_namespace_id *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts :
    azurerm_eventhub_namespace_disaster_recovery_config__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_eventhub_namespace_disaster_recovery_config *)

let azurerm_eventhub_namespace_disaster_recovery_config ?timeouts
    ~name ~namespace_name ~partner_namespace_id ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_eventhub_namespace_disaster_recovery_config"
  in
  let __resource =
    {
      name;
      namespace_name;
      partner_namespace_id;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_eventhub_namespace_disaster_recovery_config
       __resource);
  ()

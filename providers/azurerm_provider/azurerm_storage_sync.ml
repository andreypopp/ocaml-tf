(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_sync__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_sync__timeouts *)

type azurerm_storage_sync = {
  id : string prop option; [@option]  (** id *)
  incoming_traffic_policy : string prop option; [@option]
      (** incoming_traffic_policy *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeouts : azurerm_storage_sync__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_sync *)

let azurerm_storage_sync ?id ?incoming_traffic_policy ?tags ?timeouts
    ~location ~name ~resource_group_name __resource_id =
  let __resource_type = "azurerm_storage_sync" in
  let __resource =
    {
      id;
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

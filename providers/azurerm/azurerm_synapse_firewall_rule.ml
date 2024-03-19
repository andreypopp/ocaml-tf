(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_synapse_firewall_rule = {
  end_ip_address : string prop;  (** end_ip_address *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  start_ip_address : string prop;  (** start_ip_address *)
  synapse_workspace_id : string prop;  (** synapse_workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_synapse_firewall_rule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_synapse_firewall_rule ?id ?timeouts ~end_ip_address ~name
    ~start_ip_address ~synapse_workspace_id () :
    azurerm_synapse_firewall_rule =
  {
    end_ip_address;
    id;
    name;
    start_ip_address;
    synapse_workspace_id;
    timeouts;
  }

type t = {
  end_ip_address : string prop;
  id : string prop;
  name : string prop;
  start_ip_address : string prop;
  synapse_workspace_id : string prop;
}

let register ?tf_module ?id ?timeouts ~end_ip_address ~name
    ~start_ip_address ~synapse_workspace_id __resource_id =
  let __resource_type = "azurerm_synapse_firewall_rule" in
  let __resource =
    azurerm_synapse_firewall_rule ?id ?timeouts ~end_ip_address ~name
      ~start_ip_address ~synapse_workspace_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_synapse_firewall_rule __resource);
  let __resource_attributes =
    ({
       end_ip_address =
         Prop.computed __resource_type __resource_id "end_ip_address";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       start_ip_address =
         Prop.computed __resource_type __resource_id
           "start_ip_address";
       synapse_workspace_id =
         Prop.computed __resource_type __resource_id
           "synapse_workspace_id";
     }
      : t)
  in
  __resource_attributes

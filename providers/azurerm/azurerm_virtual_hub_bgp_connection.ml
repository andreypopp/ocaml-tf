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

type azurerm_virtual_hub_bgp_connection = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  peer_asn : float prop;  (** peer_asn *)
  peer_ip : string prop;  (** peer_ip *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  virtual_network_connection_id : string prop option; [@option]
      (** virtual_network_connection_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_bgp_connection *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_hub_bgp_connection ?id
    ?virtual_network_connection_id ?timeouts ~name ~peer_asn ~peer_ip
    ~virtual_hub_id () : azurerm_virtual_hub_bgp_connection =
  {
    id;
    name;
    peer_asn;
    peer_ip;
    virtual_hub_id;
    virtual_network_connection_id;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  peer_asn : float prop;
  peer_ip : string prop;
  virtual_hub_id : string prop;
  virtual_network_connection_id : string prop;
}

let register ?tf_module ?id ?virtual_network_connection_id ?timeouts
    ~name ~peer_asn ~peer_ip ~virtual_hub_id __resource_id =
  let __resource_type = "azurerm_virtual_hub_bgp_connection" in
  let __resource =
    azurerm_virtual_hub_bgp_connection ?id
      ?virtual_network_connection_id ?timeouts ~name ~peer_asn
      ~peer_ip ~virtual_hub_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_hub_bgp_connection __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       peer_asn =
         Prop.computed __resource_type __resource_id "peer_asn";
       peer_ip =
         Prop.computed __resource_type __resource_id "peer_ip";
       virtual_hub_id =
         Prop.computed __resource_type __resource_id "virtual_hub_id";
       virtual_network_connection_id =
         Prop.computed __resource_type __resource_id
           "virtual_network_connection_id";
     }
      : t)
  in
  __resource_attributes

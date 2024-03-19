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

type azurerm_virtual_network_dns_servers = {
  dns_servers : string prop list option; [@option]
      (** dns_servers *)
  id : string prop option; [@option]  (** id *)
  virtual_network_id : string prop;  (** virtual_network_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_network_dns_servers *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_virtual_network_dns_servers ?dns_servers ?id ?timeouts
    ~virtual_network_id () : azurerm_virtual_network_dns_servers =
  { dns_servers; id; virtual_network_id; timeouts }

type t = {
  dns_servers : string list prop;
  id : string prop;
  virtual_network_id : string prop;
}

let register ?tf_module ?dns_servers ?id ?timeouts
    ~virtual_network_id __resource_id =
  let __resource_type = "azurerm_virtual_network_dns_servers" in
  let __resource =
    azurerm_virtual_network_dns_servers ?dns_servers ?id ?timeouts
      ~virtual_network_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_network_dns_servers __resource);
  let __resource_attributes =
    ({
       dns_servers =
         Prop.computed __resource_type __resource_id "dns_servers";
       id = Prop.computed __resource_type __resource_id "id";
       virtual_network_id =
         Prop.computed __resource_type __resource_id
           "virtual_network_id";
     }
      : t)
  in
  __resource_attributes

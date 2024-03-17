(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_network_dns_servers__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_network_dns_servers__timeouts *)

type azurerm_virtual_network_dns_servers = {
  dns_servers : string list option; [@option]  (** dns_servers *)
  id : string option; [@option]  (** id *)
  virtual_network_id : string;  (** virtual_network_id *)
  timeouts : azurerm_virtual_network_dns_servers__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_network_dns_servers *)

let azurerm_virtual_network_dns_servers ?dns_servers ?id ?timeouts
    ~virtual_network_id __resource_id =
  let __resource_type = "azurerm_virtual_network_dns_servers" in
  let __resource =
    { dns_servers; id; virtual_network_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_network_dns_servers __resource);
  ()

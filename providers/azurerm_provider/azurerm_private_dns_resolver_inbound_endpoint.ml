(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_dns_resolver_inbound_endpoint__ip_configurations = {
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  private_ip_allocation_method : string prop option; [@option]
      (** private_ip_allocation_method *)
  subnet_id : string prop;  (** subnet_id *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_inbound_endpoint__ip_configurations *)

type azurerm_private_dns_resolver_inbound_endpoint__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_inbound_endpoint__timeouts *)

type azurerm_private_dns_resolver_inbound_endpoint = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  private_dns_resolver_id : string prop;
      (** private_dns_resolver_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  ip_configurations :
    azurerm_private_dns_resolver_inbound_endpoint__ip_configurations
    list;
  timeouts :
    azurerm_private_dns_resolver_inbound_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver_inbound_endpoint *)

type t = {
  id : string prop;
  location : string prop;
  name : string prop;
  private_dns_resolver_id : string prop;
  tags : (string * string) list prop;
}

let azurerm_private_dns_resolver_inbound_endpoint ?id ?tags ?timeouts
    ~location ~name ~private_dns_resolver_id ~ip_configurations
    __resource_id =
  let __resource_type =
    "azurerm_private_dns_resolver_inbound_endpoint"
  in
  let __resource =
    ({
       id;
       location;
       name;
       private_dns_resolver_id;
       tags;
       ip_configurations;
       timeouts;
     }
      : azurerm_private_dns_resolver_inbound_endpoint)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_resolver_inbound_endpoint
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       private_dns_resolver_id =
         Prop.computed __resource_type __resource_id
           "private_dns_resolver_id";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes

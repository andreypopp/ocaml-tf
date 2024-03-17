(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_hub_ip__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_ip__timeouts *)

type azurerm_virtual_hub_ip = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  private_ip_allocation_method : string prop option; [@option]
      (** private_ip_allocation_method *)
  public_ip_address_id : string prop;  (** public_ip_address_id *)
  subnet_id : string prop;  (** subnet_id *)
  virtual_hub_id : string prop;  (** virtual_hub_id *)
  timeouts : azurerm_virtual_hub_ip__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_ip *)

type t = {
  id : string prop;
  name : string prop;
  private_ip_address : string prop;
  private_ip_allocation_method : string prop;
  public_ip_address_id : string prop;
  subnet_id : string prop;
  virtual_hub_id : string prop;
}

let azurerm_virtual_hub_ip ?id ?private_ip_address
    ?private_ip_allocation_method ?timeouts ~name
    ~public_ip_address_id ~subnet_id ~virtual_hub_id __resource_id =
  let __resource_type = "azurerm_virtual_hub_ip" in
  let __resource =
    ({
       id;
       name;
       private_ip_address;
       private_ip_allocation_method;
       public_ip_address_id;
       subnet_id;
       virtual_hub_id;
       timeouts;
     }
      : azurerm_virtual_hub_ip)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_hub_ip __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       private_ip_address =
         Prop.computed __resource_type __resource_id
           "private_ip_address";
       private_ip_allocation_method =
         Prop.computed __resource_type __resource_id
           "private_ip_allocation_method";
       public_ip_address_id =
         Prop.computed __resource_type __resource_id
           "public_ip_address_id";
       subnet_id =
         Prop.computed __resource_type __resource_id "subnet_id";
       virtual_hub_id =
         Prop.computed __resource_type __resource_id "virtual_hub_id";
     }
      : t)
  in
  __resource_attributes

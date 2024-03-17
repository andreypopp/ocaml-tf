(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_virtual_hub_ip__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_ip__timeouts *)

type azurerm_virtual_hub_ip = {
  name : string;  (** name *)
  private_ip_address : string option; [@option]
      (** private_ip_address *)
  private_ip_allocation_method : string option; [@option]
      (** private_ip_allocation_method *)
  public_ip_address_id : string;  (** public_ip_address_id *)
  subnet_id : string;  (** subnet_id *)
  virtual_hub_id : string;  (** virtual_hub_id *)
  timeouts : azurerm_virtual_hub_ip__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_virtual_hub_ip *)

let azurerm_virtual_hub_ip ?private_ip_address
    ?private_ip_allocation_method ?timeouts ~name
    ~public_ip_address_id ~subnet_id ~virtual_hub_id __resource_id =
  let __resource_type = "azurerm_virtual_hub_ip" in
  let __resource =
    {
      name;
      private_ip_address;
      private_ip_allocation_method;
      public_ip_address_id;
      subnet_id;
      virtual_hub_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_virtual_hub_ip __resource);
  ()

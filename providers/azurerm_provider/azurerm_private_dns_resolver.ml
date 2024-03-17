(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_private_dns_resolver__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver__timeouts *)

type azurerm_private_dns_resolver = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_network_id : string prop;  (** virtual_network_id *)
  timeouts : azurerm_private_dns_resolver__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_resolver *)

let azurerm_private_dns_resolver ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~virtual_network_id __resource_id =
  let __resource_type = "azurerm_private_dns_resolver" in
  let __resource =
    {
      id;
      location;
      name;
      resource_group_name;
      tags;
      virtual_network_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_resolver __resource);
  ()

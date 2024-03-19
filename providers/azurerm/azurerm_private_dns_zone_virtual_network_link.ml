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

type azurerm_private_dns_zone_virtual_network_link = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  private_dns_zone_name : string prop;  (** private_dns_zone_name *)
  registration_enabled : bool prop option; [@option]
      (** registration_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  virtual_network_id : string prop;  (** virtual_network_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_private_dns_zone_virtual_network_link *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_private_dns_zone_virtual_network_link ?id
    ?registration_enabled ?tags ?timeouts ~name
    ~private_dns_zone_name ~resource_group_name ~virtual_network_id
    () : azurerm_private_dns_zone_virtual_network_link =
  {
    id;
    name;
    private_dns_zone_name;
    registration_enabled;
    resource_group_name;
    tags;
    virtual_network_id;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  private_dns_zone_name : string prop;
  registration_enabled : bool prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  virtual_network_id : string prop;
}

let register ?tf_module ?id ?registration_enabled ?tags ?timeouts
    ~name ~private_dns_zone_name ~resource_group_name
    ~virtual_network_id __resource_id =
  let __resource_type =
    "azurerm_private_dns_zone_virtual_network_link"
  in
  let __resource =
    azurerm_private_dns_zone_virtual_network_link ?id
      ?registration_enabled ?tags ?timeouts ~name
      ~private_dns_zone_name ~resource_group_name ~virtual_network_id
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_private_dns_zone_virtual_network_link
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       private_dns_zone_name =
         Prop.computed __resource_type __resource_id
           "private_dns_zone_name";
       registration_enabled =
         Prop.computed __resource_type __resource_id
           "registration_enabled";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       virtual_network_id =
         Prop.computed __resource_type __resource_id
           "virtual_network_id";
     }
      : t)
  in
  __resource_attributes

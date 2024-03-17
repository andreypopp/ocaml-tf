(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iotcentral_application__identity = {
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_iotcentral_application__identity *)

type azurerm_iotcentral_application__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iotcentral_application__timeouts *)

type azurerm_iotcentral_application = {
  display_name : string prop option; [@option]  (** display_name *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_network_access_enabled : bool prop option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop option; [@option]  (** sku *)
  sub_domain : string prop;  (** sub_domain *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  template : string prop option; [@option]  (** template *)
  identity : azurerm_iotcentral_application__identity list;
  timeouts : azurerm_iotcentral_application__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iotcentral_application *)

let azurerm_iotcentral_application ?display_name ?id
    ?public_network_access_enabled ?sku ?tags ?template ?timeouts
    ~location ~name ~resource_group_name ~sub_domain ~identity
    __resource_id =
  let __resource_type = "azurerm_iotcentral_application" in
  let __resource =
    {
      display_name;
      id;
      location;
      name;
      public_network_access_enabled;
      resource_group_name;
      sku;
      sub_domain;
      tags;
      template;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iotcentral_application __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iotcentral_application__identity = {
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_iotcentral_application__identity *)

type azurerm_iotcentral_application__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iotcentral_application__timeouts *)

type azurerm_iotcentral_application = {
  display_name : string option; [@option]  (** display_name *)
  id : string option; [@option]  (** id *)
  location : string;  (** location *)
  name : string;  (** name *)
  public_network_access_enabled : bool option; [@option]
      (** public_network_access_enabled *)
  resource_group_name : string;  (** resource_group_name *)
  sku : string option; [@option]  (** sku *)
  sub_domain : string;  (** sub_domain *)
  tags : (string * string) list option; [@option]  (** tags *)
  template : string option; [@option]  (** template *)
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

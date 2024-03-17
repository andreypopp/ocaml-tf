(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_fluid_relay_server__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_fluid_relay_server__identity *)

type azurerm_fluid_relay_server__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_fluid_relay_server__timeouts *)

type azurerm_fluid_relay_server = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  storage_sku : string prop option; [@option]  (** storage_sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_fluid_relay_server__identity list;
  timeouts : azurerm_fluid_relay_server__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_fluid_relay_server *)

type t = {
  frs_tenant_id : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  orderer_endpoints : string list prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_key : string prop;
  service_endpoints : string list prop;
  storage_endpoints : string list prop;
  storage_sku : string prop;
  tags : (string * string) list prop;
}

let azurerm_fluid_relay_server ?id ?storage_sku ?tags ?timeouts
    ~location ~name ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_fluid_relay_server" in
  let __resource =
    ({
       id;
       location;
       name;
       resource_group_name;
       storage_sku;
       tags;
       identity;
       timeouts;
     }
      : azurerm_fluid_relay_server)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_fluid_relay_server __resource);
  let __resource_attributes =
    ({
       frs_tenant_id =
         Prop.computed __resource_type __resource_id "frs_tenant_id";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       orderer_endpoints =
         Prop.computed __resource_type __resource_id
           "orderer_endpoints";
       primary_key =
         Prop.computed __resource_type __resource_id "primary_key";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       secondary_key =
         Prop.computed __resource_type __resource_id "secondary_key";
       service_endpoints =
         Prop.computed __resource_type __resource_id
           "service_endpoints";
       storage_endpoints =
         Prop.computed __resource_type __resource_id
           "storage_endpoints";
       storage_sku =
         Prop.computed __resource_type __resource_id "storage_sku";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes

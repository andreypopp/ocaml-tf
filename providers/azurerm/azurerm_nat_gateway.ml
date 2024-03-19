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

type azurerm_nat_gateway = {
  id : string prop option; [@option]  (** id *)
  idle_timeout_in_minutes : float prop option; [@option]
      (** idle_timeout_in_minutes *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop option; [@option]  (** sku_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list option; [@option]  (** zones *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_nat_gateway *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_nat_gateway ?id ?idle_timeout_in_minutes ?sku_name ?tags
    ?zones ?timeouts ~location ~name ~resource_group_name () :
    azurerm_nat_gateway =
  {
    id;
    idle_timeout_in_minutes;
    location;
    name;
    resource_group_name;
    sku_name;
    tags;
    zones;
    timeouts;
  }

type t = {
  id : string prop;
  idle_timeout_in_minutes : float prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_guid : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

let register ?tf_module ?id ?idle_timeout_in_minutes ?sku_name ?tags
    ?zones ?timeouts ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_nat_gateway" in
  let __resource =
    azurerm_nat_gateway ?id ?idle_timeout_in_minutes ?sku_name ?tags
      ?zones ?timeouts ~location ~name ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_nat_gateway __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       idle_timeout_in_minutes =
         Prop.computed __resource_type __resource_id
           "idle_timeout_in_minutes";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       resource_guid =
         Prop.computed __resource_type __resource_id "resource_guid";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       tags = Prop.computed __resource_type __resource_id "tags";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes

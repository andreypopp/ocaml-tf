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

type azurerm_public_ip_prefix = {
  id : string prop option; [@option]  (** id *)
  ip_version : string prop option; [@option]  (** ip_version *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  prefix_length : float prop option; [@option]  (** prefix_length *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop option; [@option]  (** sku *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list option; [@option]  (** zones *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_public_ip_prefix *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_public_ip_prefix ?id ?ip_version ?prefix_length ?sku
    ?tags ?zones ?timeouts ~location ~name ~resource_group_name () :
    azurerm_public_ip_prefix =
  {
    id;
    ip_version;
    location;
    name;
    prefix_length;
    resource_group_name;
    sku;
    tags;
    zones;
    timeouts;
  }

type t = {
  id : string prop;
  ip_prefix : string prop;
  ip_version : string prop;
  location : string prop;
  name : string prop;
  prefix_length : float prop;
  resource_group_name : string prop;
  sku : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

let register ?tf_module ?id ?ip_version ?prefix_length ?sku ?tags
    ?zones ?timeouts ~location ~name ~resource_group_name
    __resource_id =
  let __resource_type = "azurerm_public_ip_prefix" in
  let __resource =
    azurerm_public_ip_prefix ?id ?ip_version ?prefix_length ?sku
      ?tags ?zones ?timeouts ~location ~name ~resource_group_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_public_ip_prefix __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       ip_prefix =
         Prop.computed __resource_type __resource_id "ip_prefix";
       ip_version =
         Prop.computed __resource_type __resource_id "ip_version";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       prefix_length =
         Prop.computed __resource_type __resource_id "prefix_length";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku = Prop.computed __resource_type __resource_id "sku";
       tags = Prop.computed __resource_type __resource_id "tags";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes

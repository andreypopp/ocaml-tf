(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type identity = { type_ : string prop [@key "type"]  (** type *) }
[@@deriving yojson_of]
(** identity *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_arc_resource_bridge_appliance = {
  distro : string prop;  (** distro *)
  id : string prop option; [@option]  (** id *)
  infrastructure_provider : string prop;
      (** infrastructure_provider *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_key_base64 : string prop option; [@option]
      (** public_key_base64 *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_arc_resource_bridge_appliance *)

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_arc_resource_bridge_appliance ?id ?public_key_base64
    ?tags ?timeouts ~distro ~infrastructure_provider ~location ~name
    ~resource_group_name ~identity () :
    azurerm_arc_resource_bridge_appliance =
  {
    distro;
    id;
    infrastructure_provider;
    location;
    name;
    public_key_base64;
    resource_group_name;
    tags;
    identity;
    timeouts;
  }

type t = {
  distro : string prop;
  id : string prop;
  infrastructure_provider : string prop;
  location : string prop;
  name : string prop;
  public_key_base64 : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let register ?tf_module ?id ?public_key_base64 ?tags ?timeouts
    ~distro ~infrastructure_provider ~location ~name
    ~resource_group_name ~identity __resource_id =
  let __resource_type = "azurerm_arc_resource_bridge_appliance" in
  let __resource =
    azurerm_arc_resource_bridge_appliance ?id ?public_key_base64
      ?tags ?timeouts ~distro ~infrastructure_provider ~location
      ~name ~resource_group_name ~identity ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_arc_resource_bridge_appliance __resource);
  let __resource_attributes =
    ({
       distro = Prop.computed __resource_type __resource_id "distro";
       id = Prop.computed __resource_type __resource_id "id";
       infrastructure_provider =
         Prop.computed __resource_type __resource_id
           "infrastructure_provider";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       public_key_base64 =
         Prop.computed __resource_type __resource_id
           "public_key_base64";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes

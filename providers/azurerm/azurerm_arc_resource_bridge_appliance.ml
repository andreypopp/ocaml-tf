(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?public_key_base64 ?tags ?timeouts ~distro
    ~infrastructure_provider ~location ~name ~resource_group_name
    ~identity __id =
  let __type = "azurerm_arc_resource_bridge_appliance" in
  let __attrs =
    ({
       distro = Prop.computed __type __id "distro";
       id = Prop.computed __type __id "id";
       infrastructure_provider =
         Prop.computed __type __id "infrastructure_provider";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_key_base64 =
         Prop.computed __type __id "public_key_base64";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_arc_resource_bridge_appliance
        (azurerm_arc_resource_bridge_appliance ?id ?public_key_base64
           ?tags ?timeouts ~distro ~infrastructure_provider ~location
           ~name ~resource_group_name ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?public_key_base64 ?tags ?timeouts
    ~distro ~infrastructure_provider ~location ~name
    ~resource_group_name ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?id ?public_key_base64 ?tags ?timeouts ~distro
      ~infrastructure_provider ~location ~name ~resource_group_name
      ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

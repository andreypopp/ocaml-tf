(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?ip_version ?prefix_length ?sku ?tags ?zones ?timeouts
    ~location ~name ~resource_group_name __id =
  let __type = "azurerm_public_ip_prefix" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       ip_prefix = Prop.computed __type __id "ip_prefix";
       ip_version = Prop.computed __type __id "ip_version";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       prefix_length = Prop.computed __type __id "prefix_length";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       tags = Prop.computed __type __id "tags";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_public_ip_prefix
        (azurerm_public_ip_prefix ?id ?ip_version ?prefix_length ?sku
           ?tags ?zones ?timeouts ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?ip_version ?prefix_length ?sku ?tags
    ?zones ?timeouts ~location ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?ip_version ?prefix_length ?sku ?tags ?zones ?timeouts
      ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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
  identity : identity list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iotcentral_application *)

let identity ~type_ () : identity = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_iotcentral_application ?display_name ?id
    ?public_network_access_enabled ?sku ?tags ?template ?timeouts
    ~location ~name ~resource_group_name ~sub_domain ~identity () :
    azurerm_iotcentral_application =
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

type t = {
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  sku : string prop;
  sub_domain : string prop;
  tags : (string * string) list prop;
  template : string prop;
}

let make ?display_name ?id ?public_network_access_enabled ?sku ?tags
    ?template ?timeouts ~location ~name ~resource_group_name
    ~sub_domain ~identity __id =
  let __type = "azurerm_iotcentral_application" in
  let __attrs =
    ({
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       sub_domain = Prop.computed __type __id "sub_domain";
       tags = Prop.computed __type __id "tags";
       template = Prop.computed __type __id "template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_iotcentral_application
        (azurerm_iotcentral_application ?display_name ?id
           ?public_network_access_enabled ?sku ?tags ?template
           ?timeouts ~location ~name ~resource_group_name ~sub_domain
           ~identity ());
    attrs = __attrs;
  }

let register ?tf_module ?display_name ?id
    ?public_network_access_enabled ?sku ?tags ?template ?timeouts
    ~location ~name ~resource_group_name ~sub_domain ~identity __id =
  let (r : _ Tf_core.resource) =
    make ?display_name ?id ?public_network_access_enabled ?sku ?tags
      ?template ?timeouts ~location ~name ~resource_group_name
      ~sub_domain ~identity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

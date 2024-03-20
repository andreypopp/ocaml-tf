(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type frontend_ip_configuration = {
  gateway_load_balancer_frontend_ip_configuration_id :
    string prop option;
      [@option]
      (** gateway_load_balancer_frontend_ip_configuration_id *)
  name : string prop;  (** name *)
  private_ip_address : string prop option; [@option]
      (** private_ip_address *)
  private_ip_address_allocation : string prop option; [@option]
      (** private_ip_address_allocation *)
  private_ip_address_version : string prop option; [@option]
      (** private_ip_address_version *)
  public_ip_address_id : string prop option; [@option]
      (** public_ip_address_id *)
  public_ip_prefix_id : string prop option; [@option]
      (** public_ip_prefix_id *)
  subnet_id : string prop option; [@option]  (** subnet_id *)
  zones : string prop list option; [@option]  (** zones *)
}
[@@deriving yojson_of]
(** frontend_ip_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_lb = {
  edge_zone : string prop option; [@option]  (** edge_zone *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku : string prop option; [@option]  (** sku *)
  sku_tier : string prop option; [@option]  (** sku_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  frontend_ip_configuration : frontend_ip_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lb *)

let frontend_ip_configuration
    ?gateway_load_balancer_frontend_ip_configuration_id
    ?private_ip_address ?private_ip_address_allocation
    ?private_ip_address_version ?public_ip_address_id
    ?public_ip_prefix_id ?subnet_id ?zones ~name () :
    frontend_ip_configuration =
  {
    gateway_load_balancer_frontend_ip_configuration_id;
    name;
    private_ip_address;
    private_ip_address_allocation;
    private_ip_address_version;
    public_ip_address_id;
    public_ip_prefix_id;
    subnet_id;
    zones;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lb ?edge_zone ?id ?sku ?sku_tier ?tags ?timeouts
    ~location ~name ~resource_group_name ~frontend_ip_configuration
    () : azurerm_lb =
  {
    edge_zone;
    id;
    location;
    name;
    resource_group_name;
    sku;
    sku_tier;
    tags;
    frontend_ip_configuration;
    timeouts;
  }

type t = {
  edge_zone : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  private_ip_address : string prop;
  private_ip_addresses : string list prop;
  resource_group_name : string prop;
  sku : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
}

let make ?edge_zone ?id ?sku ?sku_tier ?tags ?timeouts ~location
    ~name ~resource_group_name ~frontend_ip_configuration __id =
  let __type = "azurerm_lb" in
  let __attrs =
    ({
       edge_zone = Prop.computed __type __id "edge_zone";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       private_ip_address =
         Prop.computed __type __id "private_ip_address";
       private_ip_addresses =
         Prop.computed __type __id "private_ip_addresses";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku = Prop.computed __type __id "sku";
       sku_tier = Prop.computed __type __id "sku_tier";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lb
        (azurerm_lb ?edge_zone ?id ?sku ?sku_tier ?tags ?timeouts
           ~location ~name ~resource_group_name
           ~frontend_ip_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?edge_zone ?id ?sku ?sku_tier ?tags ?timeouts
    ~location ~name ~resource_group_name ~frontend_ip_configuration
    __id =
  let (r : _ Tf_core.resource) =
    make ?edge_zone ?id ?sku ?sku_tier ?tags ?timeouts ~location
      ~name ~resource_group_name ~frontend_ip_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

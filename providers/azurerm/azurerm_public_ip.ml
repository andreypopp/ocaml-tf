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

type azurerm_public_ip = {
  allocation_method : string prop;  (** allocation_method *)
  ddos_protection_mode : string prop option; [@option]
      (** ddos_protection_mode *)
  ddos_protection_plan_id : string prop option; [@option]
      (** ddos_protection_plan_id *)
  domain_name_label : string prop option; [@option]
      (** domain_name_label *)
  edge_zone : string prop option; [@option]  (** edge_zone *)
  id : string prop option; [@option]  (** id *)
  idle_timeout_in_minutes : float prop option; [@option]
      (** idle_timeout_in_minutes *)
  ip_tags : (string * string prop) list option; [@option]
      (** ip_tags *)
  ip_version : string prop option; [@option]  (** ip_version *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  public_ip_prefix_id : string prop option; [@option]
      (** public_ip_prefix_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  reverse_fqdn : string prop option; [@option]  (** reverse_fqdn *)
  sku : string prop option; [@option]  (** sku *)
  sku_tier : string prop option; [@option]  (** sku_tier *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zones : string prop list option; [@option]  (** zones *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_public_ip *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_public_ip ?ddos_protection_mode ?ddos_protection_plan_id
    ?domain_name_label ?edge_zone ?id ?idle_timeout_in_minutes
    ?ip_tags ?ip_version ?public_ip_prefix_id ?reverse_fqdn ?sku
    ?sku_tier ?tags ?zones ?timeouts ~allocation_method ~location
    ~name ~resource_group_name () : azurerm_public_ip =
  {
    allocation_method;
    ddos_protection_mode;
    ddos_protection_plan_id;
    domain_name_label;
    edge_zone;
    id;
    idle_timeout_in_minutes;
    ip_tags;
    ip_version;
    location;
    name;
    public_ip_prefix_id;
    resource_group_name;
    reverse_fqdn;
    sku;
    sku_tier;
    tags;
    zones;
    timeouts;
  }

type t = {
  allocation_method : string prop;
  ddos_protection_mode : string prop;
  ddos_protection_plan_id : string prop;
  domain_name_label : string prop;
  edge_zone : string prop;
  fqdn : string prop;
  id : string prop;
  idle_timeout_in_minutes : float prop;
  ip_address : string prop;
  ip_tags : (string * string) list prop;
  ip_version : string prop;
  location : string prop;
  name : string prop;
  public_ip_prefix_id : string prop;
  resource_group_name : string prop;
  reverse_fqdn : string prop;
  sku : string prop;
  sku_tier : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

let make ?ddos_protection_mode ?ddos_protection_plan_id
    ?domain_name_label ?edge_zone ?id ?idle_timeout_in_minutes
    ?ip_tags ?ip_version ?public_ip_prefix_id ?reverse_fqdn ?sku
    ?sku_tier ?tags ?zones ?timeouts ~allocation_method ~location
    ~name ~resource_group_name __id =
  let __type = "azurerm_public_ip" in
  let __attrs =
    ({
       allocation_method =
         Prop.computed __type __id "allocation_method";
       ddos_protection_mode =
         Prop.computed __type __id "ddos_protection_mode";
       ddos_protection_plan_id =
         Prop.computed __type __id "ddos_protection_plan_id";
       domain_name_label =
         Prop.computed __type __id "domain_name_label";
       edge_zone = Prop.computed __type __id "edge_zone";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       idle_timeout_in_minutes =
         Prop.computed __type __id "idle_timeout_in_minutes";
       ip_address = Prop.computed __type __id "ip_address";
       ip_tags = Prop.computed __type __id "ip_tags";
       ip_version = Prop.computed __type __id "ip_version";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       public_ip_prefix_id =
         Prop.computed __type __id "public_ip_prefix_id";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       reverse_fqdn = Prop.computed __type __id "reverse_fqdn";
       sku = Prop.computed __type __id "sku";
       sku_tier = Prop.computed __type __id "sku_tier";
       tags = Prop.computed __type __id "tags";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_public_ip
        (azurerm_public_ip ?ddos_protection_mode
           ?ddos_protection_plan_id ?domain_name_label ?edge_zone ?id
           ?idle_timeout_in_minutes ?ip_tags ?ip_version
           ?public_ip_prefix_id ?reverse_fqdn ?sku ?sku_tier ?tags
           ?zones ?timeouts ~allocation_method ~location ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?ddos_protection_mode
    ?ddos_protection_plan_id ?domain_name_label ?edge_zone ?id
    ?idle_timeout_in_minutes ?ip_tags ?ip_version
    ?public_ip_prefix_id ?reverse_fqdn ?sku ?sku_tier ?tags ?zones
    ?timeouts ~allocation_method ~location ~name ~resource_group_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?ddos_protection_mode ?ddos_protection_plan_id
      ?domain_name_label ?edge_zone ?id ?idle_timeout_in_minutes
      ?ip_tags ?ip_version ?public_ip_prefix_id ?reverse_fqdn ?sku
      ?sku_tier ?tags ?zones ?timeouts ~allocation_method ~location
      ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

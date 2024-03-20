(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type bgp_settings = {
  asn : float prop;  (** asn *)
  bgp_peering_address : string prop;  (** bgp_peering_address *)
  peer_weight : float prop option; [@option]  (** peer_weight *)
}
[@@deriving yojson_of]
(** bgp_settings *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_local_network_gateway = {
  address_space : string prop list option; [@option]
      (** address_space *)
  gateway_address : string prop option; [@option]
      (** gateway_address *)
  gateway_fqdn : string prop option; [@option]  (** gateway_fqdn *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  bgp_settings : bgp_settings list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_local_network_gateway *)

let bgp_settings ?peer_weight ~asn ~bgp_peering_address () :
    bgp_settings =
  { asn; bgp_peering_address; peer_weight }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_local_network_gateway ?address_space ?gateway_address
    ?gateway_fqdn ?id ?tags ?timeouts ~location ~name
    ~resource_group_name ~bgp_settings () :
    azurerm_local_network_gateway =
  {
    address_space;
    gateway_address;
    gateway_fqdn;
    id;
    location;
    name;
    resource_group_name;
    tags;
    bgp_settings;
    timeouts;
  }

type t = {
  address_space : string list prop;
  gateway_address : string prop;
  gateway_fqdn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let make ?address_space ?gateway_address ?gateway_fqdn ?id ?tags
    ?timeouts ~location ~name ~resource_group_name ~bgp_settings __id
    =
  let __type = "azurerm_local_network_gateway" in
  let __attrs =
    ({
       address_space = Prop.computed __type __id "address_space";
       gateway_address = Prop.computed __type __id "gateway_address";
       gateway_fqdn = Prop.computed __type __id "gateway_fqdn";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
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
      yojson_of_azurerm_local_network_gateway
        (azurerm_local_network_gateway ?address_space
           ?gateway_address ?gateway_fqdn ?id ?tags ?timeouts
           ~location ~name ~resource_group_name ~bgp_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?address_space ?gateway_address ?gateway_fqdn
    ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~bgp_settings __id =
  let (r : _ Tf_core.resource) =
    make ?address_space ?gateway_address ?gateway_fqdn ?id ?tags
      ?timeouts ~location ~name ~resource_group_name ~bgp_settings
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

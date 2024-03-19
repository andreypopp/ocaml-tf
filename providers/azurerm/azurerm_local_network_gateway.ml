(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?address_space ?gateway_address ?gateway_fqdn
    ?id ?tags ?timeouts ~location ~name ~resource_group_name
    ~bgp_settings __resource_id =
  let __resource_type = "azurerm_local_network_gateway" in
  let __resource =
    azurerm_local_network_gateway ?address_space ?gateway_address
      ?gateway_fqdn ?id ?tags ?timeouts ~location ~name
      ~resource_group_name ~bgp_settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_local_network_gateway __resource);
  let __resource_attributes =
    ({
       address_space =
         Prop.computed __resource_type __resource_id "address_space";
       gateway_address =
         Prop.computed __resource_type __resource_id
           "gateway_address";
       gateway_fqdn =
         Prop.computed __resource_type __resource_id "gateway_fqdn";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes

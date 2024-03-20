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

type azurerm_mobile_network_packet_core_data_plane = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  mobile_network_packet_core_control_plane_id : string prop;
      (** mobile_network_packet_core_control_plane_id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  user_plane_access_ipv4_address : string prop option; [@option]
      (** user_plane_access_ipv4_address *)
  user_plane_access_ipv4_gateway : string prop option; [@option]
      (** user_plane_access_ipv4_gateway *)
  user_plane_access_ipv4_subnet : string prop option; [@option]
      (** user_plane_access_ipv4_subnet *)
  user_plane_access_name : string prop option; [@option]
      (** user_plane_access_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_packet_core_data_plane *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mobile_network_packet_core_data_plane ?id ?tags
    ?user_plane_access_ipv4_address ?user_plane_access_ipv4_gateway
    ?user_plane_access_ipv4_subnet ?user_plane_access_name ?timeouts
    ~location ~mobile_network_packet_core_control_plane_id ~name () :
    azurerm_mobile_network_packet_core_data_plane =
  {
    id;
    location;
    mobile_network_packet_core_control_plane_id;
    name;
    tags;
    user_plane_access_ipv4_address;
    user_plane_access_ipv4_gateway;
    user_plane_access_ipv4_subnet;
    user_plane_access_name;
    timeouts;
  }

type t = {
  id : string prop;
  location : string prop;
  mobile_network_packet_core_control_plane_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  user_plane_access_ipv4_address : string prop;
  user_plane_access_ipv4_gateway : string prop;
  user_plane_access_ipv4_subnet : string prop;
  user_plane_access_name : string prop;
}

let make ?id ?tags ?user_plane_access_ipv4_address
    ?user_plane_access_ipv4_gateway ?user_plane_access_ipv4_subnet
    ?user_plane_access_name ?timeouts ~location
    ~mobile_network_packet_core_control_plane_id ~name __id =
  let __type = "azurerm_mobile_network_packet_core_data_plane" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       mobile_network_packet_core_control_plane_id =
         Prop.computed __type __id
           "mobile_network_packet_core_control_plane_id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       user_plane_access_ipv4_address =
         Prop.computed __type __id "user_plane_access_ipv4_address";
       user_plane_access_ipv4_gateway =
         Prop.computed __type __id "user_plane_access_ipv4_gateway";
       user_plane_access_ipv4_subnet =
         Prop.computed __type __id "user_plane_access_ipv4_subnet";
       user_plane_access_name =
         Prop.computed __type __id "user_plane_access_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network_packet_core_data_plane
        (azurerm_mobile_network_packet_core_data_plane ?id ?tags
           ?user_plane_access_ipv4_address
           ?user_plane_access_ipv4_gateway
           ?user_plane_access_ipv4_subnet ?user_plane_access_name
           ?timeouts ~location
           ~mobile_network_packet_core_control_plane_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?user_plane_access_ipv4_address
    ?user_plane_access_ipv4_gateway ?user_plane_access_ipv4_subnet
    ?user_plane_access_name ?timeouts ~location
    ~mobile_network_packet_core_control_plane_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?user_plane_access_ipv4_address
      ?user_plane_access_ipv4_gateway ?user_plane_access_ipv4_subnet
      ?user_plane_access_name ?timeouts ~location
      ~mobile_network_packet_core_control_plane_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

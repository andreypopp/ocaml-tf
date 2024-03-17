(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_mobile_network_packet_core_data_plane__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_mobile_network_packet_core_data_plane__timeouts *)

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
  timeouts :
    azurerm_mobile_network_packet_core_data_plane__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mobile_network_packet_core_data_plane *)

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

let azurerm_mobile_network_packet_core_data_plane ?id ?tags
    ?user_plane_access_ipv4_address ?user_plane_access_ipv4_gateway
    ?user_plane_access_ipv4_subnet ?user_plane_access_name ?timeouts
    ~location ~mobile_network_packet_core_control_plane_id ~name
    __resource_id =
  let __resource_type =
    "azurerm_mobile_network_packet_core_data_plane"
  in
  let __resource =
    ({
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
      : azurerm_mobile_network_packet_core_data_plane)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_mobile_network_packet_core_data_plane
       __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       mobile_network_packet_core_control_plane_id =
         Prop.computed __resource_type __resource_id
           "mobile_network_packet_core_control_plane_id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       user_plane_access_ipv4_address =
         Prop.computed __resource_type __resource_id
           "user_plane_access_ipv4_address";
       user_plane_access_ipv4_gateway =
         Prop.computed __resource_type __resource_id
           "user_plane_access_ipv4_gateway";
       user_plane_access_ipv4_subnet =
         Prop.computed __resource_type __resource_id
           "user_plane_access_ipv4_subnet";
       user_plane_access_name =
         Prop.computed __resource_type __resource_id
           "user_plane_access_name";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_mobile_network_packet_core_data_plane = {
  id : string prop option; [@option]
  mobile_network_packet_core_control_plane_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mobile_network_packet_core_data_plane) -> ()

let yojson_of_azurerm_mobile_network_packet_core_data_plane =
  (function
   | {
       id = v_id;
       mobile_network_packet_core_control_plane_id =
         v_mobile_network_packet_core_control_plane_id;
       name = v_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_mobile_network_packet_core_control_plane_id
         in
         ("mobile_network_packet_core_control_plane_id", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mobile_network_packet_core_data_plane ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mobile_network_packet_core_data_plane

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_mobile_network_packet_core_data_plane ?id ?timeouts
    ~mobile_network_packet_core_control_plane_id ~name () :
    azurerm_mobile_network_packet_core_data_plane =
  { id; mobile_network_packet_core_control_plane_id; name; timeouts }

type t = {
  tf_name : string;
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

let make ?id ?timeouts ~mobile_network_packet_core_control_plane_id
    ~name __id =
  let __type = "azurerm_mobile_network_packet_core_data_plane" in
  let __attrs =
    ({
       tf_name = __id;
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
        (azurerm_mobile_network_packet_core_data_plane ?id ?timeouts
           ~mobile_network_packet_core_control_plane_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts
    ~mobile_network_packet_core_control_plane_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~mobile_network_packet_core_control_plane_id
      ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

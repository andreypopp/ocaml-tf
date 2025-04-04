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

type static_ip_configuration = {
  attached_data_network_id : string prop;
  slice_id : string prop;
  static_ipv4_address : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : static_ip_configuration) -> ()

let yojson_of_static_ip_configuration =
  (function
   | {
       attached_data_network_id = v_attached_data_network_id;
       slice_id = v_slice_id;
       static_ipv4_address = v_static_ipv4_address;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_static_ipv4_address
         in
         ("static_ipv4_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_slice_id in
         ("slice_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_attached_data_network_id
         in
         ("attached_data_network_id", arg) :: bnds
       in
       `Assoc bnds
    : static_ip_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_static_ip_configuration

[@@@deriving.end]

type azurerm_mobile_network_sim = {
  id : string prop option; [@option]
  mobile_network_sim_group_id : string prop;
  name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mobile_network_sim) -> ()

let yojson_of_azurerm_mobile_network_sim =
  (function
   | {
       id = v_id;
       mobile_network_sim_group_id = v_mobile_network_sim_group_id;
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
             v_mobile_network_sim_group_id
         in
         ("mobile_network_sim_group_id", arg) :: bnds
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
    : azurerm_mobile_network_sim -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mobile_network_sim

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_mobile_network_sim ?id ?timeouts
    ~mobile_network_sim_group_id ~name () :
    azurerm_mobile_network_sim =
  { id; mobile_network_sim_group_id; name; timeouts }

type t = {
  tf_name : string;
  device_type : string prop;
  id : string prop;
  integrated_circuit_card_identifier : string prop;
  international_mobile_subscriber_identity : string prop;
  mobile_network_sim_group_id : string prop;
  name : string prop;
  sim_policy_id : string prop;
  sim_state : string prop;
  static_ip_configuration : static_ip_configuration list prop;
  vendor_key_fingerprint : string prop;
  vendor_name : string prop;
}

let make ?id ?timeouts ~mobile_network_sim_group_id ~name __id =
  let __type = "azurerm_mobile_network_sim" in
  let __attrs =
    ({
       tf_name = __id;
       device_type = Prop.computed __type __id "device_type";
       id = Prop.computed __type __id "id";
       integrated_circuit_card_identifier =
         Prop.computed __type __id
           "integrated_circuit_card_identifier";
       international_mobile_subscriber_identity =
         Prop.computed __type __id
           "international_mobile_subscriber_identity";
       mobile_network_sim_group_id =
         Prop.computed __type __id "mobile_network_sim_group_id";
       name = Prop.computed __type __id "name";
       sim_policy_id = Prop.computed __type __id "sim_policy_id";
       sim_state = Prop.computed __type __id "sim_state";
       static_ip_configuration =
         Prop.computed __type __id "static_ip_configuration";
       vendor_key_fingerprint =
         Prop.computed __type __id "vendor_key_fingerprint";
       vendor_name = Prop.computed __type __id "vendor_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mobile_network_sim
        (azurerm_mobile_network_sim ?id ?timeouts
           ~mobile_network_sim_group_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~mobile_network_sim_group_id
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~mobile_network_sim_group_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

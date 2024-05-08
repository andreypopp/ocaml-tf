(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type static_ip_configuration = {
  attached_data_network_id : string prop;
  slice_id : string prop;
  static_ipv4_address : string prop option; [@option]
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
         match v_static_ipv4_address with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "static_ipv4_address", arg in
             bnd :: bnds
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

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_mobile_network_sim = {
  authentication_key : string prop;
  device_type : string prop option; [@option]
  id : string prop option; [@option]
  integrated_circuit_card_identifier : string prop;
  international_mobile_subscriber_identity : string prop;
  mobile_network_sim_group_id : string prop;
  name : string prop;
  operator_key_code : string prop;
  sim_policy_id : string prop option; [@option]
  static_ip_configuration : static_ip_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mobile_network_sim) -> ()

let yojson_of_azurerm_mobile_network_sim =
  (function
   | {
       authentication_key = v_authentication_key;
       device_type = v_device_type;
       id = v_id;
       integrated_circuit_card_identifier =
         v_integrated_circuit_card_identifier;
       international_mobile_subscriber_identity =
         v_international_mobile_subscriber_identity;
       mobile_network_sim_group_id = v_mobile_network_sim_group_id;
       name = v_name;
       operator_key_code = v_operator_key_code;
       sim_policy_id = v_sim_policy_id;
       static_ip_configuration = v_static_ip_configuration;
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
         if [] = v_static_ip_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_static_ip_configuration)
               v_static_ip_configuration
           in
           let bnd = "static_ip_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_sim_policy_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "sim_policy_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_operator_key_code
         in
         ("operator_key_code", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_international_mobile_subscriber_identity
         in
         ("international_mobile_subscriber_identity", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_integrated_circuit_card_identifier
         in
         ("integrated_circuit_card_identifier", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_device_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "device_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_authentication_key
         in
         ("authentication_key", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_mobile_network_sim -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mobile_network_sim

[@@@deriving.end]

let static_ip_configuration ?static_ipv4_address
    ~attached_data_network_id ~slice_id () : static_ip_configuration
    =
  { attached_data_network_id; slice_id; static_ipv4_address }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mobile_network_sim ?device_type ?id ?sim_policy_id
    ?(static_ip_configuration = []) ?timeouts ~authentication_key
    ~integrated_circuit_card_identifier
    ~international_mobile_subscriber_identity
    ~mobile_network_sim_group_id ~name ~operator_key_code () :
    azurerm_mobile_network_sim =
  {
    authentication_key;
    device_type;
    id;
    integrated_circuit_card_identifier;
    international_mobile_subscriber_identity;
    mobile_network_sim_group_id;
    name;
    operator_key_code;
    sim_policy_id;
    static_ip_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  authentication_key : string prop;
  device_type : string prop;
  id : string prop;
  integrated_circuit_card_identifier : string prop;
  international_mobile_subscriber_identity : string prop;
  mobile_network_sim_group_id : string prop;
  name : string prop;
  operator_key_code : string prop;
  sim_policy_id : string prop;
  sim_state : string prop;
  vendor_key_fingerprint : string prop;
  vendor_name : string prop;
}

let make ?device_type ?id ?sim_policy_id
    ?(static_ip_configuration = []) ?timeouts ~authentication_key
    ~integrated_circuit_card_identifier
    ~international_mobile_subscriber_identity
    ~mobile_network_sim_group_id ~name ~operator_key_code __id =
  let __type = "azurerm_mobile_network_sim" in
  let __attrs =
    ({
       tf_name = __id;
       authentication_key =
         Prop.computed __type __id "authentication_key";
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
       operator_key_code =
         Prop.computed __type __id "operator_key_code";
       sim_policy_id = Prop.computed __type __id "sim_policy_id";
       sim_state = Prop.computed __type __id "sim_state";
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
        (azurerm_mobile_network_sim ?device_type ?id ?sim_policy_id
           ~static_ip_configuration ?timeouts ~authentication_key
           ~integrated_circuit_card_identifier
           ~international_mobile_subscriber_identity
           ~mobile_network_sim_group_id ~name ~operator_key_code ());
    attrs = __attrs;
  }

let register ?tf_module ?device_type ?id ?sim_policy_id
    ?(static_ip_configuration = []) ?timeouts ~authentication_key
    ~integrated_circuit_card_identifier
    ~international_mobile_subscriber_identity
    ~mobile_network_sim_group_id ~name ~operator_key_code __id =
  let (r : _ Tf_core.resource) =
    make ?device_type ?id ?sim_policy_id ~static_ip_configuration
      ?timeouts ~authentication_key
      ~integrated_circuit_card_identifier
      ~international_mobile_subscriber_identity
      ~mobile_network_sim_group_id ~name ~operator_key_code __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

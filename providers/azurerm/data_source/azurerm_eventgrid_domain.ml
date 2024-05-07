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

type identity = {
  identity_ids : string prop list;
  principal_id : string prop;
  tenant_id : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | {
       identity_ids = v_identity_ids;
       principal_id = v_principal_id;
       tenant_id = v_tenant_id;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_tenant_id in
         ("tenant_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_identity_ids
         in
         ("identity_ids", arg) :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type inbound_ip_rule = {
  action : string prop;
  ip_mask : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : inbound_ip_rule) -> ()

let yojson_of_inbound_ip_rule =
  (function
   | { action = v_action; ip_mask = v_ip_mask } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_ip_mask in
         ("ip_mask", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : inbound_ip_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_inbound_ip_rule

[@@@deriving.end]

type input_mapping_default_values = {
  data_version : string prop;
  event_type : string prop;
  subject : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_mapping_default_values) -> ()

let yojson_of_input_mapping_default_values =
  (function
   | {
       data_version = v_data_version;
       event_type = v_event_type;
       subject = v_subject;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subject in
         ("subject", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_type in
         ("event_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data_version in
         ("data_version", arg) :: bnds
       in
       `Assoc bnds
    : input_mapping_default_values ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_mapping_default_values

[@@@deriving.end]

type input_mapping_fields = {
  data_version : string prop;
  event_time : string prop;
  event_type : string prop;
  id : string prop;
  subject : string prop;
  topic : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_mapping_fields) -> ()

let yojson_of_input_mapping_fields =
  (function
   | {
       data_version = v_data_version;
       event_time = v_event_time;
       event_type = v_event_type;
       id = v_id;
       subject = v_subject;
       topic = v_topic;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_topic in
         ("topic", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_subject in
         ("subject", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_type in
         ("event_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_event_time in
         ("event_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_data_version in
         ("data_version", arg) :: bnds
       in
       `Assoc bnds
    : input_mapping_fields -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_mapping_fields

[@@@deriving.end]

type azurerm_eventgrid_domain = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_eventgrid_domain) -> ()

let yojson_of_azurerm_eventgrid_domain =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
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
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : azurerm_eventgrid_domain -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_eventgrid_domain

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_eventgrid_domain ?id ?timeouts ~name ~resource_group_name
    () : azurerm_eventgrid_domain =
  { id; name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  endpoint : string prop;
  id : string prop;
  identity : identity list prop;
  inbound_ip_rule : inbound_ip_rule list prop;
  input_mapping_default_values :
    input_mapping_default_values list prop;
  input_mapping_fields : input_mapping_fields list prop;
  input_schema : string prop;
  location : string prop;
  name : string prop;
  primary_access_key : string prop;
  public_network_access_enabled : bool prop;
  resource_group_name : string prop;
  secondary_access_key : string prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_eventgrid_domain" in
  let __attrs =
    ({
       tf_name = __id;
       endpoint = Prop.computed __type __id "endpoint";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       inbound_ip_rule = Prop.computed __type __id "inbound_ip_rule";
       input_mapping_default_values =
         Prop.computed __type __id "input_mapping_default_values";
       input_mapping_fields =
         Prop.computed __type __id "input_mapping_fields";
       input_schema = Prop.computed __type __id "input_schema";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       primary_access_key =
         Prop.computed __type __id "primary_access_key";
       public_network_access_enabled =
         Prop.computed __type __id "public_network_access_enabled";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       secondary_access_key =
         Prop.computed __type __id "secondary_access_key";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_eventgrid_domain
        (azurerm_eventgrid_domain ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

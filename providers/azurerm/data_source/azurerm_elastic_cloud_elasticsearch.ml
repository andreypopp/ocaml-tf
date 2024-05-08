(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type logs__filtering_tag = {
  action : string prop;
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : logs__filtering_tag) -> ()

let yojson_of_logs__filtering_tag =
  (function
   | { action = v_action; name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : logs__filtering_tag -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs__filtering_tag

[@@@deriving.end]

type logs = unit [@@deriving_inline yojson_of]

let _ = fun (_ : logs) -> ()

let yojson_of_logs =
  (yojson_of_unit : logs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_logs

[@@@deriving.end]

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

type azurerm_elastic_cloud_elasticsearch = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  logs : logs list; [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_elastic_cloud_elasticsearch) -> ()

let yojson_of_azurerm_elastic_cloud_elasticsearch =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       logs = v_logs;
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
         if [] = v_logs then bnds
         else
           let arg = (yojson_of_list yojson_of_logs) v_logs in
           let bnd = "logs", arg in
           bnd :: bnds
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
    : azurerm_elastic_cloud_elasticsearch ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_elastic_cloud_elasticsearch

[@@@deriving.end]

let logs () = ()
let timeouts ?read () : timeouts = { read }

let azurerm_elastic_cloud_elasticsearch ?id ?(logs = []) ?timeouts
    ~name ~resource_group_name () :
    azurerm_elastic_cloud_elasticsearch =
  { id; name; resource_group_name; logs; timeouts }

type t = {
  tf_name : string;
  elastic_cloud_deployment_id : string prop;
  elastic_cloud_email_address : string prop;
  elastic_cloud_sso_default_url : string prop;
  elastic_cloud_user_id : string prop;
  elasticsearch_service_url : string prop;
  id : string prop;
  kibana_service_url : string prop;
  kibana_sso_uri : string prop;
  location : string prop;
  monitoring_enabled : bool prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?(logs = []) ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_elastic_cloud_elasticsearch" in
  let __attrs =
    ({
       tf_name = __id;
       elastic_cloud_deployment_id =
         Prop.computed __type __id "elastic_cloud_deployment_id";
       elastic_cloud_email_address =
         Prop.computed __type __id "elastic_cloud_email_address";
       elastic_cloud_sso_default_url =
         Prop.computed __type __id "elastic_cloud_sso_default_url";
       elastic_cloud_user_id =
         Prop.computed __type __id "elastic_cloud_user_id";
       elasticsearch_service_url =
         Prop.computed __type __id "elasticsearch_service_url";
       id = Prop.computed __type __id "id";
       kibana_service_url =
         Prop.computed __type __id "kibana_service_url";
       kibana_sso_uri = Prop.computed __type __id "kibana_sso_uri";
       location = Prop.computed __type __id "location";
       monitoring_enabled =
         Prop.computed __type __id "monitoring_enabled";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_elastic_cloud_elasticsearch
        (azurerm_elastic_cloud_elasticsearch ?id ~logs ?timeouts
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(logs = []) ?timeouts ~name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~logs ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

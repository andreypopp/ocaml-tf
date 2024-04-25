(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type content_key = {
  content_key_id : string prop option; [@option]
  label_reference_in_streaming_policy : string prop option; [@option]
  policy_name : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : content_key) -> ()

let yojson_of_content_key =
  (function
   | {
       content_key_id = v_content_key_id;
       label_reference_in_streaming_policy =
         v_label_reference_in_streaming_policy;
       policy_name = v_policy_name;
       type_ = v_type_;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label_reference_in_streaming_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label_reference_in_streaming_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : content_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_content_key

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
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

type azurerm_media_streaming_locator = {
  alternative_media_id : string prop option; [@option]
  asset_name : string prop;
  default_content_key_policy_name : string prop option; [@option]
  end_time : string prop option; [@option]
  filter_names : string prop list option; [@option]
  id : string prop option; [@option]
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  start_time : string prop option; [@option]
  streaming_locator_id : string prop option; [@option]
  streaming_policy_name : string prop;
  content_key : content_key list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_media_streaming_locator) -> ()

let yojson_of_azurerm_media_streaming_locator =
  (function
   | {
       alternative_media_id = v_alternative_media_id;
       asset_name = v_asset_name;
       default_content_key_policy_name =
         v_default_content_key_policy_name;
       end_time = v_end_time;
       filter_names = v_filter_names;
       id = v_id;
       media_services_account_name = v_media_services_account_name;
       name = v_name;
       resource_group_name = v_resource_group_name;
       start_time = v_start_time;
       streaming_locator_id = v_streaming_locator_id;
       streaming_policy_name = v_streaming_policy_name;
       content_key = v_content_key;
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
           yojson_of_list yojson_of_content_key v_content_key
         in
         ("content_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_streaming_policy_name
         in
         ("streaming_policy_name", arg) :: bnds
       in
       let bnds =
         match v_streaming_locator_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "streaming_locator_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_start_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "start_time", arg in
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
         let arg =
           yojson_of_prop yojson_of_string
             v_media_services_account_name
         in
         ("media_services_account_name", arg) :: bnds
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
         match v_filter_names with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "filter_names", arg in
             bnd :: bnds
       in
       let bnds =
         match v_end_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "end_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_content_key_policy_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_content_key_policy_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_asset_name in
         ("asset_name", arg) :: bnds
       in
       let bnds =
         match v_alternative_media_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alternative_media_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_media_streaming_locator ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_media_streaming_locator

[@@@deriving.end]

let content_key ?content_key_id ?label_reference_in_streaming_policy
    ?policy_name ?type_ ?value () : content_key =
  {
    content_key_id;
    label_reference_in_streaming_policy;
    policy_name;
    type_;
    value;
  }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_media_streaming_locator ?alternative_media_id
    ?default_content_key_policy_name ?end_time ?filter_names ?id
    ?start_time ?streaming_locator_id ?(content_key = []) ?timeouts
    ~asset_name ~media_services_account_name ~name
    ~resource_group_name ~streaming_policy_name () :
    azurerm_media_streaming_locator =
  {
    alternative_media_id;
    asset_name;
    default_content_key_policy_name;
    end_time;
    filter_names;
    id;
    media_services_account_name;
    name;
    resource_group_name;
    start_time;
    streaming_locator_id;
    streaming_policy_name;
    content_key;
    timeouts;
  }

type t = {
  alternative_media_id : string prop;
  asset_name : string prop;
  default_content_key_policy_name : string prop;
  end_time : string prop;
  filter_names : string list prop;
  id : string prop;
  media_services_account_name : string prop;
  name : string prop;
  resource_group_name : string prop;
  start_time : string prop;
  streaming_locator_id : string prop;
  streaming_policy_name : string prop;
}

let make ?alternative_media_id ?default_content_key_policy_name
    ?end_time ?filter_names ?id ?start_time ?streaming_locator_id
    ?(content_key = []) ?timeouts ~asset_name
    ~media_services_account_name ~name ~resource_group_name
    ~streaming_policy_name __id =
  let __type = "azurerm_media_streaming_locator" in
  let __attrs =
    ({
       alternative_media_id =
         Prop.computed __type __id "alternative_media_id";
       asset_name = Prop.computed __type __id "asset_name";
       default_content_key_policy_name =
         Prop.computed __type __id "default_content_key_policy_name";
       end_time = Prop.computed __type __id "end_time";
       filter_names = Prop.computed __type __id "filter_names";
       id = Prop.computed __type __id "id";
       media_services_account_name =
         Prop.computed __type __id "media_services_account_name";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       start_time = Prop.computed __type __id "start_time";
       streaming_locator_id =
         Prop.computed __type __id "streaming_locator_id";
       streaming_policy_name =
         Prop.computed __type __id "streaming_policy_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_media_streaming_locator
        (azurerm_media_streaming_locator ?alternative_media_id
           ?default_content_key_policy_name ?end_time ?filter_names
           ?id ?start_time ?streaming_locator_id ~content_key
           ?timeouts ~asset_name ~media_services_account_name ~name
           ~resource_group_name ~streaming_policy_name ());
    attrs = __attrs;
  }

let register ?tf_module ?alternative_media_id
    ?default_content_key_policy_name ?end_time ?filter_names ?id
    ?start_time ?streaming_locator_id ?(content_key = []) ?timeouts
    ~asset_name ~media_services_account_name ~name
    ~resource_group_name ~streaming_policy_name __id =
  let (r : _ Tf_core.resource) =
    make ?alternative_media_id ?default_content_key_policy_name
      ?end_time ?filter_names ?id ?start_time ?streaming_locator_id
      ~content_key ?timeouts ~asset_name ~media_services_account_name
      ~name ~resource_group_name ~streaming_policy_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

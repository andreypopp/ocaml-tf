(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type tag_filter = {
  action : string prop;
  name : string prop;
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : tag_filter) -> ()

let yojson_of_tag_filter =
  (function
   | { action = v_action; name = v_name; value = v_value } ->
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : tag_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_tag_filter

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

type azurerm_logz_sub_account_tag_rule = {
  id : string prop option; [@option]
  logz_sub_account_id : string prop;
  send_aad_logs : bool prop option; [@option]
  send_activity_logs : bool prop option; [@option]
  send_subscription_logs : bool prop option; [@option]
  tag_filter : tag_filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_logz_sub_account_tag_rule) -> ()

let yojson_of_azurerm_logz_sub_account_tag_rule =
  (function
   | {
       id = v_id;
       logz_sub_account_id = v_logz_sub_account_id;
       send_aad_logs = v_send_aad_logs;
       send_activity_logs = v_send_activity_logs;
       send_subscription_logs = v_send_subscription_logs;
       tag_filter = v_tag_filter;
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
         if Stdlib.( = ) [] v_tag_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_tag_filter) v_tag_filter
           in
           let bnd = "tag_filter", arg in
           bnd :: bnds
       in
       let bnds =
         match v_send_subscription_logs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "send_subscription_logs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_send_activity_logs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "send_activity_logs", arg in
             bnd :: bnds
       in
       let bnds =
         match v_send_aad_logs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "send_aad_logs", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_logz_sub_account_id
         in
         ("logz_sub_account_id", arg) :: bnds
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
    : azurerm_logz_sub_account_tag_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_logz_sub_account_tag_rule

[@@@deriving.end]

let tag_filter ?value ~action ~name () : tag_filter =
  { action; name; value }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_logz_sub_account_tag_rule ?id ?send_aad_logs
    ?send_activity_logs ?send_subscription_logs ?(tag_filter = [])
    ?timeouts ~logz_sub_account_id () :
    azurerm_logz_sub_account_tag_rule =
  {
    id;
    logz_sub_account_id;
    send_aad_logs;
    send_activity_logs;
    send_subscription_logs;
    tag_filter;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  logz_sub_account_id : string prop;
  send_aad_logs : bool prop;
  send_activity_logs : bool prop;
  send_subscription_logs : bool prop;
}

let make ?id ?send_aad_logs ?send_activity_logs
    ?send_subscription_logs ?(tag_filter = []) ?timeouts
    ~logz_sub_account_id __id =
  let __type = "azurerm_logz_sub_account_tag_rule" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       logz_sub_account_id =
         Prop.computed __type __id "logz_sub_account_id";
       send_aad_logs = Prop.computed __type __id "send_aad_logs";
       send_activity_logs =
         Prop.computed __type __id "send_activity_logs";
       send_subscription_logs =
         Prop.computed __type __id "send_subscription_logs";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_logz_sub_account_tag_rule
        (azurerm_logz_sub_account_tag_rule ?id ?send_aad_logs
           ?send_activity_logs ?send_subscription_logs ~tag_filter
           ?timeouts ~logz_sub_account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?send_aad_logs ?send_activity_logs
    ?send_subscription_logs ?(tag_filter = []) ?timeouts
    ~logz_sub_account_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?send_aad_logs ?send_activity_logs
      ?send_subscription_logs ~tag_filter ?timeouts
      ~logz_sub_account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_stream_analytics_output_powerbi = {
  dataset : string prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop option; [@option]
  name : string prop;
  stream_analytics_job_id : string prop;
  table : string prop;
  token_user_display_name : string prop option; [@option]
  token_user_principal_name : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_stream_analytics_output_powerbi) -> ()

let yojson_of_azurerm_stream_analytics_output_powerbi =
  (function
   | {
       dataset = v_dataset;
       group_id = v_group_id;
       group_name = v_group_name;
       id = v_id;
       name = v_name;
       stream_analytics_job_id = v_stream_analytics_job_id;
       table = v_table;
       token_user_display_name = v_token_user_display_name;
       token_user_principal_name = v_token_user_principal_name;
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
         match v_token_user_principal_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_user_principal_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_token_user_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "token_user_display_name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_stream_analytics_job_id
         in
         ("stream_analytics_job_id", arg) :: bnds
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_name in
         ("group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_group_id in
         ("group_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset in
         ("dataset", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_stream_analytics_output_powerbi ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_output_powerbi

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_output_powerbi ?id
    ?token_user_display_name ?token_user_principal_name ?timeouts
    ~dataset ~group_id ~group_name ~name ~stream_analytics_job_id
    ~table () : azurerm_stream_analytics_output_powerbi =
  {
    dataset;
    group_id;
    group_name;
    id;
    name;
    stream_analytics_job_id;
    table;
    token_user_display_name;
    token_user_principal_name;
    timeouts;
  }

type t = {
  tf_name : string;
  dataset : string prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop;
  name : string prop;
  stream_analytics_job_id : string prop;
  table : string prop;
  token_user_display_name : string prop;
  token_user_principal_name : string prop;
}

let make ?id ?token_user_display_name ?token_user_principal_name
    ?timeouts ~dataset ~group_id ~group_name ~name
    ~stream_analytics_job_id ~table __id =
  let __type = "azurerm_stream_analytics_output_powerbi" in
  let __attrs =
    ({
       tf_name = __id;
       dataset = Prop.computed __type __id "dataset";
       group_id = Prop.computed __type __id "group_id";
       group_name = Prop.computed __type __id "group_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       stream_analytics_job_id =
         Prop.computed __type __id "stream_analytics_job_id";
       table = Prop.computed __type __id "table";
       token_user_display_name =
         Prop.computed __type __id "token_user_display_name";
       token_user_principal_name =
         Prop.computed __type __id "token_user_principal_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_output_powerbi
        (azurerm_stream_analytics_output_powerbi ?id
           ?token_user_display_name ?token_user_principal_name
           ?timeouts ~dataset ~group_id ~group_name ~name
           ~stream_analytics_job_id ~table ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?token_user_display_name
    ?token_user_principal_name ?timeouts ~dataset ~group_id
    ~group_name ~name ~stream_analytics_job_id ~table __id =
  let (r : _ Tf_core.resource) =
    make ?id ?token_user_display_name ?token_user_principal_name
      ?timeouts ~dataset ~group_id ~group_name ~name
      ~stream_analytics_job_id ~table __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

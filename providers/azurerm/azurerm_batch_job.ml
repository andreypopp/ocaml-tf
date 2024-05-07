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

type azurerm_batch_job = {
  batch_pool_id : string prop;
  common_environment_properties : (string * string prop) list option;
      [@option]
  display_name : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  priority : float prop option; [@option]
  task_retry_maximum : float prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_batch_job) -> ()

let yojson_of_azurerm_batch_job =
  (function
   | {
       batch_pool_id = v_batch_pool_id;
       common_environment_properties =
         v_common_environment_properties;
       display_name = v_display_name;
       id = v_id;
       name = v_name;
       priority = v_priority;
       task_retry_maximum = v_task_retry_maximum;
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
         match v_task_retry_maximum with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "task_retry_maximum", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "priority", arg in
             bnd :: bnds
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
         match v_display_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "display_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_common_environment_properties with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "common_environment_properties", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_batch_pool_id in
         ("batch_pool_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_batch_job -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_batch_job

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_batch_job ?common_environment_properties ?display_name
    ?id ?priority ?task_retry_maximum ?timeouts ~batch_pool_id ~name
    () : azurerm_batch_job =
  {
    batch_pool_id;
    common_environment_properties;
    display_name;
    id;
    name;
    priority;
    task_retry_maximum;
    timeouts;
  }

type t = {
  tf_name : string;
  batch_pool_id : string prop;
  common_environment_properties : (string * string) list prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  task_retry_maximum : float prop;
}

let make ?common_environment_properties ?display_name ?id ?priority
    ?task_retry_maximum ?timeouts ~batch_pool_id ~name __id =
  let __type = "azurerm_batch_job" in
  let __attrs =
    ({
       tf_name = __id;
       batch_pool_id = Prop.computed __type __id "batch_pool_id";
       common_environment_properties =
         Prop.computed __type __id "common_environment_properties";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       task_retry_maximum =
         Prop.computed __type __id "task_retry_maximum";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_batch_job
        (azurerm_batch_job ?common_environment_properties
           ?display_name ?id ?priority ?task_retry_maximum ?timeouts
           ~batch_pool_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?common_environment_properties ?display_name
    ?id ?priority ?task_retry_maximum ?timeouts ~batch_pool_id ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?common_environment_properties ?display_name ?id ?priority
      ?task_retry_maximum ?timeouts ~batch_pool_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

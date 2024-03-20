(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type azurerm_synapse_role_assignment = {
  id : string prop option; [@option]
  principal_id : string prop;
  principal_type : string prop option; [@option]
  role_name : string prop;
  synapse_spark_pool_id : string prop option; [@option]
  synapse_workspace_id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_synapse_role_assignment) -> ()

let yojson_of_azurerm_synapse_role_assignment =
  (function
   | {
       id = v_id;
       principal_id = v_principal_id;
       principal_type = v_principal_type;
       role_name = v_role_name;
       synapse_spark_pool_id = v_synapse_spark_pool_id;
       synapse_workspace_id = v_synapse_workspace_id;
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
         match v_synapse_workspace_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "synapse_workspace_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_synapse_spark_pool_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "synapse_spark_pool_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_name in
         ("role_name", arg) :: bnds
       in
       let bnds =
         match v_principal_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "principal_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal_id in
         ("principal_id", arg) :: bnds
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
    : azurerm_synapse_role_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_synapse_role_assignment

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_synapse_role_assignment ?id ?principal_type
    ?synapse_spark_pool_id ?synapse_workspace_id ?timeouts
    ~principal_id ~role_name () : azurerm_synapse_role_assignment =
  {
    id;
    principal_id;
    principal_type;
    role_name;
    synapse_spark_pool_id;
    synapse_workspace_id;
    timeouts;
  }

type t = {
  id : string prop;
  principal_id : string prop;
  principal_type : string prop;
  role_name : string prop;
  synapse_spark_pool_id : string prop;
  synapse_workspace_id : string prop;
}

let make ?id ?principal_type ?synapse_spark_pool_id
    ?synapse_workspace_id ?timeouts ~principal_id ~role_name __id =
  let __type = "azurerm_synapse_role_assignment" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       principal_id = Prop.computed __type __id "principal_id";
       principal_type = Prop.computed __type __id "principal_type";
       role_name = Prop.computed __type __id "role_name";
       synapse_spark_pool_id =
         Prop.computed __type __id "synapse_spark_pool_id";
       synapse_workspace_id =
         Prop.computed __type __id "synapse_workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_synapse_role_assignment
        (azurerm_synapse_role_assignment ?id ?principal_type
           ?synapse_spark_pool_id ?synapse_workspace_id ?timeouts
           ~principal_id ~role_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?principal_type ?synapse_spark_pool_id
    ?synapse_workspace_id ?timeouts ~principal_id ~role_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?principal_type ?synapse_spark_pool_id
      ?synapse_workspace_id ?timeouts ~principal_id ~role_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

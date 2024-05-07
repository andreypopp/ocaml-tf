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

type azurerm_site_recovery_hyperv_replication_policy_association = {
  hyperv_site_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  policy_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       azurerm_site_recovery_hyperv_replication_policy_association) ->
  ()

let yojson_of_azurerm_site_recovery_hyperv_replication_policy_association
    =
  (function
   | {
       hyperv_site_id = v_hyperv_site_id;
       id = v_id;
       name = v_name;
       policy_id = v_policy_id;
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
         let arg = yojson_of_prop yojson_of_string v_policy_id in
         ("policy_id", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string v_hyperv_site_id
         in
         ("hyperv_site_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_site_recovery_hyperv_replication_policy_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_azurerm_site_recovery_hyperv_replication_policy_association

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_site_recovery_hyperv_replication_policy_association ?id
    ?timeouts ~hyperv_site_id ~name ~policy_id () :
    azurerm_site_recovery_hyperv_replication_policy_association =
  { hyperv_site_id; id; name; policy_id; timeouts }

type t = {
  tf_name : string;
  hyperv_site_id : string prop;
  id : string prop;
  name : string prop;
  policy_id : string prop;
}

let make ?id ?timeouts ~hyperv_site_id ~name ~policy_id __id =
  let __type =
    "azurerm_site_recovery_hyperv_replication_policy_association"
  in
  let __attrs =
    ({
       tf_name = __id;
       hyperv_site_id = Prop.computed __type __id "hyperv_site_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy_id = Prop.computed __type __id "policy_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_site_recovery_hyperv_replication_policy_association
        (azurerm_site_recovery_hyperv_replication_policy_association
           ?id ?timeouts ~hyperv_site_id ~name ~policy_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~hyperv_site_id ~name
    ~policy_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~hyperv_site_id ~name ~policy_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

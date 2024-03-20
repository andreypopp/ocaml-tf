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

type azurerm_chaos_studio_capability = {
  capability_type : string prop;
  chaos_studio_target_id : string prop;
  id : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_chaos_studio_capability) -> ()

let yojson_of_azurerm_chaos_studio_capability =
  (function
   | {
       capability_type = v_capability_type;
       chaos_studio_target_id = v_chaos_studio_target_id;
       id = v_id;
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_chaos_studio_target_id
         in
         ("chaos_studio_target_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_capability_type
         in
         ("capability_type", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_chaos_studio_capability ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_chaos_studio_capability

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_chaos_studio_capability ?id ?timeouts ~capability_type
    ~chaos_studio_target_id () : azurerm_chaos_studio_capability =
  { capability_type; chaos_studio_target_id; id; timeouts }

type t = {
  capability_type : string prop;
  chaos_studio_target_id : string prop;
  id : string prop;
  urn : string prop;
}

let make ?id ?timeouts ~capability_type ~chaos_studio_target_id __id
    =
  let __type = "azurerm_chaos_studio_capability" in
  let __attrs =
    ({
       capability_type = Prop.computed __type __id "capability_type";
       chaos_studio_target_id =
         Prop.computed __type __id "chaos_studio_target_id";
       id = Prop.computed __type __id "id";
       urn = Prop.computed __type __id "urn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_chaos_studio_capability
        (azurerm_chaos_studio_capability ?id ?timeouts
           ~capability_type ~chaos_studio_target_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~capability_type
    ~chaos_studio_target_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~capability_type ~chaos_studio_target_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_eventhub_namespace_schema_group = {
  id : string prop option; [@option]
  name : string prop;
  namespace_id : string prop;
  schema_compatibility : string prop;
  schema_type : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_eventhub_namespace_schema_group) -> ()

let yojson_of_azurerm_eventhub_namespace_schema_group =
  (function
   | {
       id = v_id;
       name = v_name;
       namespace_id = v_namespace_id;
       schema_compatibility = v_schema_compatibility;
       schema_type = v_schema_type;
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
         let arg = yojson_of_prop yojson_of_string v_schema_type in
         ("schema_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_schema_compatibility
         in
         ("schema_compatibility", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace_id in
         ("namespace_id", arg) :: bnds
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
    : azurerm_eventhub_namespace_schema_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_eventhub_namespace_schema_group

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_eventhub_namespace_schema_group ?id ?timeouts ~name
    ~namespace_id ~schema_compatibility ~schema_type () :
    azurerm_eventhub_namespace_schema_group =
  {
    id;
    name;
    namespace_id;
    schema_compatibility;
    schema_type;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  name : string prop;
  namespace_id : string prop;
  schema_compatibility : string prop;
  schema_type : string prop;
}

let make ?id ?timeouts ~name ~namespace_id ~schema_compatibility
    ~schema_type __id =
  let __type = "azurerm_eventhub_namespace_schema_group" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace_id = Prop.computed __type __id "namespace_id";
       schema_compatibility =
         Prop.computed __type __id "schema_compatibility";
       schema_type = Prop.computed __type __id "schema_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_eventhub_namespace_schema_group
        (azurerm_eventhub_namespace_schema_group ?id ?timeouts ~name
           ~namespace_id ~schema_compatibility ~schema_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~namespace_id
    ~schema_compatibility ~schema_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~namespace_id ~schema_compatibility
      ~schema_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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

type azurerm_lighthouse_assignment = {
  id : string prop option; [@option]
  lighthouse_definition_id : string prop;
  name : string prop option; [@option]
  scope : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_lighthouse_assignment) -> ()

let yojson_of_azurerm_lighthouse_assignment =
  (function
   | {
       id = v_id;
       lighthouse_definition_id = v_lighthouse_definition_id;
       name = v_name;
       scope = v_scope;
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
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_lighthouse_definition_id
         in
         ("lighthouse_definition_id", arg) :: bnds
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
    : azurerm_lighthouse_assignment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_lighthouse_assignment

[@@@deriving.end]

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_lighthouse_assignment ?id ?name ?timeouts
    ~lighthouse_definition_id ~scope () :
    azurerm_lighthouse_assignment =
  { id; lighthouse_definition_id; name; scope; timeouts }

type t = {
  tf_name : string;
  id : string prop;
  lighthouse_definition_id : string prop;
  name : string prop;
  scope : string prop;
}

let make ?id ?name ?timeouts ~lighthouse_definition_id ~scope __id =
  let __type = "azurerm_lighthouse_assignment" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       lighthouse_definition_id =
         Prop.computed __type __id "lighthouse_definition_id";
       name = Prop.computed __type __id "name";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_lighthouse_assignment
        (azurerm_lighthouse_assignment ?id ?name ?timeouts
           ~lighthouse_definition_id ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?timeouts ~lighthouse_definition_id
    ~scope __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?timeouts ~lighthouse_definition_id ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

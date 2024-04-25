(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  key : string prop;
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : condition) -> ()

let yojson_of_condition =
  (function
   | { key = v_key; type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : condition -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_condition

[@@@deriving.end]

type aws_cloudwatch_event_permission = {
  action : string prop option; [@option]
  event_bus_name : string prop option; [@option]
  id : string prop option; [@option]
  principal : string prop;
  statement_id : string prop;
  condition : condition list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudwatch_event_permission) -> ()

let yojson_of_aws_cloudwatch_event_permission =
  (function
   | {
       action = v_action;
       event_bus_name = v_event_bus_name;
       id = v_id;
       principal = v_principal;
       statement_id = v_statement_id;
       condition = v_condition;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_condition v_condition in
         ("condition", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_statement_id in
         ("statement_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_principal in
         ("principal", arg) :: bnds
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
         match v_event_bus_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "event_bus_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "action", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_cloudwatch_event_permission ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudwatch_event_permission

[@@@deriving.end]

let condition ~key ~type_ ~value () : condition =
  { key; type_; value }

let aws_cloudwatch_event_permission ?action ?event_bus_name ?id
    ?(condition = []) ~principal ~statement_id () :
    aws_cloudwatch_event_permission =
  { action; event_bus_name; id; principal; statement_id; condition }

type t = {
  action : string prop;
  event_bus_name : string prop;
  id : string prop;
  principal : string prop;
  statement_id : string prop;
}

let make ?action ?event_bus_name ?id ?(condition = []) ~principal
    ~statement_id __id =
  let __type = "aws_cloudwatch_event_permission" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       event_bus_name = Prop.computed __type __id "event_bus_name";
       id = Prop.computed __type __id "id";
       principal = Prop.computed __type __id "principal";
       statement_id = Prop.computed __type __id "statement_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_event_permission
        (aws_cloudwatch_event_permission ?action ?event_bus_name ?id
           ~condition ~principal ~statement_id ());
    attrs = __attrs;
  }

let register ?tf_module ?action ?event_bus_name ?id ?(condition = [])
    ~principal ~statement_id __id =
  let (r : _ Tf_core.resource) =
    make ?action ?event_bus_name ?id ~condition ~principal
      ~statement_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

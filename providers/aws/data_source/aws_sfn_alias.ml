(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type routing_configuration = {
  state_machine_version_arn : string prop;
  weight : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : routing_configuration) -> ()

let yojson_of_routing_configuration =
  (function
   | {
       state_machine_version_arn = v_state_machine_version_arn;
       weight = v_weight;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight in
         ("weight", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_state_machine_version_arn
         in
         ("state_machine_version_arn", arg) :: bnds
       in
       `Assoc bnds
    : routing_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_routing_configuration

[@@@deriving.end]

type aws_sfn_alias = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  statemachine_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sfn_alias) -> ()

let yojson_of_aws_sfn_alias =
  (function
   | {
       description = v_description;
       id = v_id;
       name = v_name;
       statemachine_arn = v_statemachine_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_statemachine_arn
         in
         ("statemachine_arn", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sfn_alias -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sfn_alias

[@@@deriving.end]

let aws_sfn_alias ?description ?id ~name ~statemachine_arn () :
    aws_sfn_alias =
  { description; id; name; statemachine_arn }

type t = {
  tf_name : string;
  arn : string prop;
  creation_date : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  routing_configuration : routing_configuration list prop;
  statemachine_arn : string prop;
}

let make ?description ?id ~name ~statemachine_arn __id =
  let __type = "aws_sfn_alias" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       creation_date = Prop.computed __type __id "creation_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       routing_configuration =
         Prop.computed __type __id "routing_configuration";
       statemachine_arn =
         Prop.computed __type __id "statemachine_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sfn_alias
        (aws_sfn_alias ?description ?id ~name ~statemachine_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~name ~statemachine_arn __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~name ~statemachine_arn __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

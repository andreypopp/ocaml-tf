(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sfn_state_machine_versions = {
  id : string prop option; [@option]
  statemachine_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sfn_state_machine_versions) -> ()

let yojson_of_aws_sfn_state_machine_versions =
  (function
   | { id = v_id; statemachine_arn = v_statemachine_arn } ->
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_sfn_state_machine_versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sfn_state_machine_versions

[@@@deriving.end]

let aws_sfn_state_machine_versions ?id ~statemachine_arn () :
    aws_sfn_state_machine_versions =
  { id; statemachine_arn }

type t = {
  tf_name : string;
  id : string prop;
  statemachine_arn : string prop;
  statemachine_versions : string list prop;
}

let make ?id ~statemachine_arn __id =
  let __type = "aws_sfn_state_machine_versions" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       statemachine_arn =
         Prop.computed __type __id "statemachine_arn";
       statemachine_versions =
         Prop.computed __type __id "statemachine_versions";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sfn_state_machine_versions
        (aws_sfn_state_machine_versions ?id ~statemachine_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~statemachine_arn __id =
  let (r : _ Tf_core.resource) = make ?id ~statemachine_arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

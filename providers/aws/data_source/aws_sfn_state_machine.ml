(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sfn_state_machine = {
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sfn_state_machine) -> ()

let yojson_of_aws_sfn_state_machine =
  (function
   | { id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
    : aws_sfn_state_machine -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sfn_state_machine

[@@@deriving.end]

let aws_sfn_state_machine ?id ~name () : aws_sfn_state_machine =
  { id; name }

type t = {
  tf_name : string;
  arn : string prop;
  creation_date : string prop;
  definition : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  revision_id : string prop;
  role_arn : string prop;
  status : string prop;
}

let make ?id ~name __id =
  let __type = "aws_sfn_state_machine" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       creation_date = Prop.computed __type __id "creation_date";
       definition = Prop.computed __type __id "definition";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       revision_id = Prop.computed __type __id "revision_id";
       role_arn = Prop.computed __type __id "role_arn";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sfn_state_machine
        (aws_sfn_state_machine ?id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_backup_selection = {
  id : string prop option; [@option]
  plan_id : string prop;
  selection_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_backup_selection) -> ()

let yojson_of_aws_backup_selection =
  (function
   | {
       id = v_id;
       plan_id = v_plan_id;
       selection_id = v_selection_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_selection_id in
         ("selection_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_plan_id in
         ("plan_id", arg) :: bnds
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
    : aws_backup_selection -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_backup_selection

[@@@deriving.end]

let aws_backup_selection ?id ~plan_id ~selection_id () :
    aws_backup_selection =
  { id; plan_id; selection_id }

type t = {
  tf_name : string;
  iam_role_arn : string prop;
  id : string prop;
  name : string prop;
  plan_id : string prop;
  resources : string list prop;
  selection_id : string prop;
}

let make ?id ~plan_id ~selection_id __id =
  let __type = "aws_backup_selection" in
  let __attrs =
    ({
       tf_name = __id;
       iam_role_arn = Prop.computed __type __id "iam_role_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       plan_id = Prop.computed __type __id "plan_id";
       resources = Prop.computed __type __id "resources";
       selection_id = Prop.computed __type __id "selection_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_selection
        (aws_backup_selection ?id ~plan_id ~selection_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~plan_id ~selection_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~plan_id ~selection_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_backup_plan = {
  id : string prop option; [@option]
  plan_id : string prop;
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_backup_plan) -> ()

let yojson_of_aws_backup_plan =
  (function
   | { id = v_id; plan_id = v_plan_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
    : aws_backup_plan -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_backup_plan

[@@@deriving.end]

let aws_backup_plan ?id ?tags ~plan_id () : aws_backup_plan =
  { id; plan_id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  name : string prop;
  plan_id : string prop;
  tags : (string * string) list prop;
  version : string prop;
}

let make ?id ?tags ~plan_id __id =
  let __type = "aws_backup_plan" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       plan_id = Prop.computed __type __id "plan_id";
       tags = Prop.computed __type __id "tags";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_backup_plan
        (aws_backup_plan ?id ?tags ~plan_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~plan_id __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~plan_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

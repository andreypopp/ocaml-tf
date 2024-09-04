(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudformation_stack = {
  id : string prop option; [@option]
  name : string prop;
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_cloudformation_stack) -> ()

let yojson_of_aws_cloudformation_stack =
  (function
   | { id = v_id; name = v_name; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
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
    : aws_cloudformation_stack -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_cloudformation_stack

[@@@deriving.end]

let aws_cloudformation_stack ?id ?tags ~name () :
    aws_cloudformation_stack =
  { id; name; tags }

type t = {
  tf_name : string;
  capabilities : string list prop;
  description : string prop;
  disable_rollback : bool prop;
  iam_role_arn : string prop;
  id : string prop;
  name : string prop;
  notification_arns : string list prop;
  outputs : string Tf_core.assoc prop;
  parameters : string Tf_core.assoc prop;
  tags : string Tf_core.assoc prop;
  template_body : string prop;
  timeout_in_minutes : float prop;
}

let make ?id ?tags ~name __id =
  let __type = "aws_cloudformation_stack" in
  let __attrs =
    ({
       tf_name = __id;
       capabilities = Prop.computed __type __id "capabilities";
       description = Prop.computed __type __id "description";
       disable_rollback =
         Prop.computed __type __id "disable_rollback";
       iam_role_arn = Prop.computed __type __id "iam_role_arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       notification_arns =
         Prop.computed __type __id "notification_arns";
       outputs = Prop.computed __type __id "outputs";
       parameters = Prop.computed __type __id "parameters";
       tags = Prop.computed __type __id "tags";
       template_body = Prop.computed __type __id "template_body";
       timeout_in_minutes =
         Prop.computed __type __id "timeout_in_minutes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudformation_stack
        (aws_cloudformation_stack ?id ?tags ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

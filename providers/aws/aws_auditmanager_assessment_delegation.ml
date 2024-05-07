(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_auditmanager_assessment_delegation = {
  assessment_id : string prop;
  comment : string prop option; [@option]
  control_set_id : string prop;
  role_arn : string prop;
  role_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_auditmanager_assessment_delegation) -> ()

let yojson_of_aws_auditmanager_assessment_delegation =
  (function
   | {
       assessment_id = v_assessment_id;
       comment = v_comment;
       control_set_id = v_control_set_id;
       role_arn = v_role_arn;
       role_type = v_role_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_type in
         ("role_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_control_set_id
         in
         ("control_set_id", arg) :: bnds
       in
       let bnds =
         match v_comment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "comment", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_assessment_id in
         ("assessment_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_auditmanager_assessment_delegation ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_auditmanager_assessment_delegation

[@@@deriving.end]

let aws_auditmanager_assessment_delegation ?comment ~assessment_id
    ~control_set_id ~role_arn ~role_type () :
    aws_auditmanager_assessment_delegation =
  { assessment_id; comment; control_set_id; role_arn; role_type }

type t = {
  tf_name : string;
  assessment_id : string prop;
  comment : string prop;
  control_set_id : string prop;
  delegation_id : string prop;
  id : string prop;
  role_arn : string prop;
  role_type : string prop;
  status : string prop;
}

let make ?comment ~assessment_id ~control_set_id ~role_arn ~role_type
    __id =
  let __type = "aws_auditmanager_assessment_delegation" in
  let __attrs =
    ({
       tf_name = __id;
       assessment_id = Prop.computed __type __id "assessment_id";
       comment = Prop.computed __type __id "comment";
       control_set_id = Prop.computed __type __id "control_set_id";
       delegation_id = Prop.computed __type __id "delegation_id";
       id = Prop.computed __type __id "id";
       role_arn = Prop.computed __type __id "role_arn";
       role_type = Prop.computed __type __id "role_type";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_auditmanager_assessment_delegation
        (aws_auditmanager_assessment_delegation ?comment
           ~assessment_id ~control_set_id ~role_arn ~role_type ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ~assessment_id ~control_set_id
    ~role_arn ~role_type __id =
  let (r : _ Tf_core.resource) =
    make ?comment ~assessment_id ~control_set_id ~role_arn ~role_type
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

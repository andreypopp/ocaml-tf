(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_codecommit_approval_rule_template_association = {
  approval_rule_template_name : string prop;
  id : string prop option; [@option]
  repository_name : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : aws_codecommit_approval_rule_template_association) -> ()

let yojson_of_aws_codecommit_approval_rule_template_association =
  (function
   | {
       approval_rule_template_name = v_approval_rule_template_name;
       id = v_id;
       repository_name = v_repository_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_repository_name
         in
         ("repository_name", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_string
             v_approval_rule_template_name
         in
         ("approval_rule_template_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_codecommit_approval_rule_template_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codecommit_approval_rule_template_association

[@@@deriving.end]

let aws_codecommit_approval_rule_template_association ?id
    ~approval_rule_template_name ~repository_name () :
    aws_codecommit_approval_rule_template_association =
  { approval_rule_template_name; id; repository_name }

type t = {
  approval_rule_template_name : string prop;
  id : string prop;
  repository_name : string prop;
}

let make ?id ~approval_rule_template_name ~repository_name __id =
  let __type = "aws_codecommit_approval_rule_template_association" in
  let __attrs =
    ({
       approval_rule_template_name =
         Prop.computed __type __id "approval_rule_template_name";
       id = Prop.computed __type __id "id";
       repository_name = Prop.computed __type __id "repository_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codecommit_approval_rule_template_association
        (aws_codecommit_approval_rule_template_association ?id
           ~approval_rule_template_name ~repository_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~approval_rule_template_name
    ~repository_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~approval_rule_template_name ~repository_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

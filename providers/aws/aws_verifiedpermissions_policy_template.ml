(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_verifiedpermissions_policy_template = {
  description : string prop option; [@option]
  policy_store_id : string prop;
  statement : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_verifiedpermissions_policy_template) -> ()

let yojson_of_aws_verifiedpermissions_policy_template =
  (function
   | {
       description = v_description;
       policy_store_id = v_policy_store_id;
       statement = v_statement;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_statement in
         ("statement", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_policy_store_id
         in
         ("policy_store_id", arg) :: bnds
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
    : aws_verifiedpermissions_policy_template ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_verifiedpermissions_policy_template

[@@@deriving.end]

let aws_verifiedpermissions_policy_template ?description
    ~policy_store_id ~statement () :
    aws_verifiedpermissions_policy_template =
  { description; policy_store_id; statement }

type t = {
  created_date : string prop;
  description : string prop;
  id : string prop;
  policy_store_id : string prop;
  policy_template_id : string prop;
  statement : string prop;
}

let make ?description ~policy_store_id ~statement __id =
  let __type = "aws_verifiedpermissions_policy_template" in
  let __attrs =
    ({
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       policy_store_id = Prop.computed __type __id "policy_store_id";
       policy_template_id =
         Prop.computed __type __id "policy_template_id";
       statement = Prop.computed __type __id "statement";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_verifiedpermissions_policy_template
        (aws_verifiedpermissions_policy_template ?description
           ~policy_store_id ~statement ());
    attrs = __attrs;
  }

let register ?tf_module ?description ~policy_store_id ~statement __id
    =
  let (r : _ Tf_core.resource) =
    make ?description ~policy_store_id ~statement __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

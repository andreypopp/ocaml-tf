(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_opensearchserverless_security_policy = {
  id : string prop option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opensearchserverless_security_policy) -> ()

let yojson_of_aws_opensearchserverless_security_policy =
  (function
   | { id = v_id; name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
    : aws_opensearchserverless_security_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opensearchserverless_security_policy

[@@@deriving.end]

let aws_opensearchserverless_security_policy ?id ~name ~type_ () :
    aws_opensearchserverless_security_policy =
  { id; name; type_ }

type t = {
  created_date : string prop;
  description : string prop;
  id : string prop;
  last_modified_date : string prop;
  name : string prop;
  policy : string prop;
  policy_version : string prop;
  type_ : string prop;
}

let make ?id ~name ~type_ __id =
  let __type = "aws_opensearchserverless_security_policy" in
  let __attrs =
    ({
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_modified_date =
         Prop.computed __type __id "last_modified_date";
       name = Prop.computed __type __id "name";
       policy = Prop.computed __type __id "policy";
       policy_version = Prop.computed __type __id "policy_version";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opensearchserverless_security_policy
        (aws_opensearchserverless_security_policy ?id ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~type_ __id =
  let (r : _ Tf_core.resource) = make ?id ~name ~type_ __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

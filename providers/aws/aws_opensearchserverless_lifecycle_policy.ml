(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_opensearchserverless_lifecycle_policy = {
  description : string prop option; [@option]
  name : string prop;
  policy : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_opensearchserverless_lifecycle_policy) -> ()

let yojson_of_aws_opensearchserverless_lifecycle_policy =
  (function
   | {
       description = v_description;
       name = v_name;
       policy = v_policy;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_opensearchserverless_lifecycle_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_opensearchserverless_lifecycle_policy

[@@@deriving.end]

let aws_opensearchserverless_lifecycle_policy ?description ~name
    ~policy ~type_ () : aws_opensearchserverless_lifecycle_policy =
  { description; name; policy; type_ }

type t = {
  description : string prop;
  id : string prop;
  name : string prop;
  policy : string prop;
  policy_version : string prop;
  type_ : string prop;
}

let make ?description ~name ~policy ~type_ __id =
  let __type = "aws_opensearchserverless_lifecycle_policy" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
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
      yojson_of_aws_opensearchserverless_lifecycle_policy
        (aws_opensearchserverless_lifecycle_policy ?description ~name
           ~policy ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ~name ~policy ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ~name ~policy ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

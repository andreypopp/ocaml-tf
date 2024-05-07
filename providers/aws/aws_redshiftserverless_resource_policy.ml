(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_redshiftserverless_resource_policy = {
  id : string prop option; [@option]
  policy : string prop;
  resource_arn : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_redshiftserverless_resource_policy) -> ()

let yojson_of_aws_redshiftserverless_resource_policy =
  (function
   | { id = v_id; policy = v_policy; resource_arn = v_resource_arn }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource_arn in
         ("resource_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
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
    : aws_redshiftserverless_resource_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_redshiftserverless_resource_policy

[@@@deriving.end]

let aws_redshiftserverless_resource_policy ?id ~policy ~resource_arn
    () : aws_redshiftserverless_resource_policy =
  { id; policy; resource_arn }

type t = {
  tf_name : string;
  id : string prop;
  policy : string prop;
  resource_arn : string prop;
}

let make ?id ~policy ~resource_arn __id =
  let __type = "aws_redshiftserverless_resource_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       resource_arn = Prop.computed __type __id "resource_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_redshiftserverless_resource_policy
        (aws_redshiftserverless_resource_policy ?id ~policy
           ~resource_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy ~resource_arn __id =
  let (r : _ Tf_core.resource) =
    make ?id ~policy ~resource_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

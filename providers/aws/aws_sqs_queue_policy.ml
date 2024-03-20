(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sqs_queue_policy = {
  id : string prop option; [@option]
  policy : string prop;
  queue_url : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sqs_queue_policy) -> ()

let yojson_of_aws_sqs_queue_policy =
  (function
   | { id = v_id; policy = v_policy; queue_url = v_queue_url } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue_url in
         ("queue_url", arg) :: bnds
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
    : aws_sqs_queue_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sqs_queue_policy

[@@@deriving.end]

let aws_sqs_queue_policy ?id ~policy ~queue_url () :
    aws_sqs_queue_policy =
  { id; policy; queue_url }

type t = {
  id : string prop;
  policy : string prop;
  queue_url : string prop;
}

let make ?id ~policy ~queue_url __id =
  let __type = "aws_sqs_queue_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       queue_url = Prop.computed __type __id "queue_url";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sqs_queue_policy
        (aws_sqs_queue_policy ?id ~policy ~queue_url ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~policy ~queue_url __id =
  let (r : _ Tf_core.resource) = make ?id ~policy ~queue_url __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

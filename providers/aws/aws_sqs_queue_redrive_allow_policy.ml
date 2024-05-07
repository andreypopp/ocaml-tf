(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sqs_queue_redrive_allow_policy = {
  id : string prop option; [@option]
  queue_url : string prop;
  redrive_allow_policy : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sqs_queue_redrive_allow_policy) -> ()

let yojson_of_aws_sqs_queue_redrive_allow_policy =
  (function
   | {
       id = v_id;
       queue_url = v_queue_url;
       redrive_allow_policy = v_redrive_allow_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_redrive_allow_policy
         in
         ("redrive_allow_policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue_url in
         ("queue_url", arg) :: bnds
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
    : aws_sqs_queue_redrive_allow_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sqs_queue_redrive_allow_policy

[@@@deriving.end]

let aws_sqs_queue_redrive_allow_policy ?id ~queue_url
    ~redrive_allow_policy () : aws_sqs_queue_redrive_allow_policy =
  { id; queue_url; redrive_allow_policy }

type t = {
  tf_name : string;
  id : string prop;
  queue_url : string prop;
  redrive_allow_policy : string prop;
}

let make ?id ~queue_url ~redrive_allow_policy __id =
  let __type = "aws_sqs_queue_redrive_allow_policy" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       queue_url = Prop.computed __type __id "queue_url";
       redrive_allow_policy =
         Prop.computed __type __id "redrive_allow_policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sqs_queue_redrive_allow_policy
        (aws_sqs_queue_redrive_allow_policy ?id ~queue_url
           ~redrive_allow_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~queue_url ~redrive_allow_policy __id =
  let (r : _ Tf_core.resource) =
    make ?id ~queue_url ~redrive_allow_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_sqs_queues = {
  id : string prop option; [@option]
  queue_name_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_sqs_queues) -> ()

let yojson_of_aws_sqs_queues =
  (function
   | { id = v_id; queue_name_prefix = v_queue_name_prefix } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_queue_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "queue_name_prefix", arg in
             bnd :: bnds
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
    : aws_sqs_queues -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_sqs_queues

[@@@deriving.end]

let aws_sqs_queues ?id ?queue_name_prefix () : aws_sqs_queues =
  { id; queue_name_prefix }

type t = {
  tf_name : string;
  id : string prop;
  queue_name_prefix : string prop;
  queue_urls : string list prop;
}

let make ?id ?queue_name_prefix __id =
  let __type = "aws_sqs_queues" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       queue_name_prefix =
         Prop.computed __type __id "queue_name_prefix";
       queue_urls = Prop.computed __type __id "queue_urls";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sqs_queues
        (aws_sqs_queues ?id ?queue_name_prefix ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?queue_name_prefix __id =
  let (r : _ Tf_core.resource) = make ?id ?queue_name_prefix __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

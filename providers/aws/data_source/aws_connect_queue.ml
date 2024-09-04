(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type outbound_caller_config = {
  outbound_caller_id_name : string prop;
  outbound_caller_id_number_id : string prop;
  outbound_flow_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : outbound_caller_config) -> ()

let yojson_of_outbound_caller_config =
  (function
   | {
       outbound_caller_id_name = v_outbound_caller_id_name;
       outbound_caller_id_number_id = v_outbound_caller_id_number_id;
       outbound_flow_id = v_outbound_flow_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_outbound_flow_id
         in
         ("outbound_flow_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_outbound_caller_id_number_id
         in
         ("outbound_caller_id_number_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_outbound_caller_id_name
         in
         ("outbound_caller_id_name", arg) :: bnds
       in
       `Assoc bnds
    : outbound_caller_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outbound_caller_config

[@@@deriving.end]

type aws_connect_queue = {
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop option; [@option]
  queue_id : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_queue) -> ()

let yojson_of_aws_connect_queue =
  (function
   | {
       id = v_id;
       instance_id = v_instance_id;
       name = v_name;
       queue_id = v_queue_id;
       tags = v_tags;
     } ->
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
         match v_queue_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "queue_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
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
    : aws_connect_queue -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_queue

[@@@deriving.end]

let aws_connect_queue ?id ?name ?queue_id ?tags ~instance_id () :
    aws_connect_queue =
  { id; instance_id; name; queue_id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  hours_of_operation_id : string prop;
  id : string prop;
  instance_id : string prop;
  max_contacts : float prop;
  name : string prop;
  outbound_caller_config : outbound_caller_config list prop;
  queue_id : string prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?name ?queue_id ?tags ~instance_id __id =
  let __type = "aws_connect_queue" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       hours_of_operation_id =
         Prop.computed __type __id "hours_of_operation_id";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       max_contacts = Prop.computed __type __id "max_contacts";
       name = Prop.computed __type __id "name";
       outbound_caller_config =
         Prop.computed __type __id "outbound_caller_config";
       queue_id = Prop.computed __type __id "queue_id";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_queue
        (aws_connect_queue ?id ?name ?queue_id ?tags ~instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?queue_id ?tags ~instance_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?queue_id ?tags ~instance_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

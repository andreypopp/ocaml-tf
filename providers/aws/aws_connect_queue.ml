(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type outbound_caller_config = {
  outbound_caller_id_name : string prop option; [@option]
  outbound_caller_id_number_id : string prop option; [@option]
  outbound_flow_id : string prop option; [@option]
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
         match v_outbound_flow_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outbound_flow_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outbound_caller_id_number_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outbound_caller_id_number_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_outbound_caller_id_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "outbound_caller_id_name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : outbound_caller_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_outbound_caller_config

[@@@deriving.end]

type aws_connect_queue = {
  description : string prop option; [@option]
  hours_of_operation_id : string prop;
  id : string prop option; [@option]
  instance_id : string prop;
  max_contacts : float prop option; [@option]
  name : string prop;
  quick_connect_ids : string prop list option; [@option]
  status : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  outbound_caller_config : outbound_caller_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_queue) -> ()

let yojson_of_aws_connect_queue =
  (function
   | {
       description = v_description;
       hours_of_operation_id = v_hours_of_operation_id;
       id = v_id;
       instance_id = v_instance_id;
       max_contacts = v_max_contacts;
       name = v_name;
       quick_connect_ids = v_quick_connect_ids;
       status = v_status;
       tags = v_tags;
       tags_all = v_tags_all;
       outbound_caller_config = v_outbound_caller_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_outbound_caller_config then bnds
         else
           let arg =
             (yojson_of_list yojson_of_outbound_caller_config)
               v_outbound_caller_config
           in
           let bnd = "outbound_caller_config", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         match v_quick_connect_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "quick_connect_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_contacts with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_contacts", arg in
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_hours_of_operation_id
         in
         ("hours_of_operation_id", arg) :: bnds
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
    : aws_connect_queue -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_queue

[@@@deriving.end]

let outbound_caller_config ?outbound_caller_id_name
    ?outbound_caller_id_number_id ?outbound_flow_id () :
    outbound_caller_config =
  {
    outbound_caller_id_name;
    outbound_caller_id_number_id;
    outbound_flow_id;
  }

let aws_connect_queue ?description ?id ?max_contacts
    ?quick_connect_ids ?status ?tags ?tags_all
    ?(outbound_caller_config = []) ~hours_of_operation_id
    ~instance_id ~name () : aws_connect_queue =
  {
    description;
    hours_of_operation_id;
    id;
    instance_id;
    max_contacts;
    name;
    quick_connect_ids;
    status;
    tags;
    tags_all;
    outbound_caller_config;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  hours_of_operation_id : string prop;
  id : string prop;
  instance_id : string prop;
  max_contacts : float prop;
  name : string prop;
  queue_id : string prop;
  quick_connect_ids : string list prop;
  status : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?description ?id ?max_contacts ?quick_connect_ids ?status
    ?tags ?tags_all ?(outbound_caller_config = [])
    ~hours_of_operation_id ~instance_id ~name __id =
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
       queue_id = Prop.computed __type __id "queue_id";
       quick_connect_ids =
         Prop.computed __type __id "quick_connect_ids";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_queue
        (aws_connect_queue ?description ?id ?max_contacts
           ?quick_connect_ids ?status ?tags ?tags_all
           ~outbound_caller_config ~hours_of_operation_id
           ~instance_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?max_contacts
    ?quick_connect_ids ?status ?tags ?tags_all
    ?(outbound_caller_config = []) ~hours_of_operation_id
    ~instance_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?max_contacts ?quick_connect_ids ?status
      ?tags ?tags_all ~outbound_caller_config ~hours_of_operation_id
      ~instance_id ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

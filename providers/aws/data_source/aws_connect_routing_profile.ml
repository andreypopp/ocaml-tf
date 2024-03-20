(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type media_concurrencies = {
  channel : string prop;
  concurrency : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : media_concurrencies) -> ()

let yojson_of_media_concurrencies =
  (function
   | { channel = v_channel; concurrency = v_concurrency } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_concurrency in
         ("concurrency", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_channel in
         ("channel", arg) :: bnds
       in
       `Assoc bnds
    : media_concurrencies -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_media_concurrencies

[@@@deriving.end]

type queue_configs = {
  channel : string prop;
  delay : float prop;
  priority : float prop;
  queue_arn : string prop;
  queue_id : string prop;
  queue_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : queue_configs) -> ()

let yojson_of_queue_configs =
  (function
   | {
       channel = v_channel;
       delay = v_delay;
       priority = v_priority;
       queue_arn = v_queue_arn;
       queue_id = v_queue_id;
       queue_name = v_queue_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue_name in
         ("queue_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue_id in
         ("queue_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue_arn in
         ("queue_arn", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_priority in
         ("priority", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_delay in
         ("delay", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_channel in
         ("channel", arg) :: bnds
       in
       `Assoc bnds
    : queue_configs -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_queue_configs

[@@@deriving.end]

type aws_connect_routing_profile = {
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop option; [@option]
  routing_profile_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_routing_profile) -> ()

let yojson_of_aws_connect_routing_profile =
  (function
   | {
       id = v_id;
       instance_id = v_instance_id;
       name = v_name;
       routing_profile_id = v_routing_profile_id;
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
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_routing_profile_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "routing_profile_id", arg in
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
    : aws_connect_routing_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_routing_profile

[@@@deriving.end]

let aws_connect_routing_profile ?id ?name ?routing_profile_id ?tags
    ~instance_id () : aws_connect_routing_profile =
  { id; instance_id; name; routing_profile_id; tags }

type t = {
  arn : string prop;
  default_outbound_queue_id : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  media_concurrencies : media_concurrencies list prop;
  name : string prop;
  queue_configs : queue_configs list prop;
  routing_profile_id : string prop;
  tags : (string * string) list prop;
}

let make ?id ?name ?routing_profile_id ?tags ~instance_id __id =
  let __type = "aws_connect_routing_profile" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       default_outbound_queue_id =
         Prop.computed __type __id "default_outbound_queue_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       media_concurrencies =
         Prop.computed __type __id "media_concurrencies";
       name = Prop.computed __type __id "name";
       queue_configs = Prop.computed __type __id "queue_configs";
       routing_profile_id =
         Prop.computed __type __id "routing_profile_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_routing_profile
        (aws_connect_routing_profile ?id ?name ?routing_profile_id
           ?tags ~instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?routing_profile_id ?tags
    ~instance_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?routing_profile_id ?tags ~instance_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

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
  queue_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : queue_configs) -> ()

let yojson_of_queue_configs =
  (function
   | {
       channel = v_channel;
       delay = v_delay;
       priority = v_priority;
       queue_id = v_queue_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue_id in
         ("queue_id", arg) :: bnds
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
  default_outbound_queue_id : string prop;
  description : string prop;
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  media_concurrencies : media_concurrencies list;
  queue_configs : queue_configs list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_routing_profile) -> ()

let yojson_of_aws_connect_routing_profile =
  (function
   | {
       default_outbound_queue_id = v_default_outbound_queue_id;
       description = v_description;
       id = v_id;
       instance_id = v_instance_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       media_concurrencies = v_media_concurrencies;
       queue_configs = v_queue_configs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_queue_configs v_queue_configs
         in
         ("queue_configs", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_media_concurrencies
             v_media_concurrencies
         in
         ("media_concurrencies", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_default_outbound_queue_id
         in
         ("default_outbound_queue_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_connect_routing_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_routing_profile

[@@@deriving.end]

let media_concurrencies ~channel ~concurrency () :
    media_concurrencies =
  { channel; concurrency }

let queue_configs ~channel ~delay ~priority ~queue_id () :
    queue_configs =
  { channel; delay; priority; queue_id }

let aws_connect_routing_profile ?id ?tags ?tags_all
    ~default_outbound_queue_id ~description ~instance_id ~name
    ~media_concurrencies ~queue_configs () :
    aws_connect_routing_profile =
  {
    default_outbound_queue_id;
    description;
    id;
    instance_id;
    name;
    tags;
    tags_all;
    media_concurrencies;
    queue_configs;
  }

type t = {
  tf_name : string;
  arn : string prop;
  default_outbound_queue_id : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  routing_profile_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~default_outbound_queue_id ~description
    ~instance_id ~name ~media_concurrencies ~queue_configs __id =
  let __type = "aws_connect_routing_profile" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       default_outbound_queue_id =
         Prop.computed __type __id "default_outbound_queue_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       name = Prop.computed __type __id "name";
       routing_profile_id =
         Prop.computed __type __id "routing_profile_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_routing_profile
        (aws_connect_routing_profile ?id ?tags ?tags_all
           ~default_outbound_queue_id ~description ~instance_id ~name
           ~media_concurrencies ~queue_configs ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ~default_outbound_queue_id ~description ~instance_id ~name
    ~media_concurrencies ~queue_configs __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~default_outbound_queue_id ~description
      ~instance_id ~name ~media_concurrencies ~queue_configs __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

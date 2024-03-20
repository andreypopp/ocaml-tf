(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type quick_connect_config__phone_config = {
  phone_number : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quick_connect_config__phone_config) -> ()

let yojson_of_quick_connect_config__phone_config =
  (function
   | { phone_number = v_phone_number } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_phone_number in
         ("phone_number", arg) :: bnds
       in
       `Assoc bnds
    : quick_connect_config__phone_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quick_connect_config__phone_config

[@@@deriving.end]

type quick_connect_config__queue_config = {
  contact_flow_id : string prop;
  queue_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quick_connect_config__queue_config) -> ()

let yojson_of_quick_connect_config__queue_config =
  (function
   | { contact_flow_id = v_contact_flow_id; queue_id = v_queue_id }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue_id in
         ("queue_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_contact_flow_id
         in
         ("contact_flow_id", arg) :: bnds
       in
       `Assoc bnds
    : quick_connect_config__queue_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quick_connect_config__queue_config

[@@@deriving.end]

type quick_connect_config__user_config = {
  contact_flow_id : string prop;
  user_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quick_connect_config__user_config) -> ()

let yojson_of_quick_connect_config__user_config =
  (function
   | { contact_flow_id = v_contact_flow_id; user_id = v_user_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_id in
         ("user_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_contact_flow_id
         in
         ("contact_flow_id", arg) :: bnds
       in
       `Assoc bnds
    : quick_connect_config__user_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quick_connect_config__user_config

[@@@deriving.end]

type quick_connect_config = {
  quick_connect_type : string prop;
  phone_config : quick_connect_config__phone_config list;
  queue_config : quick_connect_config__queue_config list;
  user_config : quick_connect_config__user_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quick_connect_config) -> ()

let yojson_of_quick_connect_config =
  (function
   | {
       quick_connect_type = v_quick_connect_type;
       phone_config = v_phone_config;
       queue_config = v_queue_config;
       user_config = v_user_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_quick_connect_config__user_config
             v_user_config
         in
         ("user_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_quick_connect_config__queue_config
             v_queue_config
         in
         ("queue_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_quick_connect_config__phone_config
             v_phone_config
         in
         ("phone_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_quick_connect_type
         in
         ("quick_connect_type", arg) :: bnds
       in
       `Assoc bnds
    : quick_connect_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quick_connect_config

[@@@deriving.end]

type aws_connect_quick_connect = {
  description : string prop option; [@option]
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  quick_connect_config : quick_connect_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_quick_connect) -> ()

let yojson_of_aws_connect_quick_connect =
  (function
   | {
       description = v_description;
       id = v_id;
       instance_id = v_instance_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       quick_connect_config = v_quick_connect_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_quick_connect_config
             v_quick_connect_config
         in
         ("quick_connect_config", arg) :: bnds
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_connect_quick_connect -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_quick_connect

[@@@deriving.end]

let quick_connect_config__phone_config ~phone_number () :
    quick_connect_config__phone_config =
  { phone_number }

let quick_connect_config__queue_config ~contact_flow_id ~queue_id ()
    : quick_connect_config__queue_config =
  { contact_flow_id; queue_id }

let quick_connect_config__user_config ~contact_flow_id ~user_id () :
    quick_connect_config__user_config =
  { contact_flow_id; user_id }

let quick_connect_config ~quick_connect_type ~phone_config
    ~queue_config ~user_config () : quick_connect_config =
  { quick_connect_type; phone_config; queue_config; user_config }

let aws_connect_quick_connect ?description ?id ?tags ?tags_all
    ~instance_id ~name ~quick_connect_config () :
    aws_connect_quick_connect =
  {
    description;
    id;
    instance_id;
    name;
    tags;
    tags_all;
    quick_connect_config;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  quick_connect_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~instance_id ~name
    ~quick_connect_config __id =
  let __type = "aws_connect_quick_connect" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       name = Prop.computed __type __id "name";
       quick_connect_id =
         Prop.computed __type __id "quick_connect_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_quick_connect
        (aws_connect_quick_connect ?description ?id ?tags ?tags_all
           ~instance_id ~name ~quick_connect_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~instance_id
    ~name ~quick_connect_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~instance_id ~name
      ~quick_connect_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

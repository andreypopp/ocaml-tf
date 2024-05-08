(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type quick_connect_config = {
  phone_config : quick_connect_config__phone_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  queue_config : quick_connect_config__queue_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  quick_connect_type : string prop;
  user_config : quick_connect_config__user_config list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : quick_connect_config) -> ()

let yojson_of_quick_connect_config =
  (function
   | {
       phone_config = v_phone_config;
       queue_config = v_queue_config;
       quick_connect_type = v_quick_connect_type;
       user_config = v_user_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_user_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_quick_connect_config__user_config)
               v_user_config
           in
           let bnd = "user_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_quick_connect_type
         in
         ("quick_connect_type", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_queue_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_quick_connect_config__queue_config)
               v_queue_config
           in
           let bnd = "queue_config", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_phone_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_quick_connect_config__phone_config)
               v_phone_config
           in
           let bnd = "phone_config", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : quick_connect_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_quick_connect_config

[@@@deriving.end]

type aws_connect_quick_connect = {
  id : string prop option; [@option]
  instance_id : string prop;
  name : string prop option; [@option]
  quick_connect_id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_quick_connect) -> ()

let yojson_of_aws_connect_quick_connect =
  (function
   | {
       id = v_id;
       instance_id = v_instance_id;
       name = v_name;
       quick_connect_id = v_quick_connect_id;
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
         match v_quick_connect_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "quick_connect_id", arg in
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
    : aws_connect_quick_connect -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_quick_connect

[@@@deriving.end]

let aws_connect_quick_connect ?id ?name ?quick_connect_id ?tags
    ~instance_id () : aws_connect_quick_connect =
  { id; instance_id; name; quick_connect_id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  id : string prop;
  instance_id : string prop;
  name : string prop;
  quick_connect_config : quick_connect_config list prop;
  quick_connect_id : string prop;
  tags : (string * string) list prop;
}

let make ?id ?name ?quick_connect_id ?tags ~instance_id __id =
  let __type = "aws_connect_quick_connect" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       name = Prop.computed __type __id "name";
       quick_connect_config =
         Prop.computed __type __id "quick_connect_config";
       quick_connect_id =
         Prop.computed __type __id "quick_connect_id";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_quick_connect
        (aws_connect_quick_connect ?id ?name ?quick_connect_id ?tags
           ~instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?quick_connect_id ?tags
    ~instance_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?quick_connect_id ?tags ~instance_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type aws_iot_policy = {
  id : string prop option; [@option]
  name : string prop;
  policy : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_iot_policy) -> ()

let yojson_of_aws_iot_policy =
  (function
   | {
       id = v_id;
       name = v_name;
       policy = v_policy;
       tags = v_tags;
       tags_all = v_tags_all;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_policy in
         ("policy", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
    : aws_iot_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_iot_policy

[@@@deriving.end]

let timeouts ?delete ?update () : timeouts = { delete; update }

let aws_iot_policy ?id ?tags ?tags_all ?timeouts ~name ~policy () :
    aws_iot_policy =
  { id; name; policy; tags; tags_all; timeouts }

type t = {
  arn : string prop;
  default_version_id : string prop;
  id : string prop;
  name : string prop;
  policy : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~name ~policy __id =
  let __type = "aws_iot_policy" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       default_version_id =
         Prop.computed __type __id "default_version_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       policy = Prop.computed __type __id "policy";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_policy
        (aws_iot_policy ?id ?tags ?tags_all ?timeouts ~name ~policy
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts ~name ~policy
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~name ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

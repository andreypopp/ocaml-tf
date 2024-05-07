(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
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
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type status = { message : string prop; status : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : status) -> ()

let yojson_of_status =
  (function
   | { message = v_message; status = v_status } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_status in
         ("status", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_message in
         ("message", arg) :: bnds
       in
       `Assoc bnds
    : status -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_status

[@@@deriving.end]

type aws_connect_phone_number = {
  country_code : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  prefix : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  target_arn : string prop;
  type_ : string prop; [@key "type"]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_phone_number) -> ()

let yojson_of_aws_connect_phone_number =
  (function
   | {
       country_code = v_country_code;
       description = v_description;
       id = v_id;
       prefix = v_prefix;
       tags = v_tags;
       tags_all = v_tags_all;
       target_arn = v_target_arn;
       type_ = v_type_;
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
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target_arn in
         ("target_arn", arg) :: bnds
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
         match v_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "prefix", arg in
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
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_country_code in
         ("country_code", arg) :: bnds
       in
       `Assoc bnds
    : aws_connect_phone_number -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_phone_number

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_connect_phone_number ?description ?id ?prefix ?tags ?tags_all
    ?timeouts ~country_code ~target_arn ~type_ () :
    aws_connect_phone_number =
  {
    country_code;
    description;
    id;
    prefix;
    tags;
    tags_all;
    target_arn;
    type_;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  country_code : string prop;
  description : string prop;
  id : string prop;
  phone_number : string prop;
  prefix : string prop;
  status : status list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  target_arn : string prop;
  type_ : string prop;
}

let make ?description ?id ?prefix ?tags ?tags_all ?timeouts
    ~country_code ~target_arn ~type_ __id =
  let __type = "aws_connect_phone_number" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       country_code = Prop.computed __type __id "country_code";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       phone_number = Prop.computed __type __id "phone_number";
       prefix = Prop.computed __type __id "prefix";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       target_arn = Prop.computed __type __id "target_arn";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_phone_number
        (aws_connect_phone_number ?description ?id ?prefix ?tags
           ?tags_all ?timeouts ~country_code ~target_arn ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?prefix ?tags ?tags_all
    ?timeouts ~country_code ~target_arn ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?prefix ?tags ?tags_all ?timeouts
      ~country_code ~target_arn ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

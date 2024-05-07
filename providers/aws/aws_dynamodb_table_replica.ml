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

type aws_dynamodb_table_replica = {
  global_table_arn : string prop;
  id : string prop option; [@option]
  kms_key_arn : string prop option; [@option]
  point_in_time_recovery : bool prop option; [@option]
  table_class_override : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_dynamodb_table_replica) -> ()

let yojson_of_aws_dynamodb_table_replica =
  (function
   | {
       global_table_arn = v_global_table_arn;
       id = v_id;
       kms_key_arn = v_kms_key_arn;
       point_in_time_recovery = v_point_in_time_recovery;
       table_class_override = v_table_class_override;
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
         match v_table_class_override with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "table_class_override", arg in
             bnd :: bnds
       in
       let bnds =
         match v_point_in_time_recovery with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "point_in_time_recovery", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_global_table_arn
         in
         ("global_table_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_dynamodb_table_replica -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_dynamodb_table_replica

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_dynamodb_table_replica ?id ?kms_key_arn
    ?point_in_time_recovery ?table_class_override ?tags ?tags_all
    ?timeouts ~global_table_arn () : aws_dynamodb_table_replica =
  {
    global_table_arn;
    id;
    kms_key_arn;
    point_in_time_recovery;
    table_class_override;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  global_table_arn : string prop;
  id : string prop;
  kms_key_arn : string prop;
  point_in_time_recovery : bool prop;
  table_class_override : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?kms_key_arn ?point_in_time_recovery
    ?table_class_override ?tags ?tags_all ?timeouts ~global_table_arn
    __id =
  let __type = "aws_dynamodb_table_replica" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       global_table_arn =
         Prop.computed __type __id "global_table_arn";
       id = Prop.computed __type __id "id";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       point_in_time_recovery =
         Prop.computed __type __id "point_in_time_recovery";
       table_class_override =
         Prop.computed __type __id "table_class_override";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_dynamodb_table_replica
        (aws_dynamodb_table_replica ?id ?kms_key_arn
           ?point_in_time_recovery ?table_class_override ?tags
           ?tags_all ?timeouts ~global_table_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?kms_key_arn ?point_in_time_recovery
    ?table_class_override ?tags ?tags_all ?timeouts ~global_table_arn
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?kms_key_arn ?point_in_time_recovery
      ?table_class_override ?tags ?tags_all ?timeouts
      ~global_table_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

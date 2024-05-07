(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_storagegateway_tape_pool = {
  id : string prop option; [@option]
  pool_name : string prop;
  retention_lock_time_in_days : float prop option; [@option]
  retention_lock_type : string prop option; [@option]
  storage_class : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_storagegateway_tape_pool) -> ()

let yojson_of_aws_storagegateway_tape_pool =
  (function
   | {
       id = v_id;
       pool_name = v_pool_name;
       retention_lock_time_in_days = v_retention_lock_time_in_days;
       retention_lock_type = v_retention_lock_type;
       storage_class = v_storage_class;
       tags = v_tags;
       tags_all = v_tags_all;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_storage_class in
         ("storage_class", arg) :: bnds
       in
       let bnds =
         match v_retention_lock_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "retention_lock_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_retention_lock_time_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "retention_lock_time_in_days", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_pool_name in
         ("pool_name", arg) :: bnds
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
    : aws_storagegateway_tape_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_storagegateway_tape_pool

[@@@deriving.end]

let aws_storagegateway_tape_pool ?id ?retention_lock_time_in_days
    ?retention_lock_type ?tags ?tags_all ~pool_name ~storage_class ()
    : aws_storagegateway_tape_pool =
  {
    id;
    pool_name;
    retention_lock_time_in_days;
    retention_lock_type;
    storage_class;
    tags;
    tags_all;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  pool_name : string prop;
  retention_lock_time_in_days : float prop;
  retention_lock_type : string prop;
  storage_class : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?retention_lock_time_in_days ?retention_lock_type ?tags
    ?tags_all ~pool_name ~storage_class __id =
  let __type = "aws_storagegateway_tape_pool" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       pool_name = Prop.computed __type __id "pool_name";
       retention_lock_time_in_days =
         Prop.computed __type __id "retention_lock_time_in_days";
       retention_lock_type =
         Prop.computed __type __id "retention_lock_type";
       storage_class = Prop.computed __type __id "storage_class";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_storagegateway_tape_pool
        (aws_storagegateway_tape_pool ?id
           ?retention_lock_time_in_days ?retention_lock_type ?tags
           ?tags_all ~pool_name ~storage_class ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?retention_lock_time_in_days
    ?retention_lock_type ?tags ?tags_all ~pool_name ~storage_class
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?retention_lock_time_in_days ?retention_lock_type ?tags
      ?tags_all ~pool_name ~storage_class __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

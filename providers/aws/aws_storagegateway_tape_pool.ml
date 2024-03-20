(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_storagegateway_tape_pool = {
  id : string prop option; [@option]  (** id *)
  pool_name : string prop;  (** pool_name *)
  retention_lock_time_in_days : float prop option; [@option]
      (** retention_lock_time_in_days *)
  retention_lock_type : string prop option; [@option]
      (** retention_lock_type *)
  storage_class : string prop;  (** storage_class *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_storagegateway_tape_pool *)

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

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let aws_storagegateway_tape_pool ?id ?retention_lock_time_in_days
    ?retention_lock_type ?tags ?tags_all ~pool_name ~storage_class
    __resource_id =
  let __resource_type = "aws_storagegateway_tape_pool" in
  let __resource =
    ({
       id;
       pool_name;
       retention_lock_time_in_days;
       retention_lock_type;
       storage_class;
       tags;
       tags_all;
     }
      : aws_storagegateway_tape_pool)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_tape_pool __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       pool_name =
         Prop.computed __resource_type __resource_id "pool_name";
       retention_lock_time_in_days =
         Prop.computed __resource_type __resource_id
           "retention_lock_time_in_days";
       retention_lock_type =
         Prop.computed __resource_type __resource_id
           "retention_lock_type";
       storage_class =
         Prop.computed __resource_type __resource_id "storage_class";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes

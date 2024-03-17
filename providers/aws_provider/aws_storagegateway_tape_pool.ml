(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_storagegateway_tape_pool = {
  pool_name : string;  (** pool_name *)
  retention_lock_time_in_days : float option; [@option]
      (** retention_lock_time_in_days *)
  retention_lock_type : string option; [@option]
      (** retention_lock_type *)
  storage_class : string;  (** storage_class *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_storagegateway_tape_pool *)

let aws_storagegateway_tape_pool ?retention_lock_time_in_days
    ?retention_lock_type ?tags ~pool_name ~storage_class
    __resource_id =
  let __resource_type = "aws_storagegateway_tape_pool" in
  let __resource =
    {
      pool_name;
      retention_lock_time_in_days;
      retention_lock_type;
      storage_class;
      tags;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_storagegateway_tape_pool __resource);
  ()

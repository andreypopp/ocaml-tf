(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_snapshot_create_volume_permission = {
  account_id : string prop;  (** account_id *)
  id : string prop option; [@option]  (** id *)
  snapshot_id : string prop;  (** snapshot_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_snapshot_create_volume_permission *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_snapshot_create_volume_permission ?id ?timeouts ~account_id
    ~snapshot_id () : aws_snapshot_create_volume_permission =
  { account_id; id; snapshot_id; timeouts }

type t = {
  account_id : string prop;
  id : string prop;
  snapshot_id : string prop;
}

let register ?tf_module ?id ?timeouts ~account_id ~snapshot_id
    __resource_id =
  let __resource_type = "aws_snapshot_create_volume_permission" in
  let __resource =
    aws_snapshot_create_volume_permission ?id ?timeouts ~account_id
      ~snapshot_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_snapshot_create_volume_permission __resource);
  let __resource_attributes =
    ({
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       snapshot_id =
         Prop.computed __resource_type __resource_id "snapshot_id";
     }
      : t)
  in
  __resource_attributes

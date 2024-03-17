(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_snapshot_create_volume_permission__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_snapshot_create_volume_permission__timeouts *)

type aws_snapshot_create_volume_permission = {
  account_id : string prop;  (** account_id *)
  id : string prop option; [@option]  (** id *)
  snapshot_id : string prop;  (** snapshot_id *)
  timeouts : aws_snapshot_create_volume_permission__timeouts option;
}
[@@deriving yojson_of]
(** aws_snapshot_create_volume_permission *)

let aws_snapshot_create_volume_permission ?id ?timeouts ~account_id
    ~snapshot_id __resource_id =
  let __resource_type = "aws_snapshot_create_volume_permission" in
  let __resource = { account_id; id; snapshot_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_snapshot_create_volume_permission __resource);
  ()

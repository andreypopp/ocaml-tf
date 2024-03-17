(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ebs_fast_snapshot_restore__timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** aws_ebs_fast_snapshot_restore__timeouts *)

type aws_ebs_fast_snapshot_restore = {
  availability_zone : string prop;  (** availability_zone *)
  snapshot_id : string prop;  (** snapshot_id *)
  timeouts : aws_ebs_fast_snapshot_restore__timeouts option;
}
[@@deriving yojson_of]
(** aws_ebs_fast_snapshot_restore *)

let aws_ebs_fast_snapshot_restore ?timeouts ~availability_zone
    ~snapshot_id __resource_id =
  let __resource_type = "aws_ebs_fast_snapshot_restore" in
  let __resource = { availability_zone; snapshot_id; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ebs_fast_snapshot_restore __resource);
  ()

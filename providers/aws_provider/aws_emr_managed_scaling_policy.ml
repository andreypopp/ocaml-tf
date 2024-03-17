(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_emr_managed_scaling_policy__compute_limits = {
  maximum_capacity_units : float prop;  (** maximum_capacity_units *)
  maximum_core_capacity_units : float prop option; [@option]
      (** maximum_core_capacity_units *)
  maximum_ondemand_capacity_units : float prop option; [@option]
      (** maximum_ondemand_capacity_units *)
  minimum_capacity_units : float prop;  (** minimum_capacity_units *)
  unit_type : string prop;  (** unit_type *)
}
[@@deriving yojson_of]
(** aws_emr_managed_scaling_policy__compute_limits *)

type aws_emr_managed_scaling_policy = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  compute_limits :
    aws_emr_managed_scaling_policy__compute_limits list;
}
[@@deriving yojson_of]
(** aws_emr_managed_scaling_policy *)

let aws_emr_managed_scaling_policy ?id ~cluster_id ~compute_limits
    __resource_id =
  let __resource_type = "aws_emr_managed_scaling_policy" in
  let __resource = { cluster_id; id; compute_limits } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emr_managed_scaling_policy __resource);
  ()

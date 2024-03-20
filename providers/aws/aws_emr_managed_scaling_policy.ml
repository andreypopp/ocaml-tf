(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type compute_limits = {
  maximum_capacity_units : float prop;  (** maximum_capacity_units *)
  maximum_core_capacity_units : float prop option; [@option]
      (** maximum_core_capacity_units *)
  maximum_ondemand_capacity_units : float prop option; [@option]
      (** maximum_ondemand_capacity_units *)
  minimum_capacity_units : float prop;  (** minimum_capacity_units *)
  unit_type : string prop;  (** unit_type *)
}
[@@deriving yojson_of]
(** compute_limits *)

type aws_emr_managed_scaling_policy = {
  cluster_id : string prop;  (** cluster_id *)
  id : string prop option; [@option]  (** id *)
  compute_limits : compute_limits list;
}
[@@deriving yojson_of]
(** aws_emr_managed_scaling_policy *)

let compute_limits ?maximum_core_capacity_units
    ?maximum_ondemand_capacity_units ~maximum_capacity_units
    ~minimum_capacity_units ~unit_type () : compute_limits =
  {
    maximum_capacity_units;
    maximum_core_capacity_units;
    maximum_ondemand_capacity_units;
    minimum_capacity_units;
    unit_type;
  }

let aws_emr_managed_scaling_policy ?id ~cluster_id ~compute_limits ()
    : aws_emr_managed_scaling_policy =
  { cluster_id; id; compute_limits }

type t = { cluster_id : string prop; id : string prop }

let make ?id ~cluster_id ~compute_limits __id =
  let __type = "aws_emr_managed_scaling_policy" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emr_managed_scaling_policy
        (aws_emr_managed_scaling_policy ?id ~cluster_id
           ~compute_limits ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_id ~compute_limits __id =
  let (r : _ Tf_core.resource) =
    make ?id ~cluster_id ~compute_limits __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

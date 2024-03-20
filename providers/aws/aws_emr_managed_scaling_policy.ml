(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type compute_limits = {
  maximum_capacity_units : float prop;
  maximum_core_capacity_units : float prop option; [@option]
  maximum_ondemand_capacity_units : float prop option; [@option]
  minimum_capacity_units : float prop;
  unit_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : compute_limits) -> ()

let yojson_of_compute_limits =
  (function
   | {
       maximum_capacity_units = v_maximum_capacity_units;
       maximum_core_capacity_units = v_maximum_core_capacity_units;
       maximum_ondemand_capacity_units =
         v_maximum_ondemand_capacity_units;
       minimum_capacity_units = v_minimum_capacity_units;
       unit_type = v_unit_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_unit_type in
         ("unit_type", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_minimum_capacity_units
         in
         ("minimum_capacity_units", arg) :: bnds
       in
       let bnds =
         match v_maximum_ondemand_capacity_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_ondemand_capacity_units", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_core_capacity_units with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_core_capacity_units", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_maximum_capacity_units
         in
         ("maximum_capacity_units", arg) :: bnds
       in
       `Assoc bnds
    : compute_limits -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_compute_limits

[@@@deriving.end]

type aws_emr_managed_scaling_policy = {
  cluster_id : string prop;
  id : string prop option; [@option]
  compute_limits : compute_limits list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_emr_managed_scaling_policy) -> ()

let yojson_of_aws_emr_managed_scaling_policy =
  (function
   | {
       cluster_id = v_cluster_id;
       id = v_id;
       compute_limits = v_compute_limits;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_compute_limits v_compute_limits
         in
         ("compute_limits", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : aws_emr_managed_scaling_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_emr_managed_scaling_policy

[@@@deriving.end]

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

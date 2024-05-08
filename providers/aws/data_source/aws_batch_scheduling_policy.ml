(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type fair_share_policy__share_distribution = {
  share_identifier : string prop;
  weight_factor : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fair_share_policy__share_distribution) -> ()

let yojson_of_fair_share_policy__share_distribution =
  (function
   | {
       share_identifier = v_share_identifier;
       weight_factor = v_weight_factor;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_weight_factor in
         ("weight_factor", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_share_identifier
         in
         ("share_identifier", arg) :: bnds
       in
       `Assoc bnds
    : fair_share_policy__share_distribution ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fair_share_policy__share_distribution

[@@@deriving.end]

type fair_share_policy = {
  compute_reservation : float prop;
  share_decay_seconds : float prop;
  share_distribution : fair_share_policy__share_distribution list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : fair_share_policy) -> ()

let yojson_of_fair_share_policy =
  (function
   | {
       compute_reservation = v_compute_reservation;
       share_decay_seconds = v_share_decay_seconds;
       share_distribution = v_share_distribution;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_share_distribution then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_fair_share_policy__share_distribution)
               v_share_distribution
           in
           let bnd = "share_distribution", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_share_decay_seconds
         in
         ("share_decay_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_compute_reservation
         in
         ("compute_reservation", arg) :: bnds
       in
       `Assoc bnds
    : fair_share_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fair_share_policy

[@@@deriving.end]

type aws_batch_scheduling_policy = {
  arn : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_batch_scheduling_policy) -> ()

let yojson_of_aws_batch_scheduling_policy =
  (function
   | { arn = v_arn; id = v_id; tags = v_tags } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_batch_scheduling_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_batch_scheduling_policy

[@@@deriving.end]

let aws_batch_scheduling_policy ?id ?tags ~arn () :
    aws_batch_scheduling_policy =
  { arn; id; tags }

type t = {
  tf_name : string;
  arn : string prop;
  fair_share_policy : fair_share_policy list prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
}

let make ?id ?tags ~arn __id =
  let __type = "aws_batch_scheduling_policy" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       fair_share_policy =
         Prop.computed __type __id "fair_share_policy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_batch_scheduling_policy
        (aws_batch_scheduling_policy ?id ?tags ~arn ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~arn __id =
  let (r : _ Tf_core.resource) = make ?id ?tags ~arn __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

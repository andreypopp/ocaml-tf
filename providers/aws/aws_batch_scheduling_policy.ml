(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type fair_share_policy__share_distribution = {
  share_identifier : string prop;
  weight_factor : float prop option; [@option]
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
         match v_weight_factor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "weight_factor", arg in
             bnd :: bnds
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
  compute_reservation : float prop option; [@option]
  share_decay_seconds : float prop option; [@option]
  share_distribution : fair_share_policy__share_distribution list;
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
         let arg =
           yojson_of_list
             yojson_of_fair_share_policy__share_distribution
             v_share_distribution
         in
         ("share_distribution", arg) :: bnds
       in
       let bnds =
         match v_share_decay_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "share_decay_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compute_reservation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "compute_reservation", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : fair_share_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_fair_share_policy

[@@@deriving.end]

type aws_batch_scheduling_policy = {
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  fair_share_policy : fair_share_policy list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_batch_scheduling_policy) -> ()

let yojson_of_aws_batch_scheduling_policy =
  (function
   | {
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       fair_share_policy = v_fair_share_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_fair_share_policy
             v_fair_share_policy
         in
         ("fair_share_policy", arg) :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
             bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_batch_scheduling_policy ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_batch_scheduling_policy

[@@@deriving.end]

let fair_share_policy__share_distribution ?weight_factor
    ~share_identifier () : fair_share_policy__share_distribution =
  { share_identifier; weight_factor }

let fair_share_policy ?compute_reservation ?share_decay_seconds
    ~share_distribution () : fair_share_policy =
  { compute_reservation; share_decay_seconds; share_distribution }

let aws_batch_scheduling_policy ?id ?tags ?tags_all
    ?(fair_share_policy = []) ~name () : aws_batch_scheduling_policy
    =
  { id; name; tags; tags_all; fair_share_policy }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?(fair_share_policy = []) ~name __id =
  let __type = "aws_batch_scheduling_policy" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_batch_scheduling_policy
        (aws_batch_scheduling_policy ?id ?tags ?tags_all
           ~fair_share_policy ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?(fair_share_policy = [])
    ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~fair_share_policy ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

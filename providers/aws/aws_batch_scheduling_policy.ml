(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type fair_share_policy__share_distribution = {
  share_identifier : string prop;  (** share_identifier *)
  weight_factor : float prop option; [@option]  (** weight_factor *)
}
[@@deriving yojson_of]
(** fair_share_policy__share_distribution *)

type fair_share_policy = {
  compute_reservation : float prop option; [@option]
      (** compute_reservation *)
  share_decay_seconds : float prop option; [@option]
      (** share_decay_seconds *)
  share_distribution : fair_share_policy__share_distribution list;
}
[@@deriving yojson_of]
(** fair_share_policy *)

type aws_batch_scheduling_policy = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  fair_share_policy : fair_share_policy list;
}
[@@deriving yojson_of]
(** aws_batch_scheduling_policy *)

let fair_share_policy__share_distribution ?weight_factor
    ~share_identifier () : fair_share_policy__share_distribution =
  { share_identifier; weight_factor }

let fair_share_policy ?compute_reservation ?share_decay_seconds
    ~share_distribution () : fair_share_policy =
  { compute_reservation; share_decay_seconds; share_distribution }

let aws_batch_scheduling_policy ?id ?tags ?tags_all ~name
    ~fair_share_policy () : aws_batch_scheduling_policy =
  { id; name; tags; tags_all; fair_share_policy }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ~name ~fair_share_policy __id =
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
        (aws_batch_scheduling_policy ?id ?tags ?tags_all ~name
           ~fair_share_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~name ~fair_share_policy
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~name ~fair_share_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

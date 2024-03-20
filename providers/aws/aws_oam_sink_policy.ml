(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_oam_sink_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  sink_identifier : string prop;  (** sink_identifier *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_oam_sink_policy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_oam_sink_policy ?id ?timeouts ~policy ~sink_identifier () :
    aws_oam_sink_policy =
  { id; policy; sink_identifier; timeouts }

type t = {
  arn : string prop;
  id : string prop;
  policy : string prop;
  sink_id : string prop;
  sink_identifier : string prop;
}

let make ?id ?timeouts ~policy ~sink_identifier __id =
  let __type = "aws_oam_sink_policy" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       sink_id = Prop.computed __type __id "sink_id";
       sink_identifier = Prop.computed __type __id "sink_identifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_oam_sink_policy
        (aws_oam_sink_policy ?id ?timeouts ~policy ~sink_identifier
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~policy ~sink_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~policy ~sink_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

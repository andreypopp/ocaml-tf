(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_location_tracker_association = {
  consumer_arn : string prop;  (** consumer_arn *)
  id : string prop option; [@option]  (** id *)
  tracker_name : string prop;  (** tracker_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_location_tracker_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_location_tracker_association ?id ?timeouts ~consumer_arn
    ~tracker_name () : aws_location_tracker_association =
  { consumer_arn; id; tracker_name; timeouts }

type t = {
  consumer_arn : string prop;
  id : string prop;
  tracker_name : string prop;
}

let make ?id ?timeouts ~consumer_arn ~tracker_name __id =
  let __type = "aws_location_tracker_association" in
  let __attrs =
    ({
       consumer_arn = Prop.computed __type __id "consumer_arn";
       id = Prop.computed __type __id "id";
       tracker_name = Prop.computed __type __id "tracker_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_location_tracker_association
        (aws_location_tracker_association ?id ?timeouts ~consumer_arn
           ~tracker_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~consumer_arn ~tracker_name
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~consumer_arn ~tracker_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

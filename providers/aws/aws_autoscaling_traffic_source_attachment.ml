(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type traffic_source = {
  identifier : string prop;  (** identifier *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** traffic_source *)

type aws_autoscaling_traffic_source_attachment = {
  autoscaling_group_name : string prop;
      (** autoscaling_group_name *)
  id : string prop option; [@option]  (** id *)
  timeouts : timeouts option;
  traffic_source : traffic_source list;
}
[@@deriving yojson_of]
(** aws_autoscaling_traffic_source_attachment *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let traffic_source ~identifier ~type_ () : traffic_source =
  { identifier; type_ }

let aws_autoscaling_traffic_source_attachment ?id ?timeouts
    ~autoscaling_group_name ~traffic_source () :
    aws_autoscaling_traffic_source_attachment =
  { autoscaling_group_name; id; timeouts; traffic_source }

type t = { autoscaling_group_name : string prop; id : string prop }

let make ?id ?timeouts ~autoscaling_group_name ~traffic_source __id =
  let __type = "aws_autoscaling_traffic_source_attachment" in
  let __attrs =
    ({
       autoscaling_group_name =
         Prop.computed __type __id "autoscaling_group_name";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_autoscaling_traffic_source_attachment
        (aws_autoscaling_traffic_source_attachment ?id ?timeouts
           ~autoscaling_group_name ~traffic_source ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~autoscaling_group_name
    ~traffic_source __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~autoscaling_group_name ~traffic_source __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

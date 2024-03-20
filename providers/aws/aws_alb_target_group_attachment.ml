(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_alb_target_group_attachment = {
  availability_zone : string prop option; [@option]
      (** availability_zone *)
  id : string prop option; [@option]  (** id *)
  port : float prop option; [@option]  (** port *)
  target_group_arn : string prop;  (** target_group_arn *)
  target_id : string prop;  (** target_id *)
}
[@@deriving yojson_of]
(** aws_alb_target_group_attachment *)

let aws_alb_target_group_attachment ?availability_zone ?id ?port
    ~target_group_arn ~target_id () : aws_alb_target_group_attachment
    =
  { availability_zone; id; port; target_group_arn; target_id }

type t = {
  availability_zone : string prop;
  id : string prop;
  port : float prop;
  target_group_arn : string prop;
  target_id : string prop;
}

let make ?availability_zone ?id ?port ~target_group_arn ~target_id
    __id =
  let __type = "aws_alb_target_group_attachment" in
  let __attrs =
    ({
       availability_zone =
         Prop.computed __type __id "availability_zone";
       id = Prop.computed __type __id "id";
       port = Prop.computed __type __id "port";
       target_group_arn =
         Prop.computed __type __id "target_group_arn";
       target_id = Prop.computed __type __id "target_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_alb_target_group_attachment
        (aws_alb_target_group_attachment ?availability_zone ?id ?port
           ~target_group_arn ~target_id ());
    attrs = __attrs;
  }

let register ?tf_module ?availability_zone ?id ?port
    ~target_group_arn ~target_id __id =
  let (r : _ Tf_core.resource) =
    make ?availability_zone ?id ?port ~target_group_arn ~target_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

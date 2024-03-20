(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_controltower_control = {
  control_identifier : string prop;  (** control_identifier *)
  id : string prop option; [@option]  (** id *)
  target_identifier : string prop;  (** target_identifier *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_controltower_control *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_controltower_control ?id ?timeouts ~control_identifier
    ~target_identifier () : aws_controltower_control =
  { control_identifier; id; target_identifier; timeouts }

type t = {
  control_identifier : string prop;
  id : string prop;
  target_identifier : string prop;
}

let make ?id ?timeouts ~control_identifier ~target_identifier __id =
  let __type = "aws_controltower_control" in
  let __attrs =
    ({
       control_identifier =
         Prop.computed __type __id "control_identifier";
       id = Prop.computed __type __id "id";
       target_identifier =
         Prop.computed __type __id "target_identifier";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_controltower_control
        (aws_controltower_control ?id ?timeouts ~control_identifier
           ~target_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~control_identifier
    ~target_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~control_identifier ~target_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

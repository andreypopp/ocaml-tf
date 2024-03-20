(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appstream_fleet_stack_association = {
  fleet_name : string prop;  (** fleet_name *)
  id : string prop option; [@option]  (** id *)
  stack_name : string prop;  (** stack_name *)
}
[@@deriving yojson_of]
(** aws_appstream_fleet_stack_association *)

let aws_appstream_fleet_stack_association ?id ~fleet_name ~stack_name
    () : aws_appstream_fleet_stack_association =
  { fleet_name; id; stack_name }

type t = {
  fleet_name : string prop;
  id : string prop;
  stack_name : string prop;
}

let make ?id ~fleet_name ~stack_name __id =
  let __type = "aws_appstream_fleet_stack_association" in
  let __attrs =
    ({
       fleet_name = Prop.computed __type __id "fleet_name";
       id = Prop.computed __type __id "id";
       stack_name = Prop.computed __type __id "stack_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appstream_fleet_stack_association
        (aws_appstream_fleet_stack_association ?id ~fleet_name
           ~stack_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~fleet_name ~stack_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~fleet_name ~stack_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

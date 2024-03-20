(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_thing_group_membership = {
  id : string prop option; [@option]  (** id *)
  override_dynamic_group : bool prop option; [@option]
      (** override_dynamic_group *)
  thing_group_name : string prop;  (** thing_group_name *)
  thing_name : string prop;  (** thing_name *)
}
[@@deriving yojson_of]
(** aws_iot_thing_group_membership *)

let aws_iot_thing_group_membership ?id ?override_dynamic_group
    ~thing_group_name ~thing_name () : aws_iot_thing_group_membership
    =
  { id; override_dynamic_group; thing_group_name; thing_name }

type t = {
  id : string prop;
  override_dynamic_group : bool prop;
  thing_group_name : string prop;
  thing_name : string prop;
}

let make ?id ?override_dynamic_group ~thing_group_name ~thing_name
    __id =
  let __type = "aws_iot_thing_group_membership" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       override_dynamic_group =
         Prop.computed __type __id "override_dynamic_group";
       thing_group_name =
         Prop.computed __type __id "thing_group_name";
       thing_name = Prop.computed __type __id "thing_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_thing_group_membership
        (aws_iot_thing_group_membership ?id ?override_dynamic_group
           ~thing_group_name ~thing_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?override_dynamic_group ~thing_group_name
    ~thing_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?override_dynamic_group ~thing_group_name ~thing_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

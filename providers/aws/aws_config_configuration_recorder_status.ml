(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_config_configuration_recorder_status = {
  id : string prop option; [@option]  (** id *)
  is_enabled : bool prop;  (** is_enabled *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_config_configuration_recorder_status *)

let aws_config_configuration_recorder_status ?id ~is_enabled ~name ()
    : aws_config_configuration_recorder_status =
  { id; is_enabled; name }

type t = {
  id : string prop;
  is_enabled : bool prop;
  name : string prop;
}

let make ?id ~is_enabled ~name __id =
  let __type = "aws_config_configuration_recorder_status" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       is_enabled = Prop.computed __type __id "is_enabled";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_config_configuration_recorder_status
        (aws_config_configuration_recorder_status ?id ~is_enabled
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~is_enabled ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~is_enabled ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_shield_application_layer_automatic_response = {
  action : string prop;  (** action *)
  resource_arn : string prop;  (** resource_arn *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_shield_application_layer_automatic_response *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_shield_application_layer_automatic_response ?timeouts ~action
    ~resource_arn () :
    aws_shield_application_layer_automatic_response =
  { action; resource_arn; timeouts }

type t = {
  action : string prop;
  id : string prop;
  resource_arn : string prop;
}

let make ?timeouts ~action ~resource_arn __id =
  let __type = "aws_shield_application_layer_automatic_response" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       id = Prop.computed __type __id "id";
       resource_arn = Prop.computed __type __id "resource_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_shield_application_layer_automatic_response
        (aws_shield_application_layer_automatic_response ?timeouts
           ~action ~resource_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?timeouts ~action ~resource_arn __id =
  let (r : _ Tf_core.resource) =
    make ?timeouts ~action ~resource_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

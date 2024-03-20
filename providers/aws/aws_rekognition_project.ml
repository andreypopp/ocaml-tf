(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_rekognition_project = {
  auto_update : string prop option; [@option]  (** auto_update *)
  feature : string prop option; [@option]  (** feature *)
  name : string prop;  (** name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_rekognition_project *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_rekognition_project ?auto_update ?feature ?timeouts ~name ()
    : aws_rekognition_project =
  { auto_update; feature; name; timeouts }

type t = {
  arn : string prop;
  auto_update : string prop;
  feature : string prop;
  id : string prop;
  name : string prop;
}

let make ?auto_update ?feature ?timeouts ~name __id =
  let __type = "aws_rekognition_project" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       auto_update = Prop.computed __type __id "auto_update";
       feature = Prop.computed __type __id "feature";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_rekognition_project
        (aws_rekognition_project ?auto_update ?feature ?timeouts
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_update ?feature ?timeouts ~name __id =
  let (r : _ Tf_core.resource) =
    make ?auto_update ?feature ?timeouts ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

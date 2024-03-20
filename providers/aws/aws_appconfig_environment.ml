(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type monitor = {
  alarm_arn : string prop;  (** alarm_arn *)
  alarm_role_arn : string prop option; [@option]
      (** alarm_role_arn *)
}
[@@deriving yojson_of]
(** monitor *)

type aws_appconfig_environment = {
  application_id : string prop;  (** application_id *)
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  monitor : monitor list;
}
[@@deriving yojson_of]
(** aws_appconfig_environment *)

let monitor ?alarm_role_arn ~alarm_arn () : monitor =
  { alarm_arn; alarm_role_arn }

let aws_appconfig_environment ?description ?tags ~application_id
    ~name ~monitor () : aws_appconfig_environment =
  { application_id; description; name; tags; monitor }

type t = {
  application_id : string prop;
  arn : string prop;
  description : string prop;
  environment_id : string prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?tags ~application_id ~name ~monitor __id =
  let __type = "aws_appconfig_environment" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       environment_id = Prop.computed __type __id "environment_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appconfig_environment
        (aws_appconfig_environment ?description ?tags ~application_id
           ~name ~monitor ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?tags ~application_id ~name
    ~monitor __id =
  let (r : _ Tf_core.resource) =
    make ?description ?tags ~application_id ~name ~monitor __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

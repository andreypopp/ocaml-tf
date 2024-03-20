(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ssoadmin_permission_set = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  instance_arn : string prop;  (** instance_arn *)
  name : string prop;  (** name *)
  relay_state : string prop option; [@option]  (** relay_state *)
  session_duration : string prop option; [@option]
      (** session_duration *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ssoadmin_permission_set *)

let timeouts ?update () : timeouts = { update }

let aws_ssoadmin_permission_set ?description ?id ?relay_state
    ?session_duration ?tags ?tags_all ?timeouts ~instance_arn ~name
    () : aws_ssoadmin_permission_set =
  {
    description;
    id;
    instance_arn;
    name;
    relay_state;
    session_duration;
    tags;
    tags_all;
    timeouts;
  }

type t = {
  arn : string prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  instance_arn : string prop;
  name : string prop;
  relay_state : string prop;
  session_duration : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?relay_state ?session_duration ?tags
    ?tags_all ?timeouts ~instance_arn ~name __id =
  let __type = "aws_ssoadmin_permission_set" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       instance_arn = Prop.computed __type __id "instance_arn";
       name = Prop.computed __type __id "name";
       relay_state = Prop.computed __type __id "relay_state";
       session_duration =
         Prop.computed __type __id "session_duration";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssoadmin_permission_set
        (aws_ssoadmin_permission_set ?description ?id ?relay_state
           ?session_duration ?tags ?tags_all ?timeouts ~instance_arn
           ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?relay_state
    ?session_duration ?tags ?tags_all ?timeouts ~instance_arn ~name
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?relay_state ?session_duration ?tags
      ?tags_all ?timeouts ~instance_arn ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

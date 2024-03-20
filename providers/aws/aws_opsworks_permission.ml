(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_opsworks_permission = {
  allow_ssh : bool prop option; [@option]  (** allow_ssh *)
  allow_sudo : bool prop option; [@option]  (** allow_sudo *)
  id : string prop option; [@option]  (** id *)
  level : string prop option; [@option]  (** level *)
  stack_id : string prop;  (** stack_id *)
  user_arn : string prop;  (** user_arn *)
}
[@@deriving yojson_of]
(** aws_opsworks_permission *)

let aws_opsworks_permission ?allow_ssh ?allow_sudo ?id ?level
    ~stack_id ~user_arn () : aws_opsworks_permission =
  { allow_ssh; allow_sudo; id; level; stack_id; user_arn }

type t = {
  allow_ssh : bool prop;
  allow_sudo : bool prop;
  id : string prop;
  level : string prop;
  stack_id : string prop;
  user_arn : string prop;
}

let make ?allow_ssh ?allow_sudo ?id ?level ~stack_id ~user_arn __id =
  let __type = "aws_opsworks_permission" in
  let __attrs =
    ({
       allow_ssh = Prop.computed __type __id "allow_ssh";
       allow_sudo = Prop.computed __type __id "allow_sudo";
       id = Prop.computed __type __id "id";
       level = Prop.computed __type __id "level";
       stack_id = Prop.computed __type __id "stack_id";
       user_arn = Prop.computed __type __id "user_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_opsworks_permission
        (aws_opsworks_permission ?allow_ssh ?allow_sudo ?id ?level
           ~stack_id ~user_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_ssh ?allow_sudo ?id ?level ~stack_id
    ~user_arn __id =
  let (r : _ Tf_core.resource) =
    make ?allow_ssh ?allow_sudo ?id ?level ~stack_id ~user_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

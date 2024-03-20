(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appstream_user_stack_association = {
  authentication_type : string prop;  (** authentication_type *)
  id : string prop option; [@option]  (** id *)
  send_email_notification : bool prop option; [@option]
      (** send_email_notification *)
  stack_name : string prop;  (** stack_name *)
  user_name : string prop;  (** user_name *)
}
[@@deriving yojson_of]
(** aws_appstream_user_stack_association *)

let aws_appstream_user_stack_association ?id ?send_email_notification
    ~authentication_type ~stack_name ~user_name () :
    aws_appstream_user_stack_association =
  {
    authentication_type;
    id;
    send_email_notification;
    stack_name;
    user_name;
  }

type t = {
  authentication_type : string prop;
  id : string prop;
  send_email_notification : bool prop;
  stack_name : string prop;
  user_name : string prop;
}

let make ?id ?send_email_notification ~authentication_type
    ~stack_name ~user_name __id =
  let __type = "aws_appstream_user_stack_association" in
  let __attrs =
    ({
       authentication_type =
         Prop.computed __type __id "authentication_type";
       id = Prop.computed __type __id "id";
       send_email_notification =
         Prop.computed __type __id "send_email_notification";
       stack_name = Prop.computed __type __id "stack_name";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appstream_user_stack_association
        (aws_appstream_user_stack_association ?id
           ?send_email_notification ~authentication_type ~stack_name
           ~user_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?send_email_notification
    ~authentication_type ~stack_name ~user_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?send_email_notification ~authentication_type
      ~stack_name ~user_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

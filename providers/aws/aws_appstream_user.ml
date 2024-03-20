(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_appstream_user = {
  authentication_type : string prop;  (** authentication_type *)
  enabled : bool prop option; [@option]  (** enabled *)
  first_name : string prop option; [@option]  (** first_name *)
  id : string prop option; [@option]  (** id *)
  last_name : string prop option; [@option]  (** last_name *)
  send_email_notification : bool prop option; [@option]
      (** send_email_notification *)
  user_name : string prop;  (** user_name *)
}
[@@deriving yojson_of]
(** aws_appstream_user *)

let aws_appstream_user ?enabled ?first_name ?id ?last_name
    ?send_email_notification ~authentication_type ~user_name () :
    aws_appstream_user =
  {
    authentication_type;
    enabled;
    first_name;
    id;
    last_name;
    send_email_notification;
    user_name;
  }

type t = {
  arn : string prop;
  authentication_type : string prop;
  created_time : string prop;
  enabled : bool prop;
  first_name : string prop;
  id : string prop;
  last_name : string prop;
  send_email_notification : bool prop;
  user_name : string prop;
}

let make ?enabled ?first_name ?id ?last_name ?send_email_notification
    ~authentication_type ~user_name __id =
  let __type = "aws_appstream_user" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       authentication_type =
         Prop.computed __type __id "authentication_type";
       created_time = Prop.computed __type __id "created_time";
       enabled = Prop.computed __type __id "enabled";
       first_name = Prop.computed __type __id "first_name";
       id = Prop.computed __type __id "id";
       last_name = Prop.computed __type __id "last_name";
       send_email_notification =
         Prop.computed __type __id "send_email_notification";
       user_name = Prop.computed __type __id "user_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appstream_user
        (aws_appstream_user ?enabled ?first_name ?id ?last_name
           ?send_email_notification ~authentication_type ~user_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?enabled ?first_name ?id ?last_name
    ?send_email_notification ~authentication_type ~user_name __id =
  let (r : _ Tf_core.resource) =
    make ?enabled ?first_name ?id ?last_name ?send_email_notification
      ~authentication_type ~user_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

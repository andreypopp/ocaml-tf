(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?enabled ?first_name ?id ?last_name
    ?send_email_notification ~authentication_type ~user_name
    __resource_id =
  let __resource_type = "aws_appstream_user" in
  let __resource =
    aws_appstream_user ?enabled ?first_name ?id ?last_name
      ?send_email_notification ~authentication_type ~user_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appstream_user __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       authentication_type =
         Prop.computed __resource_type __resource_id
           "authentication_type";
       created_time =
         Prop.computed __resource_type __resource_id "created_time";
       enabled =
         Prop.computed __resource_type __resource_id "enabled";
       first_name =
         Prop.computed __resource_type __resource_id "first_name";
       id = Prop.computed __resource_type __resource_id "id";
       last_name =
         Prop.computed __resource_type __resource_id "last_name";
       send_email_notification =
         Prop.computed __resource_type __resource_id
           "send_email_notification";
       user_name =
         Prop.computed __resource_type __resource_id "user_name";
     }
      : t)
  in
  __resource_attributes

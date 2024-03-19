(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?send_email_notification
    ~authentication_type ~stack_name ~user_name __resource_id =
  let __resource_type = "aws_appstream_user_stack_association" in
  let __resource =
    aws_appstream_user_stack_association ?id ?send_email_notification
      ~authentication_type ~stack_name ~user_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appstream_user_stack_association __resource);
  let __resource_attributes =
    ({
       authentication_type =
         Prop.computed __resource_type __resource_id
           "authentication_type";
       id = Prop.computed __resource_type __resource_id "id";
       send_email_notification =
         Prop.computed __resource_type __resource_id
           "send_email_notification";
       stack_name =
         Prop.computed __resource_type __resource_id "stack_name";
       user_name =
         Prop.computed __resource_type __resource_id "user_name";
     }
      : t)
  in
  __resource_attributes

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appstream_user_stack_association = {
  authentication_type : string;  (** authentication_type *)
  id : string option; [@option]  (** id *)
  send_email_notification : bool option; [@option]
      (** send_email_notification *)
  stack_name : string;  (** stack_name *)
  user_name : string;  (** user_name *)
}
[@@deriving yojson_of]
(** aws_appstream_user_stack_association *)

let aws_appstream_user_stack_association ?id ?send_email_notification
    ~authentication_type ~stack_name ~user_name __resource_id =
  let __resource_type = "aws_appstream_user_stack_association" in
  let __resource =
    {
      authentication_type;
      id;
      send_email_notification;
      stack_name;
      user_name;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appstream_user_stack_association __resource);
  ()

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_appstream_user = {
  authentication_type : string;  (** authentication_type *)
  enabled : bool option; [@option]  (** enabled *)
  first_name : string option; [@option]  (** first_name *)
  last_name : string option; [@option]  (** last_name *)
  send_email_notification : bool option; [@option]
      (** send_email_notification *)
  user_name : string;  (** user_name *)
}
[@@deriving yojson_of]
(** aws_appstream_user *)

let aws_appstream_user ?enabled ?first_name ?last_name
    ?send_email_notification ~authentication_type ~user_name
    __resource_id =
  let __resource_type = "aws_appstream_user" in
  let __resource =
    {
      authentication_type;
      enabled;
      first_name;
      last_name;
      send_email_notification;
      user_name;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_appstream_user __resource);
  ()

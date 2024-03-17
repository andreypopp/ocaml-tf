(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_ses_identity_notification_topic = {
  id : string prop option; [@option]  (** id *)
  identity : string prop;  (** identity *)
  include_original_headers : bool prop option; [@option]
      (** include_original_headers *)
  notification_type : string prop;  (** notification_type *)
  topic_arn : string prop option; [@option]  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_ses_identity_notification_topic *)

let aws_ses_identity_notification_topic ?id ?include_original_headers
    ?topic_arn ~identity ~notification_type __resource_id =
  let __resource_type = "aws_ses_identity_notification_topic" in
  let __resource =
    {
      id;
      identity;
      include_original_headers;
      notification_type;
      topic_arn;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_identity_notification_topic __resource);
  ()

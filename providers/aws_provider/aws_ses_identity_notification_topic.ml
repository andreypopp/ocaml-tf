(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_ses_identity_notification_topic = {
  identity : string;  (** identity *)
  include_original_headers : bool option; [@option]
      (** include_original_headers *)
  notification_type : string;  (** notification_type *)
  topic_arn : string option; [@option]  (** topic_arn *)
}
[@@deriving yojson_of]
(** aws_ses_identity_notification_topic *)

let aws_ses_identity_notification_topic ?include_original_headers
    ?topic_arn ~identity ~notification_type __resource_id =
  let __resource_type = "aws_ses_identity_notification_topic" in
  let __resource =
    {
      identity;
      include_original_headers;
      notification_type;
      topic_arn;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_identity_notification_topic __resource);
  ()
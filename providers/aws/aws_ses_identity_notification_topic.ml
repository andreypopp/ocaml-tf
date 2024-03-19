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
    ?topic_arn ~identity ~notification_type () :
    aws_ses_identity_notification_topic =
  {
    id;
    identity;
    include_original_headers;
    notification_type;
    topic_arn;
  }

type t = {
  id : string prop;
  identity : string prop;
  include_original_headers : bool prop;
  notification_type : string prop;
  topic_arn : string prop;
}

let register ?tf_module ?id ?include_original_headers ?topic_arn
    ~identity ~notification_type __resource_id =
  let __resource_type = "aws_ses_identity_notification_topic" in
  let __resource =
    aws_ses_identity_notification_topic ?id ?include_original_headers
      ?topic_arn ~identity ~notification_type ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_ses_identity_notification_topic __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       identity =
         Prop.computed __resource_type __resource_id "identity";
       include_original_headers =
         Prop.computed __resource_type __resource_id
           "include_original_headers";
       notification_type =
         Prop.computed __resource_type __resource_id
           "notification_type";
       topic_arn =
         Prop.computed __resource_type __resource_id "topic_arn";
     }
      : t)
  in
  __resource_attributes

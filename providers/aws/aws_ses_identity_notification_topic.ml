(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?include_original_headers ?topic_arn ~identity
    ~notification_type __id =
  let __type = "aws_ses_identity_notification_topic" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       include_original_headers =
         Prop.computed __type __id "include_original_headers";
       notification_type =
         Prop.computed __type __id "notification_type";
       topic_arn = Prop.computed __type __id "topic_arn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ses_identity_notification_topic
        (aws_ses_identity_notification_topic ?id
           ?include_original_headers ?topic_arn ~identity
           ~notification_type ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?include_original_headers ?topic_arn
    ~identity ~notification_type __id =
  let (r : _ Tf_core.resource) =
    make ?id ?include_original_headers ?topic_arn ~identity
      ~notification_type __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

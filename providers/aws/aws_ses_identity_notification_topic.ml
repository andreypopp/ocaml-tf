(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ses_identity_notification_topic = {
  id : string prop option; [@option]
  identity : string prop;
  include_original_headers : bool prop option; [@option]
  notification_type : string prop;
  topic_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ses_identity_notification_topic) -> ()

let yojson_of_aws_ses_identity_notification_topic =
  (function
   | {
       id = v_id;
       identity = v_identity;
       include_original_headers = v_include_original_headers;
       notification_type = v_notification_type;
       topic_arn = v_topic_arn;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_topic_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topic_arn", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_notification_type
         in
         ("notification_type", arg) :: bnds
       in
       let bnds =
         match v_include_original_headers with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_original_headers", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_identity in
         ("identity", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_ses_identity_notification_topic ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ses_identity_notification_topic

[@@@deriving.end]

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
  tf_name : string;
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
       tf_name = __id;
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

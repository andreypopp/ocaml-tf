(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type lambda_function = {
  events : string prop list;  (** events *)
  filter_prefix : string prop option; [@option]  (** filter_prefix *)
  filter_suffix : string prop option; [@option]  (** filter_suffix *)
  id : string prop option; [@option]  (** id *)
  lambda_function_arn : string prop option; [@option]
      (** lambda_function_arn *)
}
[@@deriving yojson_of]
(** lambda_function *)

type queue = {
  events : string prop list;  (** events *)
  filter_prefix : string prop option; [@option]  (** filter_prefix *)
  filter_suffix : string prop option; [@option]  (** filter_suffix *)
  id : string prop option; [@option]  (** id *)
  queue_arn : string prop;  (** queue_arn *)
}
[@@deriving yojson_of]
(** queue *)

type topic = {
  events : string prop list;  (** events *)
  filter_prefix : string prop option; [@option]  (** filter_prefix *)
  filter_suffix : string prop option; [@option]  (** filter_suffix *)
  id : string prop option; [@option]  (** id *)
  topic_arn : string prop;  (** topic_arn *)
}
[@@deriving yojson_of]
(** topic *)

type aws_s3_bucket_notification = {
  bucket : string prop;  (** bucket *)
  eventbridge : bool prop option; [@option]  (** eventbridge *)
  id : string prop option; [@option]  (** id *)
  lambda_function : lambda_function list;
  queue : queue list;
  topic : topic list;
}
[@@deriving yojson_of]
(** aws_s3_bucket_notification *)

let lambda_function ?filter_prefix ?filter_suffix ?id
    ?lambda_function_arn ~events () : lambda_function =
  { events; filter_prefix; filter_suffix; id; lambda_function_arn }

let queue ?filter_prefix ?filter_suffix ?id ~events ~queue_arn () :
    queue =
  { events; filter_prefix; filter_suffix; id; queue_arn }

let topic ?filter_prefix ?filter_suffix ?id ~events ~topic_arn () :
    topic =
  { events; filter_prefix; filter_suffix; id; topic_arn }

let aws_s3_bucket_notification ?eventbridge ?id ~bucket
    ~lambda_function ~queue ~topic () : aws_s3_bucket_notification =
  { bucket; eventbridge; id; lambda_function; queue; topic }

type t = {
  bucket : string prop;
  eventbridge : bool prop;
  id : string prop;
}

let make ?eventbridge ?id ~bucket ~lambda_function ~queue ~topic __id
    =
  let __type = "aws_s3_bucket_notification" in
  let __attrs =
    ({
       bucket = Prop.computed __type __id "bucket";
       eventbridge = Prop.computed __type __id "eventbridge";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_s3_bucket_notification
        (aws_s3_bucket_notification ?eventbridge ?id ~bucket
           ~lambda_function ~queue ~topic ());
    attrs = __attrs;
  }

let register ?tf_module ?eventbridge ?id ~bucket ~lambda_function
    ~queue ~topic __id =
  let (r : _ Tf_core.resource) =
    make ?eventbridge ?id ~bucket ~lambda_function ~queue ~topic __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

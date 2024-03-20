(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination_configuration__cloudwatch_logs = {
  log_group_name : string prop;  (** log_group_name *)
}
[@@deriving yojson_of]
(** destination_configuration__cloudwatch_logs *)

type destination_configuration__firehose = {
  delivery_stream_name : string prop;  (** delivery_stream_name *)
}
[@@deriving yojson_of]
(** destination_configuration__firehose *)

type destination_configuration__s3 = {
  bucket_name : string prop;  (** bucket_name *)
}
[@@deriving yojson_of]
(** destination_configuration__s3 *)

type destination_configuration = {
  cloudwatch_logs : destination_configuration__cloudwatch_logs list;
  firehose : destination_configuration__firehose list;
  s3 : destination_configuration__s3 list;
}
[@@deriving yojson_of]
(** destination_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ivschat_logging_configuration = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  destination_configuration : destination_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ivschat_logging_configuration *)

let destination_configuration__cloudwatch_logs ~log_group_name () :
    destination_configuration__cloudwatch_logs =
  { log_group_name }

let destination_configuration__firehose ~delivery_stream_name () :
    destination_configuration__firehose =
  { delivery_stream_name }

let destination_configuration__s3 ~bucket_name () :
    destination_configuration__s3 =
  { bucket_name }

let destination_configuration ~cloudwatch_logs ~firehose ~s3 () :
    destination_configuration =
  { cloudwatch_logs; firehose; s3 }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ivschat_logging_configuration ?id ?name ?tags ?tags_all
    ?timeouts ~destination_configuration () :
    aws_ivschat_logging_configuration =
  { id; name; tags; tags_all; destination_configuration; timeouts }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?tags ?tags_all ?timeouts
    ~destination_configuration __id =
  let __type = "aws_ivschat_logging_configuration" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ivschat_logging_configuration
        (aws_ivschat_logging_configuration ?id ?name ?tags ?tags_all
           ?timeouts ~destination_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?tags ?tags_all ?timeouts
    ~destination_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?tags ?tags_all ?timeouts
      ~destination_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

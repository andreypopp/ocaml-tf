(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type campaign_hook = {
  lambda_function_name : string prop option; [@option]
      (** lambda_function_name *)
  mode : string prop option; [@option]  (** mode *)
  web_url : string prop option; [@option]  (** web_url *)
}
[@@deriving yojson_of]
(** campaign_hook *)

type limits = {
  daily : float prop option; [@option]  (** daily *)
  maximum_duration : float prop option; [@option]
      (** maximum_duration *)
  messages_per_second : float prop option; [@option]
      (** messages_per_second *)
  total : float prop option; [@option]  (** total *)
}
[@@deriving yojson_of]
(** limits *)

type quiet_time = {
  end_ : string prop option; [@option] [@key "end"]  (** end *)
  start : string prop option; [@option]  (** start *)
}
[@@deriving yojson_of]
(** quiet_time *)

type aws_pinpoint_app = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  campaign_hook : campaign_hook list;
  limits : limits list;
  quiet_time : quiet_time list;
}
[@@deriving yojson_of]
(** aws_pinpoint_app *)

let campaign_hook ?lambda_function_name ?mode ?web_url () :
    campaign_hook =
  { lambda_function_name; mode; web_url }

let limits ?daily ?maximum_duration ?messages_per_second ?total () :
    limits =
  { daily; maximum_duration; messages_per_second; total }

let quiet_time ?end_ ?start () : quiet_time = { end_; start }

let aws_pinpoint_app ?id ?name ?name_prefix ?tags ?tags_all
    ~campaign_hook ~limits ~quiet_time () : aws_pinpoint_app =
  {
    id;
    name;
    name_prefix;
    tags;
    tags_all;
    campaign_hook;
    limits;
    quiet_time;
  }

type t = {
  application_id : string prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?name_prefix ?tags ?tags_all ~campaign_hook
    ~limits ~quiet_time __id =
  let __type = "aws_pinpoint_app" in
  let __attrs =
    ({
       application_id = Prop.computed __type __id "application_id";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_pinpoint_app
        (aws_pinpoint_app ?id ?name ?name_prefix ?tags ?tags_all
           ~campaign_hook ~limits ~quiet_time ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ?tags ?tags_all
    ~campaign_hook ~limits ~quiet_time __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ?tags ?tags_all ~campaign_hook
      ~limits ~quiet_time __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

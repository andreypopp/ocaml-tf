(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_xray_sampling_rule = {
  attributes : (string * string prop) list option; [@option]
      (** attributes *)
  fixed_rate : float prop;  (** fixed_rate *)
  host : string prop;  (** host *)
  http_method : string prop;  (** http_method *)
  id : string prop option; [@option]  (** id *)
  priority : float prop;  (** priority *)
  reservoir_size : float prop;  (** reservoir_size *)
  resource_arn : string prop;  (** resource_arn *)
  rule_name : string prop option; [@option]  (** rule_name *)
  service_name : string prop;  (** service_name *)
  service_type : string prop;  (** service_type *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  url_path : string prop;  (** url_path *)
  version : float prop;  (** version *)
}
[@@deriving yojson_of]
(** aws_xray_sampling_rule *)

let aws_xray_sampling_rule ?attributes ?id ?rule_name ?tags ?tags_all
    ~fixed_rate ~host ~http_method ~priority ~reservoir_size
    ~resource_arn ~service_name ~service_type ~url_path ~version () :
    aws_xray_sampling_rule =
  {
    attributes;
    fixed_rate;
    host;
    http_method;
    id;
    priority;
    reservoir_size;
    resource_arn;
    rule_name;
    service_name;
    service_type;
    tags;
    tags_all;
    url_path;
    version;
  }

type t = {
  arn : string prop;
  attributes : (string * string) list prop;
  fixed_rate : float prop;
  host : string prop;
  http_method : string prop;
  id : string prop;
  priority : float prop;
  reservoir_size : float prop;
  resource_arn : string prop;
  rule_name : string prop;
  service_name : string prop;
  service_type : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  url_path : string prop;
  version : float prop;
}

let make ?attributes ?id ?rule_name ?tags ?tags_all ~fixed_rate ~host
    ~http_method ~priority ~reservoir_size ~resource_arn
    ~service_name ~service_type ~url_path ~version __id =
  let __type = "aws_xray_sampling_rule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       attributes = Prop.computed __type __id "attributes";
       fixed_rate = Prop.computed __type __id "fixed_rate";
       host = Prop.computed __type __id "host";
       http_method = Prop.computed __type __id "http_method";
       id = Prop.computed __type __id "id";
       priority = Prop.computed __type __id "priority";
       reservoir_size = Prop.computed __type __id "reservoir_size";
       resource_arn = Prop.computed __type __id "resource_arn";
       rule_name = Prop.computed __type __id "rule_name";
       service_name = Prop.computed __type __id "service_name";
       service_type = Prop.computed __type __id "service_type";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       url_path = Prop.computed __type __id "url_path";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_xray_sampling_rule
        (aws_xray_sampling_rule ?attributes ?id ?rule_name ?tags
           ?tags_all ~fixed_rate ~host ~http_method ~priority
           ~reservoir_size ~resource_arn ~service_name ~service_type
           ~url_path ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?attributes ?id ?rule_name ?tags ?tags_all
    ~fixed_rate ~host ~http_method ~priority ~reservoir_size
    ~resource_arn ~service_name ~service_type ~url_path ~version __id
    =
  let (r : _ Tf_core.resource) =
    make ?attributes ?id ?rule_name ?tags ?tags_all ~fixed_rate ~host
      ~http_method ~priority ~reservoir_size ~resource_arn
      ~service_name ~service_type ~url_path ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

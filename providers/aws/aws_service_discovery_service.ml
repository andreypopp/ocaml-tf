(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dns_config__dns_records = {
  ttl : float prop;  (** ttl *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** dns_config__dns_records *)

type dns_config = {
  namespace_id : string prop;  (** namespace_id *)
  routing_policy : string prop option; [@option]
      (** routing_policy *)
  dns_records : dns_config__dns_records list;
}
[@@deriving yojson_of]
(** dns_config *)

type health_check_config = {
  failure_threshold : float prop option; [@option]
      (** failure_threshold *)
  resource_path : string prop option; [@option]  (** resource_path *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** health_check_config *)

type health_check_custom_config = {
  failure_threshold : float prop option; [@option]
      (** failure_threshold *)
}
[@@deriving yojson_of]
(** health_check_custom_config *)

type aws_service_discovery_service = {
  description : string prop option; [@option]  (** description *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  namespace_id : string prop option; [@option]  (** namespace_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  dns_config : dns_config list;
  health_check_config : health_check_config list;
  health_check_custom_config : health_check_custom_config list;
}
[@@deriving yojson_of]
(** aws_service_discovery_service *)

let dns_config__dns_records ~ttl ~type_ () : dns_config__dns_records
    =
  { ttl; type_ }

let dns_config ?routing_policy ~namespace_id ~dns_records () :
    dns_config =
  { namespace_id; routing_policy; dns_records }

let health_check_config ?failure_threshold ?resource_path ?type_ () :
    health_check_config =
  { failure_threshold; resource_path; type_ }

let health_check_custom_config ?failure_threshold () :
    health_check_custom_config =
  { failure_threshold }

let aws_service_discovery_service ?description ?force_destroy ?id
    ?namespace_id ?tags ?tags_all ?type_ ~name ~dns_config
    ~health_check_config ~health_check_custom_config () :
    aws_service_discovery_service =
  {
    description;
    force_destroy;
    id;
    name;
    namespace_id;
    tags;
    tags_all;
    type_;
    dns_config;
    health_check_config;
    health_check_custom_config;
  }

type t = {
  arn : string prop;
  description : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  namespace_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?description ?force_destroy ?id ?namespace_id ?tags
    ?tags_all ?type_ ~name ~dns_config ~health_check_config
    ~health_check_custom_config __id =
  let __type = "aws_service_discovery_service" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespace_id = Prop.computed __type __id "namespace_id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_service_discovery_service
        (aws_service_discovery_service ?description ?force_destroy
           ?id ?namespace_id ?tags ?tags_all ?type_ ~name ~dns_config
           ~health_check_config ~health_check_custom_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?force_destroy ?id ?namespace_id
    ?tags ?tags_all ?type_ ~name ~dns_config ~health_check_config
    ~health_check_custom_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?force_destroy ?id ?namespace_id ?tags
      ?tags_all ?type_ ~name ~dns_config ~health_check_config
      ~health_check_custom_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_neptune_cluster_endpoint = {
  cluster_endpoint_identifier : string prop;
      (** cluster_endpoint_identifier *)
  cluster_identifier : string prop;  (** cluster_identifier *)
  endpoint_type : string prop;  (** endpoint_type *)
  excluded_members : string prop list option; [@option]
      (** excluded_members *)
  id : string prop option; [@option]  (** id *)
  static_members : string prop list option; [@option]
      (** static_members *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_neptune_cluster_endpoint *)

let aws_neptune_cluster_endpoint ?excluded_members ?id
    ?static_members ?tags ?tags_all ~cluster_endpoint_identifier
    ~cluster_identifier ~endpoint_type () :
    aws_neptune_cluster_endpoint =
  {
    cluster_endpoint_identifier;
    cluster_identifier;
    endpoint_type;
    excluded_members;
    id;
    static_members;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  cluster_endpoint_identifier : string prop;
  cluster_identifier : string prop;
  endpoint : string prop;
  endpoint_type : string prop;
  excluded_members : string list prop;
  id : string prop;
  static_members : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?excluded_members ?id ?static_members ?tags ?tags_all
    ~cluster_endpoint_identifier ~cluster_identifier ~endpoint_type
    __id =
  let __type = "aws_neptune_cluster_endpoint" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       cluster_endpoint_identifier =
         Prop.computed __type __id "cluster_endpoint_identifier";
       cluster_identifier =
         Prop.computed __type __id "cluster_identifier";
       endpoint = Prop.computed __type __id "endpoint";
       endpoint_type = Prop.computed __type __id "endpoint_type";
       excluded_members =
         Prop.computed __type __id "excluded_members";
       id = Prop.computed __type __id "id";
       static_members = Prop.computed __type __id "static_members";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_neptune_cluster_endpoint
        (aws_neptune_cluster_endpoint ?excluded_members ?id
           ?static_members ?tags ?tags_all
           ~cluster_endpoint_identifier ~cluster_identifier
           ~endpoint_type ());
    attrs = __attrs;
  }

let register ?tf_module ?excluded_members ?id ?static_members ?tags
    ?tags_all ~cluster_endpoint_identifier ~cluster_identifier
    ~endpoint_type __id =
  let (r : _ Tf_core.resource) =
    make ?excluded_members ?id ?static_members ?tags ?tags_all
      ~cluster_endpoint_identifier ~cluster_identifier ~endpoint_type
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

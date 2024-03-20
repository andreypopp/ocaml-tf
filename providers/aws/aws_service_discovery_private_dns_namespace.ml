(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_service_discovery_private_dns_namespace = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc : string prop;  (** vpc *)
}
[@@deriving yojson_of]
(** aws_service_discovery_private_dns_namespace *)

let aws_service_discovery_private_dns_namespace ?description ?id
    ?tags ?tags_all ~name ~vpc () :
    aws_service_discovery_private_dns_namespace =
  { description; id; name; tags; tags_all; vpc }

type t = {
  arn : string prop;
  description : string prop;
  hosted_zone : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  vpc : string prop;
}

let make ?description ?id ?tags ?tags_all ~name ~vpc __id =
  let __type = "aws_service_discovery_private_dns_namespace" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       hosted_zone = Prop.computed __type __id "hosted_zone";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc = Prop.computed __type __id "vpc";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_service_discovery_private_dns_namespace
        (aws_service_discovery_private_dns_namespace ?description ?id
           ?tags ?tags_all ~name ~vpc ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name ~vpc
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name ~vpc __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

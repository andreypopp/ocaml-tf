(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vpc = {
  vpc_id : string prop;  (** vpc_id *)
  vpc_region : string prop option; [@option]  (** vpc_region *)
}
[@@deriving yojson_of]
(** vpc *)

type aws_route53_zone = {
  comment : string prop option; [@option]  (** comment *)
  delegation_set_id : string prop option; [@option]
      (** delegation_set_id *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  vpc : vpc list;
}
[@@deriving yojson_of]
(** aws_route53_zone *)

let vpc ?vpc_region ~vpc_id () : vpc = { vpc_id; vpc_region }

let aws_route53_zone ?comment ?delegation_set_id ?force_destroy ?id
    ?tags ?tags_all ~name ~vpc () : aws_route53_zone =
  {
    comment;
    delegation_set_id;
    force_destroy;
    id;
    name;
    tags;
    tags_all;
    vpc;
  }

type t = {
  arn : string prop;
  comment : string prop;
  delegation_set_id : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  name_servers : string list prop;
  primary_name_server : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  zone_id : string prop;
}

let make ?comment ?delegation_set_id ?force_destroy ?id ?tags
    ?tags_all ~name ~vpc __id =
  let __type = "aws_route53_zone" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       comment = Prop.computed __type __id "comment";
       delegation_set_id =
         Prop.computed __type __id "delegation_set_id";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_servers = Prop.computed __type __id "name_servers";
       primary_name_server =
         Prop.computed __type __id "primary_name_server";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_route53_zone
        (aws_route53_zone ?comment ?delegation_set_id ?force_destroy
           ?id ?tags ?tags_all ~name ~vpc ());
    attrs = __attrs;
  }

let register ?tf_module ?comment ?delegation_set_id ?force_destroy
    ?id ?tags ?tags_all ~name ~vpc __id =
  let (r : _ Tf_core.resource) =
    make ?comment ?delegation_set_id ?force_destroy ?id ?tags
      ?tags_all ~name ~vpc __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs

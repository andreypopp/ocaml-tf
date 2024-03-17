(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_route53_zone__vpc = {
  vpc_id : string prop;  (** vpc_id *)
  vpc_region : string prop option; [@option]  (** vpc_region *)
}
[@@deriving yojson_of]
(** aws_route53_zone__vpc *)

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
  vpc : aws_route53_zone__vpc list;
}
[@@deriving yojson_of]
(** aws_route53_zone *)

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

let aws_route53_zone ?comment ?delegation_set_id ?force_destroy ?id
    ?tags ?tags_all ~name ~vpc __resource_id =
  let __resource_type = "aws_route53_zone" in
  let __resource =
    ({
       comment;
       delegation_set_id;
       force_destroy;
       id;
       name;
       tags;
       tags_all;
       vpc;
     }
      : aws_route53_zone)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_route53_zone __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       comment =
         Prop.computed __resource_type __resource_id "comment";
       delegation_set_id =
         Prop.computed __resource_type __resource_id
           "delegation_set_id";
       force_destroy =
         Prop.computed __resource_type __resource_id "force_destroy";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_servers =
         Prop.computed __resource_type __resource_id "name_servers";
       primary_name_server =
         Prop.computed __resource_type __resource_id
           "primary_name_server";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       zone_id =
         Prop.computed __resource_type __resource_id "zone_id";
     }
      : t)
  in
  __resource_attributes
